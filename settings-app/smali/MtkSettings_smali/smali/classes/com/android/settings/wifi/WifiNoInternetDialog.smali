.class public final Lcom/android/settings/wifi/WifiNoInternetDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiNoInternetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAlwaysAllow:Landroid/widget/CheckBox;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mNetwork:Landroid/net/Network;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiNoInternetDialog;)Landroid/net/Network;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method private createDialog()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const v1, 0x7f08017f    # @drawable/ic_settings_wireless 'res/drawable/ic_settings_wireless.xml'

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setIcon(I)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 129
    const-string v1, "android.net.conn.PROMPT_UNVALIDATED"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 131
    const v1, 0x7f120989    # @string/no_internet_access_text 'This network has no internet access. Stay connected?'

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 132
    const v1, 0x7f121138    # @string/yes 'Yes'

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 133
    const v1, 0x7f12097d    # @string/no 'No'

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 135
    :cond_0
    const v1, 0x7f120897    # @string/lost_internet_access_title 'Wi‑Fi is not connected to the internet'

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 136
    const v1, 0x7f120896    # @string/lost_internet_access_text 'You can switch to the mobile network whenever Wi‑Fi has a bad connection. Data usage charges may app ...'

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 137
    const v1, 0x7f120895    # @string/lost_internet_access_switch 'Switch to mobile'

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 138
    const v1, 0x7f120893    # @string/lost_internet_access_cancel 'Stay on Wi‑Fi'

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 140
    :goto_0
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 141
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 143
    iget-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 144
    const v2, 0x1090032    # @android:layout/always_use_checkbox

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 146
    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 147
    const v0, 0x10201a7    # @android:id/alwaysUse

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    .line 149
    const-string v0, "android.net.conn.PROMPT_UNVALIDATED"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    const v1, 0x7f120988    # @string/no_internet_access_remember 'Don’t ask again for this network'

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    const v1, 0x7f120894    # @string/lost_internet_access_persist 'Never show again'

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 155
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->setupAlert()V

    .line 156
    return-void
.end method

.method private isKnownAction(Landroid/content/Intent;)Z
    .locals 2

    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.PROMPT_UNVALIDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.PROMPT_LOST_VALIDATION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 56
    :goto_1
    return p1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 168
    const/4 p1, -0x1

    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    if-eq p2, p1, :cond_0

    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlwaysAllow:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 172
    const-string v1, "android.net.conn.PROMPT_UNVALIDATED"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 173
    const-string v1, "NO_INTERNET"

    .line 174
    if-ne p2, p1, :cond_1

    .line 175
    move v2, v3

    goto :goto_0

    .line 174
    :cond_1
    nop

    .line 175
    :goto_0
    if-eqz v2, :cond_2

    const-string p1, "Connect"

    goto :goto_1

    :cond_2
    const-string p1, "Ignore"

    .line 176
    :goto_1
    iget-object p2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p2, v3, v2, v0}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 177
    goto :goto_5

    .line 178
    :cond_3
    const-string v1, "LOST_INTERNET"

    .line 179
    if-ne p2, p1, :cond_4

    .line 180
    move v2, v3

    goto :goto_2

    .line 179
    :cond_4
    nop

    .line 180
    :goto_2
    if-eqz v2, :cond_5

    const-string p1, "Switch away"

    goto :goto_3

    :cond_5
    const-string p1, "Get stuck"

    .line 181
    :goto_3
    if-eqz v0, :cond_7

    .line 182
    iget-object p2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object p2, p2, Lcom/android/internal/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v3, "network_avoid_bad_wifi"

    .line 183
    if-eqz v2, :cond_6

    const-string v2, "1"

    goto :goto_4

    :cond_6
    const-string v2, "0"

    .line 182
    :goto_4
    invoke-static {p2, v3, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    .line 184
    :cond_7
    if-eqz v2, :cond_8

    .line 185
    iget-object p2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p2, v2}, Landroid/net/ConnectivityManager;->setAvoidUnvalidated(Landroid/net/Network;)V

    .line 188
    :cond_8
    :goto_5
    const-string p2, "WifiNoInternetDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " network="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    if-eqz v0, :cond_9

    const-string p1, " and remember"

    goto :goto_6

    :cond_9
    const-string p1, ""

    :goto_6
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 62
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 65
    if-eqz p1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiNoInternetDialog;->isKnownAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "netId"

    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mAction:Ljava/lang/String;

    .line 74
    :try_start_0
    new-instance v0, Landroid/net/Network;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/net/Network;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    if-nez v0, :cond_1

    .line 80
    const-string v0, "WifiNoInternetDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t determine network from \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' , exiting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->finish()V

    .line 82
    return-void

    .line 87
    :cond_1
    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 88
    new-instance v0, Lcom/android/settings/wifi/WifiNoInternetDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiNoInternetDialog$1;-><init>(Lcom/android/settings/wifi/WifiNoInternetDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 107
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    .line 108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, p1, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 110
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 112
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_1

    .line 117
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSSID()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    .line 118
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 119
    iget-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkName:Ljava/lang/String;

    .line 122
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->createDialog()V

    .line 123
    return-void

    .line 113
    :cond_4
    :goto_1
    const-string v0, "WifiNoInternetDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not connected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->finish()V

    .line 115
    return-void

    .line 66
    :cond_5
    :goto_2
    const-string v0, "WifiNoInternetDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", exiting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNoInternetDialog;->finish()V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mCM:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNoInternetDialog;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 164
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 165
    return-void
.end method
