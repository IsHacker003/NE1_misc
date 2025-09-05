.class Lcom/mediatek/nfc/CardEmulationProgressCategory;
.super Landroid/support/v7/preference/PreferenceCategory;
.source "CardEmulationSettings.java"


# instance fields
.field private mProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 379
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 376
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mediatek/nfc/CardEmulationProgressCategory;->mProgress:Z

    .line 380
    const p1, 0x7f0d00f6    # @layout/preference_progress_category 'res/layout/preference_progress_category.xml'

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setLayoutResource(I)V

    .line 381
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    .line 385
    invoke-super {p0, p1}, Landroid/support/v7/preference/PreferenceCategory;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 386
    const v0, 0x7f0a02c5    # @id/scanning_progress

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 387
    iget-boolean v0, p0, Lcom/mediatek/nfc/CardEmulationProgressCategory;->mProgress:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 388
    return-void
.end method

.method public setProgress(Z)V
    .locals 0

    .line 391
    iput-boolean p1, p0, Lcom/mediatek/nfc/CardEmulationProgressCategory;->mProgress:Z

    .line 392
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->notifyChanged()V

    .line 393
    return-void
.end method
