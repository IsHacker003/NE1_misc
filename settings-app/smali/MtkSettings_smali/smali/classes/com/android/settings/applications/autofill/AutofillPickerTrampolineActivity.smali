.class public Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;
.super Landroid/app/Activity;
.source "AutofillPickerTrampolineActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getDefaultKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->setResult(I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->finish()V

    .line 44
    return-void

    .line 48
    :cond_0
    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 49
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillSupported()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/applications/autofill/AutofillPickerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2000000

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->finish()V

    .line 62
    return-void

    .line 51
    :cond_2
    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->setResult(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->finish()V

    .line 53
    return-void
.end method
