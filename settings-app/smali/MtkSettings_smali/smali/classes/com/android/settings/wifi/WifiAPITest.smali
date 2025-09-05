.class public Lcom/android/settings/wifi/WifiAPITest;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiAPITest.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mWifiDisableNetwork:Landroid/support/v7/preference/Preference;

.field private mWifiDisconnect:Landroid/support/v7/preference/Preference;

.field private mWifiEnableNetwork:Landroid/support/v7/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private netid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiAPITest;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/android/settings/wifi/WifiAPITest;->netid:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiAPITest;I)I
    .locals 0

    .line 38
    iput p1, p0, Lcom/android/settings/wifi/WifiAPITest;->netid:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiAPITest;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 89
    const/16 v0, 0x59

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const-string p1, "wifi"

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiAPITest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 68
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 72
    const p1, 0x7f0d01d0    # @layout/wifi_api_test 'res/layout/wifi_api_test.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiAPITest;->addPreferencesFromResource(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 76
    const-string p2, "disconnect"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisconnect:Landroid/support/v7/preference/Preference;

    .line 77
    iget-object p2, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisconnect:Landroid/support/v7/preference/Preference;

    invoke-virtual {p2, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 79
    const-string p2, "disable_network"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Landroid/support/v7/preference/Preference;

    .line 80
    iget-object p2, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {p2, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 82
    const-string p2, "enable_network"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiEnableNetwork:Landroid/support/v7/preference/Preference;

    .line 83
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiEnableNetwork:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 85
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisconnect:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiDisableNetwork:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_1

    .line 109
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 110
    const-string v0, "Input"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 111
    const-string v0, "Enter Network ID"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 113
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 115
    const-string v1, "Ok"

    new-instance v2, Lcom/android/settings/wifi/WifiAPITest$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/wifi/WifiAPITest$1;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    const-string v0, "Cancel"

    new-instance v1, Lcom/android/settings/wifi/WifiAPITest$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiAPITest$2;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 134
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiEnableNetwork:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_2

    .line 135
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    const-string v0, "Input"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 137
    const-string v0, "Enter Network ID"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 139
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAPITest;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 140
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 141
    const-string v1, "Ok"

    new-instance v2, Lcom/android/settings/wifi/WifiAPITest$3;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/wifi/WifiAPITest$3;-><init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 148
    const-string v0, "Cancel"

    new-instance v1, Lcom/android/settings/wifi/WifiAPITest$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiAPITest$4;-><init>(Lcom/android/settings/wifi/WifiAPITest;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 155
    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 99
    const/4 p1, 0x0

    return p1
.end method
