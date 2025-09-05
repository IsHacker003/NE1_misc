.class public Lcom/android/settings/applications/ConvertToFbe;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ConvertToFbe.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    return-void
.end method

.method private convert()V
    .locals 2

    .line 84
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/applications/ConvertToFbe;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/applications/ConfirmConvertToFbe;

    .line 85
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 86
    const v1, 0x7f120415    # @string/convert_to_file_encryption 'Convert to file encryption'

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/applications/ConvertToFbe;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 89
    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/android/settings/applications/ConvertToFbe;Landroid/view/View;)V
    .locals 0

    .line 60
    const/16 p1, 0x37

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ConvertToFbe;->runKeyguardConfirmation(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/applications/ConvertToFbe;->convert()V

    .line 63
    :cond_0
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/applications/ConvertToFbe;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/ConvertToFbe;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 44
    const v2, 0x7f120415    # @string/convert_to_file_encryption 'Convert to file encryption'

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 43
    invoke-virtual {v1, p1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result p1

    .line 42
    return p1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 93
    const/16 v0, 0x192

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 72
    const/16 p3, 0x37

    if-eq p1, p3, :cond_0

    .line 73
    return-void

    .line 78
    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 79
    invoke-direct {p0}, Lcom/android/settings/applications/ConvertToFbe;->convert()V

    .line 81
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/applications/ConvertToFbe;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f120415    # @string/convert_to_file_encryption 'Convert to file encryption'

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 51
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 56
    const p2, 0x7f0d0061    # @layout/convert_fbe 'res/layout/convert_fbe.xml'

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 58
    const p2, 0x7f0a0094    # @id/button_convert_fbe

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 59
    new-instance p3, Lcom/android/settings/applications/-$$Lambda$ConvertToFbe$cKWuNkHe-dkbg8HKJCoDk07_9og;

    invoke-direct {p3, p0}, Lcom/android/settings/applications/-$$Lambda$ConvertToFbe$cKWuNkHe-dkbg8HKJCoDk07_9og;-><init>(Lcom/android/settings/applications/ConvertToFbe;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    return-object p1
.end method
