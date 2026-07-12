package br.com.execucao.paymentexternal.gui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.view.Gravity;
import android.widget.Toast;

public class BaseActivity extends Activity {

    private ProgressDialog progressDialog;
    private long lastButtonPress = 0;

    /**
     * Checks for multiple clicks to avoid processing the same button multiple times.
     *
     * @return true if it was an second press.
     */
    public boolean checkForMultipleClicks() {

        // at leas 1/2 second from the last click.
        if (lastButtonPress > 0 && System.currentTimeMillis() - lastButtonPress < 500)
            return true;

        lastButtonPress = System.currentTimeMillis();
        return false;
    }

    /**
     * Shows a toast.
     */
    protected void showToast(int rid) {
        showToast(getString(rid));
    }

    /**
     * Shows a toast.
     */
    protected void showToast(String message) {

        Toast toast = Toast.makeText(this, message, message.length() < 20 ? Toast.LENGTH_SHORT : Toast.LENGTH_LONG);
        // set gravity on toasts generates an error on logcat
        toast.setGravity(Gravity.CENTER_HORIZONTAL | Gravity.CENTER_VERTICAL, 0, 0);
        toast.show();
    }

    /**
     * Shows an AlertDialog.
     */
    protected void showAlert(String title, String msg) {

        new AlertDialog.Builder(this, AlertDialog.THEME_DEVICE_DEFAULT_LIGHT)
                .setTitle(title)
                .setMessage(msg)
                .setCancelable(true)
                .setPositiveButton("OK", null)
                .show();
    }

    /**
     * Shows an AlertDialog.
     */
    protected void showAlert(int ridTitle, String ridMsg) {

        new AlertDialog.Builder(this, AlertDialog.THEME_DEVICE_DEFAULT_LIGHT)
                .setTitle(ridTitle)
                .setMessage(ridMsg)
                .setCancelable(true)
                .setPositiveButton("OK", null)
                .show();
    }

    /**
     * Shows a non cancelable dialog prompting the user to wait.
     */
    protected void showBlockingDialog(int rid) {
        showBlockingDialog(getString(rid));
    }

    /**
     * Shows a non cancelable dialog prompting the user to wait.
     */
    protected void showBlockingDialog(String message) {

        dismissBlockingDialog();
        progressDialog = new ProgressDialog(this, ProgressDialog.THEME_DEVICE_DEFAULT_DARK);
        progressDialog.setCancelable(false);
        progressDialog.setMessage(message);
        progressDialog.show();
    }

    /**
     * Dismisses the previous shown blocking dialog. See {@link #showBlockingDialog(String)}.
     */
    protected void dismissBlockingDialog() {

        if (progressDialog != null) {
            progressDialog.dismiss();
            progressDialog = null;
        }
    }
}
