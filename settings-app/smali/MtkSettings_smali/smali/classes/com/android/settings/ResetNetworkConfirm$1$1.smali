.class Lcom/android/settings/ResetNetworkConfirm$1$1;
.super Landroid/os/AsyncTask;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ResetNetworkConfirm$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$1:Lcom/android/settings/ResetNetworkConfirm$1;


# direct methods
.method constructor <init>(Lcom/android/settings/ResetNetworkConfirm$1;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    .line 136
    const-string p1, "ResetNetwork"

    const-string v0, "Reset network settings start."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$1;

    iget-object p1, p1, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p1}, Lcom/android/settings/ResetNetworkConfirm;->access$100(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object p1

    .line 139
    if-nez p1, :cond_0

    .line 140
    const-string p1, "ResetNetworkConfirm"

    const-string v0, "null context object."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 p1, 0x0

    return-object p1

    .line 144
    :cond_0
    const-string v0, "ResetNetwork"

    const-string v1, "begin reset ConnectivityManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, "connectivity"

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 147
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->factoryReset()V

    .line 150
    :cond_1
    const-string v0, "ResetNetwork"

    const-string v1, "begin reset WifiManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v0, "wifi"

    .line 152
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 153
    if-eqz v0, :cond_2

    .line 154
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->factoryReset()V

    .line 156
    :cond_2
    const-string v0, "ResetNetwork"

    const-string v1, "begin reset TelephonyManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v0, "phone"

    .line 158
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 159
    if-eqz v0, :cond_3

    .line 160
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$1;

    iget-object v1, v1, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v1}, Lcom/android/settings/ResetNetworkConfirm;->access$200(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->factoryReset(I)V

    .line 162
    :cond_3
    const-string v1, "ResetNetwork"

    const-string v2, "begin reset NetworkPolicyManager"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v1, "netpolicy"

    .line 164
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkPolicyManager;

    .line 165
    if-eqz v1, :cond_4

    .line 166
    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$1;

    iget-object v2, v2, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v2}, Lcom/android/settings/ResetNetworkConfirm;->access$200(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v1, v0}, Landroid/net/NetworkPolicyManager;->factoryReset(Ljava/lang/String;)V

    .line 169
    :cond_4
    const-string v0, "ResetNetwork"

    const-string v1, "begin reset BluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v0, "bluetooth"

    .line 171
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 172
    if-eqz v0, :cond_5

    .line 173
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_5

    .line 175
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    .line 180
    :cond_5
    const-string v0, "ResetNetwork"

    const-string v1, "begin reset ImsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$1;

    iget-object v0, v0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$1;

    iget-object v1, v1, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v1}, Lcom/android/settings/ResetNetworkConfirm;->access$200(Lcom/android/settings/ResetNetworkConfirm;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/ResetNetworkConfirm;->access$300(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;I)V

    .line 187
    const-string v0, "ResetNetwork"

    const-string v1, "begin reset Apn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$1;

    iget-object v0, v0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0, p1}, Lcom/android/settings/ResetNetworkConfirm;->access$400(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$1;

    iget-object v0, v0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/ResetNetworkConfirm;->esimFactoryResetEx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 190
    const-string v1, "ResetNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " esimFactoryReset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$1;

    iget-object v1, v1, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v1, p1}, Lcom/android/settings/ResetNetworkConfirm;->access$500(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    .line 197
    const-string p1, "ResetNetwork"

    const-string v1, "ret end"

    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 132
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$1;

    iget-object v0, v0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->access$100(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 208
    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 209
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 210
    const p1, 0x7f120b2d    # @string/reset_network_complete_toast 'Network settings have been reset'

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 212
    :cond_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$1;

    iget-object v0, v0, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm;->access$100(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120b2a    # @string/reset_esim_error_title 'Cant’t reset eSIMs'

    .line 213
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120b29    # @string/reset_esim_error_msg 'The eSIMs can’tt be reset due to an error.'

    .line 214
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a    # @android:string/ok

    .line 215
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 219
    :cond_2
    :goto_0
    const-string p1, "ResetNetwork"

    const-string v0, "Reset network settings completed."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$1;

    iget-object p1, p1, Lcom/android/settings/ResetNetworkConfirm$1;->this$0:Lcom/android/settings/ResetNetworkConfirm;

    invoke-static {p1, v1}, Lcom/android/settings/ResetNetworkConfirm;->access$002(Lcom/android/settings/ResetNetworkConfirm;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 221
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 132
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/settings/ResetNetworkConfirm$1$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->this$1:Lcom/android/settings/ResetNetworkConfirm$1;

    invoke-static {v0}, Lcom/android/settings/ResetNetworkConfirm$1;->access$600(Lcom/android/settings/ResetNetworkConfirm$1;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 226
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm$1$1;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 227
    return-void
.end method
