.class public Lcom/android/settings/applications/appops/BackgroundCheckSummary;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "BackgroundCheckSummary.java"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 37
    const/16 v0, 0x102

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/BackgroundCheckSummary;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f1201b4    # @string/background_check_pref 'Background check'

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 49
    iput-object p1, p0, Lcom/android/settings/applications/appops/BackgroundCheckSummary;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    iget-object p1, p0, Lcom/android/settings/applications/appops/BackgroundCheckSummary;->mInflater:Landroid/view/LayoutInflater;

    const p3, 0x7f0d0037    # @layout/background_check_summary 'res/layout/background_check_summary.xml'

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    instance-of p2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/BackgroundCheckSummary;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p2

    .line 61
    const p3, 0x7f0a005a    # @id/appops_content

    new-instance v0, Lcom/android/settings/applications/appops/AppOpsCategory;

    sget-object v1, Lcom/android/settings/applications/appops/AppOpsState;->RUN_IN_BACKGROUND_TEMPLATE:Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/appops/AppOpsCategory;-><init>(Lcom/android/settings/applications/appops/AppOpsState$OpsTemplate;)V

    const-string v1, "appops"

    invoke-virtual {p2, p3, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 63
    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 65
    return-object p1
.end method
