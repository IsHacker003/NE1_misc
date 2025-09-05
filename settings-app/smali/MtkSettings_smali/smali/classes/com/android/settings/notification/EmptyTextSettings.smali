.class public abstract Lcom/android/settings/notification/EmptyTextSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EmptyTextSettings.java"


# instance fields
.field private mEmpty:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 36
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 37
    new-instance p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/notification/EmptyTextSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    .line 38
    iget-object p2, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 39
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/notification/EmptyTextSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010041    # @android:attr/textAppearanceMedium

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p2, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 41
    iget-object v0, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    iget p2, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 42
    const p2, 0x102003f    # @android:id/list_container

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object p1, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/EmptyTextSettings;->setEmptyView(Landroid/view/View;)V

    .line 45
    return-void
.end method

.method protected setEmptyText(I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/settings/notification/EmptyTextSettings;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    return-void
.end method
