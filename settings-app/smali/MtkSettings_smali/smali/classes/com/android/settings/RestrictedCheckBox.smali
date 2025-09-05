.class public Lcom/android/settings/RestrictedCheckBox;
.super Landroid/widget/CheckBox;
.source "RestrictedCheckBox.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/RestrictedCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object p1, p0, Lcom/android/settings/RestrictedCheckBox;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public performClick()Z
    .locals 2

    .line 50
    iget-boolean v0, p0, Lcom/android/settings/RestrictedCheckBox;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/settings/RestrictedCheckBox;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/RestrictedCheckBox;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 52
    const/4 v0, 0x1

    return v0

    .line 54
    :cond_0
    invoke-super {p0}, Landroid/widget/CheckBox;->performClick()Z

    move-result v0

    return v0
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    .line 58
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 59
    :goto_0
    iput-object p1, p0, Lcom/android/settings/RestrictedCheckBox;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 60
    iget-boolean p1, p0, Lcom/android/settings/RestrictedCheckBox;->mDisabledByAdmin:Z

    if-eq p1, v0, :cond_2

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/RestrictedCheckBox;->mDisabledByAdmin:Z

    .line 62
    iget-object p1, p0, Lcom/android/settings/RestrictedCheckBox;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/android/settings/RestrictedCheckBox;->mDisabledByAdmin:Z

    invoke-static {p1, p0, v0}, Lcom/android/settingslib/RestrictedLockUtils;->setTextViewAsDisabledByAdmin(Landroid/content/Context;Landroid/widget/TextView;Z)V

    .line 63
    iget-boolean p1, p0, Lcom/android/settings/RestrictedCheckBox;->mDisabledByAdmin:Z

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/RestrictedCheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/RestrictedCheckBox;->mContext:Landroid/content/Context;

    const v1, 0x7f060047    # @color/disabled_text_color '#66000000'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/RestrictedCheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 70
    :cond_2
    :goto_1
    return-void
.end method
