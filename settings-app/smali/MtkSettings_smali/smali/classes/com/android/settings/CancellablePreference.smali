.class public Lcom/android/settings/CancellablePreference;
.super Landroid/support/v7/preference/Preference;
.source "CancellablePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CancellablePreference$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancellable:Z

.field private mListener:Lcom/android/settings/CancellablePreference$OnCancelListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const p1, 0x7f0d0045    # @layout/cancel_pref_widget 'res/layout/cancel_pref_widget.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/CancellablePreference;->setWidgetLayoutResource(I)V

    .line 39
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 54
    const v0, 0x7f0a009b    # @id/cancel

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 55
    iget-boolean v0, p0, Lcom/android/settings/CancellablePreference;->mCancellable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/android/settings/CancellablePreference;->mListener:Lcom/android/settings/CancellablePreference$OnCancelListener;

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/android/settings/CancellablePreference;->mListener:Lcom/android/settings/CancellablePreference$OnCancelListener;

    invoke-interface {p1, p0}, Lcom/android/settings/CancellablePreference$OnCancelListener;->onCancel(Lcom/android/settings/CancellablePreference;)V

    .line 64
    :cond_0
    return-void
.end method

.method public setCancellable(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/android/settings/CancellablePreference;->mCancellable:Z

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/CancellablePreference;->notifyChanged()V

    .line 44
    return-void
.end method

.method public setOnCancelListener(Lcom/android/settings/CancellablePreference$OnCancelListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/CancellablePreference;->mListener:Lcom/android/settings/CancellablePreference$OnCancelListener;

    .line 48
    return-void
.end method
