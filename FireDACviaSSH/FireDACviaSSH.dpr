program FireDACviaSSH;

uses
  Vcl.Forms,
  uMainForm in 'uMainForm.pas' {MainForm},
  libssh2 in 'ssh-pascal\libssh2.pas',
  libssh2_publickey in 'ssh-pascal\libssh2_publickey.pas',
  libssh2_sftp in 'ssh-pascal\libssh2_sftp.pas',
  SftpClient in 'ssh-pascal\SftpClient.pas',
  SocketUtils in 'ssh-pascal\SocketUtils.pas',
  Ssh2Client in 'ssh-pascal\Ssh2Client.pas',
  SshTunnel in 'ssh-pascal\SshTunnel.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
