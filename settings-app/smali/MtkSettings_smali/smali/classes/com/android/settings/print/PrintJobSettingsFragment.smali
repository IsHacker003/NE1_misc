.class public Lcom/android/settings/print/PrintJobSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrintJobSettingsFragment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mMessagePreference:Landroid/support/v7/preference/Preference;

.field private mPrintJobId:Landroid/print/PrintJobId;

.field private mPrintJobPreference:Landroid/support/v7/preference/Preference;

.field private final mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

.field private mPrintManager:Landroid/print/PrintManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/print/PrintJobSettingsFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/android/settings/print/PrintJobSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/print/PrintJobSettingsFragment$1;-><init>(Lcom/android/settings/print/PrintJobSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/print/PrintJobSettingsFragment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->updateUi()V

    return-void
.end method

.method private getPrintJob()Landroid/print/PrintJob;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobId:Landroid/print/PrintJobId;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getPrintJob(Landroid/print/PrintJobId;)Landroid/print/PrintJob;

    move-result-object v0

    return-object v0
.end method

.method private processArguments()V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    if-nez v0, :cond_0

    .line 173
    sget-object v0, Lcom/android/settings/print/PrintJobSettingsFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "EXTRA_PRINT_JOB_ID not set"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    .line 175
    return-void

    .line 180
    :cond_0
    invoke-static {v0}, Landroid/print/PrintJobId;->unflattenFromString(Ljava/lang/String;)Landroid/print/PrintJobId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobId:Landroid/print/PrintJobId;

    .line 181
    return-void
.end method

.method private updateUi()V
    .locals 14

    .line 188
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v0

    .line 190
    if-nez v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    .line 192
    return-void

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroid/print/PrintJob;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Landroid/print/PrintJob;->isCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 200
    :cond_1
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getState()I

    move-result v2

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_4

    const v6, 0x7f120a78    # @string/print_cancelling_state_title_template 'Cancelling %1$s'

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 224
    :pswitch_0
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f120a76    # @string/print_blocked_state_title_template 'Printer blocked %1$s'

    new-array v6, v4, [Ljava/lang/Object;

    .line 226
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 225
    invoke-virtual {p0, v2, v6}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    new-array v2, v4, [Ljava/lang/Object;

    .line 229
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 228
    invoke-virtual {p0, v6, v2}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 209
    :pswitch_1
    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f120a87    # @string/print_printing_state_title_template 'Printing %1$s'

    new-array v6, v4, [Ljava/lang/Object;

    .line 211
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 210
    invoke-virtual {p0, v2, v6}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    new-array v2, v4, [Ljava/lang/Object;

    .line 214
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 213
    invoke-virtual {p0, v6, v2}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 216
    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f120a79    # @string/print_configuring_state_title_template 'Configuring %1$s'

    new-array v6, v4, [Ljava/lang/Object;

    .line 205
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 204
    invoke-virtual {p0, v2, v6}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    goto :goto_0

    .line 219
    :cond_4
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f120a7a    # @string/print_failed_state_title_template 'Printer error %1$s'

    new-array v6, v4, [Ljava/lang/Object;

    .line 220
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 219
    invoke-virtual {p0, v2, v6}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 221
    nop

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f120a7d    # @string/print_job_summary '%1$s\n%2$s'

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 235
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    .line 236
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v8

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v10

    const/4 v12, 0x3

    const/4 v13, 0x3

    .line 235
    invoke-static/range {v8 .. v13}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v6, v4

    .line 234
    invoke-virtual {p0, v2, v6}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-array v2, v4, [I

    const v4, 0x1010429    # @android:attr/colorControlNormal

    aput v4, v2, v5

    invoke-virtual {v0, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 241
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 242
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 244
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    if-eq v0, v3, :cond_5

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 247
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x10804c5    # @android:drawable/ic_print_error

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 248
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 249
    iget-object v2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 250
    goto :goto_1

    .line 255
    :cond_5
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x10804c6    # @android:drawable/ic_qs_battery_saver

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 257
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 258
    iget-object v2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 259
    nop

    .line 263
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/print/PrintJobInfo;->getStatus(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 264
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "print_job_message_preference"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_6

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 268
    :cond_6
    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 270
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 273
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 274
    return-void

    .line 196
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    .line 197
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 76
    const/16 v0, 0x4e

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 124
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;

    move-result-object p2

    .line 127
    if-nez p2, :cond_0

    .line 128
    return-void

    .line 131
    :cond_0
    invoke-virtual {p2}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 132
    const v0, 0x7f120a77    # @string/print_cancel 'Cancel'

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 134
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 137
    :cond_1
    invoke-virtual {p2}, Landroid/print/PrintJob;->isFailed()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 138
    const/4 p2, 0x2

    const v0, 0x7f120a88    # @string/print_restart 'Restart'

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-interface {p1, v2, p2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 140
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 142
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 82
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 84
    const p2, 0x7f150087    # @xml/print_job_settings 'res/xml/print_job_settings.xml'

    invoke-virtual {p0, p2}, Lcom/android/settings/print/PrintJobSettingsFragment;->addPreferencesFromResource(I)V

    .line 85
    const-string p2, "print_job_preference"

    invoke-virtual {p0, p2}, Lcom/android/settings/print/PrintJobSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobPreference:Landroid/support/v7/preference/Preference;

    .line 86
    const-string p2, "print_job_message_preference"

    invoke-virtual {p0, p2}, Lcom/android/settings/print/PrintJobSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mMessagePreference:Landroid/support/v7/preference/Preference;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "print"

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/print/PrintManager;

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getUserId()I

    move-result p3

    .line 89
    invoke-virtual {p2, p3}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p2

    const p3, 0x7f120a85    # @string/print_print_job 'Print job'

    invoke-virtual {p2, p3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 94
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->processArguments()V

    .line 96
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/settings/print/PrintJobSettingsFragment;->setHasOptionsMenu(Z)V

    .line 98
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 146
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getPrintJob()Landroid/print/PrintJob;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 149
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 157
    :pswitch_0
    invoke-virtual {v0}, Landroid/print/PrintJob;->restart()V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    .line 159
    return v2

    .line 151
    :pswitch_1
    invoke-virtual {v0}, Landroid/print/PrintJob;->cancel()V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->finish()V

    .line 153
    return v2

    .line 164
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 2

    .line 109
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->updateUi()V

    .line 113
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 117
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 118
    iget-object v0, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings/print/PrintJobSettingsFragment;->mPrintJobStateChangeListener:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 120
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 103
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/print/PrintJobSettingsFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setEnabled(Z)V

    .line 105
    return-void
.end method
