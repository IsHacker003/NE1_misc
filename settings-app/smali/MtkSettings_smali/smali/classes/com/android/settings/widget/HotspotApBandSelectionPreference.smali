.class public Lcom/android/settings/widget/HotspotApBandSelectionPreference;
.super Lcom/android/settingslib/CustomDialogPreference;
.source "HotspotApBandSelectionPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;
    }
.end annotation


# static fields
.field static final KEY_CHECKED_BANDS:Ljava/lang/String; = "checked_bands"

.field static final KEY_HOTSPOT_SUPER_STATE:Ljava/lang/String; = "hotspot_super_state"


# instance fields
.field private mBandEntries:[Ljava/lang/String;

.field mBox2G:Landroid/widget/CheckBox;

.field mBox5G:Landroid/widget/CheckBox;

.field private mExistingConfigValue:I

.field mRestoredBands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mShouldRestore:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;)V

    .line 57
    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mExistingConfigValue:I

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mExistingConfigValue:I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mExistingConfigValue:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 57
    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mExistingConfigValue:I

    .line 74
    return-void
.end method

.method private addApBandViews(Landroid/widget/LinearLayout;)V
    .locals 3

    .line 155
    const v0, 0x7f0a007c    # @id/box_2g

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    .line 156
    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBandEntries:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    invoke-direct {p0, v2}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->restoreBandIfNeeded(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    const v0, 0x7f0a007d    # @id/box_5g

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    .line 161
    iget-object p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBandEntries:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    invoke-direct {p0, v1}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->restoreBandIfNeeded(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 163
    iget-object p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 164
    return-void
.end method

.method private isBandPreviouslySelected(I)Z
    .locals 3

    .line 196
    iget v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mExistingConfigValue:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 205
    return v1

    .line 202
    :pswitch_0
    if-ne p1, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 200
    :pswitch_1
    if-nez p1, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    .line 198
    :pswitch_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private restoreBandIfNeeded(I)Z
    .locals 1

    .line 168
    invoke-direct {p0, p1}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->isBandPreviouslySelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mShouldRestore:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mShouldRestore:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    .line 169
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 168
    :goto_0
    return p1
.end method

.method private updatePositiveButton()V
    .locals 2

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 174
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 175
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    if-eqz v1, :cond_3

    .line 176
    iget-object v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    :cond_3
    return-void
.end method


# virtual methods
.method getWifiBand()I
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 184
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 185
    const/4 v0, -0x1

    return v0

    .line 186
    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 187
    const/4 v0, 0x0

    return v0

    .line 188
    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 189
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wifi Config only supports selecting one or all bands"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .line 99
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 103
    invoke-virtual {p0, p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 105
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300a1    # @array/wifi_ap_band_config_full

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBandEntries:[Ljava/lang/String;

    .line 107
    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->addApBandViews(Landroid/widget/LinearLayout;)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->updatePositiveButton()V

    .line 111
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    .line 112
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mShouldRestore:Z

    .line 113
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 128
    instance-of p1, p1, Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->updatePositiveButton()V

    .line 132
    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 137
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->getWifiBand()I

    move-result p1

    .line 140
    iput p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mExistingConfigValue:I

    .line 141
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 144
    :cond_1
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 78
    check-cast p1, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;

    .line 80
    invoke-virtual {p1}, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/settingslib/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 82
    iget-boolean v0, p1, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->shouldRestore:Z

    iput-boolean v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mShouldRestore:Z

    .line 83
    iget-boolean v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mShouldRestore:Z

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    .line 85
    iget-boolean v0, p1, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->enabled2G:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    iget-boolean p1, p1, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->enabled5G:Z

    if-eqz p1, :cond_2

    .line 89
    iget-object p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mRestoredBands:Ljava/util/ArrayList;

    .line 94
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->updatePositiveButton()V

    .line 95
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 117
    invoke-super {p0}, Lcom/android/settingslib/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, v1, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->shouldRestore:Z

    .line 121
    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox2G:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, v1, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->enabled2G:Z

    .line 122
    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mBox5G:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v3

    nop

    :cond_2
    iput-boolean v2, v1, Lcom/android/settings/widget/HotspotApBandSelectionPreference$SavedState;->enabled5G:Z

    .line 123
    return-object v1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->updatePositiveButton()V

    .line 212
    return-void
.end method

.method public setExistingConfigValue(I)V
    .locals 0

    .line 151
    iput p1, p0, Lcom/android/settings/widget/HotspotApBandSelectionPreference;->mExistingConfigValue:I

    .line 152
    return-void
.end method
