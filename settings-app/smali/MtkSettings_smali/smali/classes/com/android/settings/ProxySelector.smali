.class public Lcom/android/settings/ProxySelector;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ProxySelector.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;


# instance fields
.field mClearButton:Landroid/widget/Button;

.field mClearHandler:Landroid/view/View$OnClickListener;

.field mDefaultButton:Landroid/widget/Button;

.field mDefaultHandler:Landroid/view/View$OnClickListener;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field mExclusionListField:Landroid/widget/EditText;

.field mHostnameField:Landroid/widget/EditText;

.field mOKButton:Landroid/widget/Button;

.field mOKHandler:Landroid/view/View$OnClickListener;

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field mPortField:Landroid/widget/EditText;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 245
    new-instance v0, Lcom/android/settings/ProxySelector$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$1;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    .line 253
    new-instance v0, Lcom/android/settings/ProxySelector$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$2;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mClearHandler:Landroid/view/View$OnClickListener;

    .line 261
    new-instance v0, Lcom/android/settings/ProxySelector$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$3;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mDefaultHandler:Landroid/view/View$OnClickListener;

    .line 268
    new-instance v0, Lcom/android/settings/ProxySelector$4;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$4;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 120
    const v0, 0x7f0a0192    # @id/hostname

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    .line 121
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 123
    const v0, 0x7f0a0269    # @id/port

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    .line 124
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 127
    const v0, 0x7f0a0149    # @id/exclusionlist

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    .line 128
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 130
    const v0, 0x7f0a000d    # @id/action

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mOKButton:Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mOKButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    const v0, 0x7f0a00ba    # @id/clear

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mClearButton:Landroid/widget/Button;

    .line 134
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mClearButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mClearHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f0a00fd    # @id/defaultView

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    .line 137
    iget-object p1, p0, Lcom/android/settings/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mDefaultHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method private showDialog(I)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "ProxySelector"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 116
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 187
    invoke-static {p0, p1, p2}, Landroid/net/Proxy;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 202
    const-string p0, "ProxySelector"

    const-string p1, "Unknown proxy settings error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 p0, -0x1

    return p0

    .line 199
    :pswitch_0
    const p0, 0x7f120abc    # @string/proxy_error_invalid_exclusion_list 'The exclusion list you typed isn’t properly formatted. Type a comma-separated list of excluded domai ...'

    return p0

    .line 197
    :pswitch_1
    const p0, 0x7f120abe    # @string/proxy_error_invalid_port 'The port you typed isn’t valid.'

    return p0

    .line 195
    :pswitch_2
    const p0, 0x7f120abb    # @string/proxy_error_empty_port 'You need to complete the port field.'

    return p0

    .line 193
    :pswitch_3
    const p0, 0x7f120abd    # @string/proxy_error_invalid_host 'The hostname you typed isn’t valid.'

    return p0

    .line 191
    :pswitch_4
    const p0, 0x7f120aba    # @string/proxy_error_empty_host_set_port 'The port field must be empty if the host field is empty.'

    return p0

    .line 189
    :pswitch_5
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 0

    .line 108
    const/16 p1, 0x23e

    return p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 279
    const/16 v0, 0x52

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    nop

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 77
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mDefaultButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 85
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .line 91
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {p1, v1, v2}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 97
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120ab8    # @string/proxy_error 'Attention'

    .line 98
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120ab9    # @string/proxy_error_dismiss 'OK'

    .line 99
    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 97
    return-object p1

    .line 103
    :cond_0
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 64
    const p3, 0x7f0d0116    # @layout/proxy 'res/layout/proxy.xml'

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ProxySelector;->mView:Landroid/view/View;

    .line 65
    iget-object p1, p0, Lcom/android/settings/ProxySelector;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/settings/ProxySelector;->initView(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->populateFields()V

    .line 68
    iget-object p1, p0, Lcom/android/settings/ProxySelector;->mView:Landroid/view/View;

    return-object p1
.end method

.method populateFields()V
    .locals 6

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 142
    const-string v1, ""

    .line 143
    nop

    .line 144
    const-string v2, ""

    .line 146
    nop

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 149
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v3

    .line 150
    const/4 v4, -0x1

    if-eqz v3, :cond_0

    .line 151
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    .line 153
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 156
    :cond_0
    move-object v3, v2

    move v2, v4

    :goto_0
    if-nez v1, :cond_1

    .line 157
    const-string v1, ""

    .line 160
    :cond_1
    iget-object v5, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    if-ne v2, v4, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    :goto_1
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 169
    const-string v2, "button-label"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 171
    iget-object v3, p0, Lcom/android/settings/ProxySelector;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_3
    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 176
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 178
    :cond_4
    const v1, 0x7f120ac6    # @string/proxy_settings_title 'Proxy'

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 180
    :goto_2
    return-void
.end method

.method saveToDb()Z
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mExclusionListField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 215
    nop

    .line 217
    invoke-static {v0, v1, v2}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 218
    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 219
    invoke-direct {p0, v4}, Lcom/android/settings/ProxySelector;->showDialog(I)V

    .line 220
    return v4

    .line 223
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 225
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 228
    return v4

    .line 231
    :cond_1
    move v1, v4

    :goto_0
    new-instance v3, Landroid/net/ProxyInfo;

    invoke-direct {v3, v0, v1, v2}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 238
    nop

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 241
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 242
    const/4 v0, 0x1

    return v0
.end method
