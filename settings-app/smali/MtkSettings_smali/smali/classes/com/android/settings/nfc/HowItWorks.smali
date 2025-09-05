.class public Lcom/android/settings/nfc/HowItWorks;
.super Landroid/app/Activity;
.source "HowItWorks.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const p1, 0x7f0d00c3    # @layout/nfc_payment_how_it_works 'res/layout/nfc_payment_how_it_works.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/HowItWorks;->setContentView(I)V

    .line 14
    invoke-virtual {p0}, Lcom/android/settings/nfc/HowItWorks;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 15
    const p1, 0x7f0a0227    # @id/nfc_how_it_works_button

    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/HowItWorks;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 16
    new-instance v0, Lcom/android/settings/nfc/HowItWorks$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/HowItWorks$1;-><init>(Lcom/android/settings/nfc/HowItWorks;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/nfc/HowItWorks;->finish()V

    .line 27
    const/4 v0, 0x1

    return v0
.end method
