.class public Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintPreference"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;
    }
.end annotation


# instance fields
.field private mDeleteView:Landroid/view/View;

.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private final mOnDeleteClickListener:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;)V
    .locals 0

    .line 875
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    .line 876
    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mOnDeleteClickListener:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;

    .line 877
    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;)Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;
    .locals 0

    .line 862
    iget-object p0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mOnDeleteClickListener:Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$OnDeleteClickListener;

    return-object p0
.end method


# virtual methods
.method public getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    .line 888
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method protected getSecondTargetResId()I
    .locals 1

    .line 893
    const v0, 0x7f0d0101    # @layout/preference_widget_delete 'res/layout/preference_widget_delete.xml'

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 880
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    .line 898
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 899
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    .line 900
    iget-object p1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0101    # @id/delete_button

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mDeleteView:Landroid/view/View;

    .line 901
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mDeleteView:Landroid/view/View;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 909
    return-void
.end method

.method public setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    .line 884
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 885
    return-void
.end method
