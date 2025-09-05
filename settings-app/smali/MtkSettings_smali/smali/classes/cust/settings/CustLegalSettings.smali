.class public Lcust/settings/CustLegalSettings;
.super Landroid/app/Activity;
.source "CustLegalSettings.java"


# instance fields
.field private final ClickListener:Landroid/view/View$OnClickListener;

.field private mContextText:Landroid/widget/TextView;

.field private mDownButton:Landroid/widget/Button;

.field private messageId:I

.field private titleId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    new-instance v0, Lcust/settings/CustLegalSettings$1;

    invoke-direct {v0, p0}, Lcust/settings/CustLegalSettings$1;-><init>(Lcust/settings/CustLegalSettings;)V

    iput-object v0, p0, Lcust/settings/CustLegalSettings;->ClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcust/settings/CustLegalSettings;)Landroid/widget/Button;
    .locals 0

    .line 18
    iget-object p0, p0, Lcust/settings/CustLegalSettings;->mDownButton:Landroid/widget/Button;

    return-object p0
.end method

.method public static getCustomLegalMsg(Landroid/content/Context;Landroid/content/ComponentName;)I
    .locals 2

    .line 90
    const-string v0, "com.android.settings.legal"

    const v1, 0x7f12120d    # @string/zzz_hmd_open_source_info_text 'Open source software \n\nThis product includes open source software that is licensed under the GPL and ...'

    invoke-static {p0, p1, v0, v1}, Lcust/settings/CustLegalSettings;->getCustomString(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getCustomLegalTitle(Landroid/content/Context;Landroid/content/ComponentName;)I
    .locals 2

    .line 85
    const-string v0, "com.android.settings.title"

    const v1, 0x7f1207dc    # @string/legal_information 'Legal information'

    invoke-static {p0, p1, v0, v1}, Lcust/settings/CustLegalSettings;->getCustomString(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getCustomString(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;I)I
    .locals 0

    .line 96
    if-eqz p0, :cond_0

    .line 97
    invoke-static {p0, p1, p2}, Lcust/settings/CustomizedUtils;->getStringFromMetaDataint(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result p0

    .line 98
    if-eqz p0, :cond_0

    .line 99
    return p0

    .line 103
    :cond_0
    return p3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const p1, 0x7f0d01ed    # @layout/zzz_legal_settings 'res/layout/zzz_legal_settings.xml'

    invoke-virtual {p0, p1}, Lcust/settings/CustLegalSettings;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcust/settings/CustLegalSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcust/settings/CustLegalSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1, v0}, Lcust/settings/CustLegalSettings;->getCustomLegalTitle(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p1

    iput p1, p0, Lcust/settings/CustLegalSettings;->titleId:I

    .line 38
    invoke-virtual {p0}, Lcust/settings/CustLegalSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcust/settings/CustLegalSettings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {p1, v0}, Lcust/settings/CustLegalSettings;->getCustomLegalMsg(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p1

    iput p1, p0, Lcust/settings/CustLegalSettings;->messageId:I

    .line 40
    iget p1, p0, Lcust/settings/CustLegalSettings;->titleId:I

    invoke-virtual {p0, p1}, Lcust/settings/CustLegalSettings;->setTitle(I)V

    .line 42
    const p1, 0x7f0a00dc    # @id/context_text

    invoke-virtual {p0, p1}, Lcust/settings/CustLegalSettings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcust/settings/CustLegalSettings;->mContextText:Landroid/widget/TextView;

    .line 43
    iget-object p1, p0, Lcust/settings/CustLegalSettings;->mContextText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcust/settings/CustLegalSettings;->mContextText:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 45
    iget-object p1, p0, Lcust/settings/CustLegalSettings;->mContextText:Landroid/widget/TextView;

    iget v0, p0, Lcust/settings/CustLegalSettings;->messageId:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 48
    :cond_0
    const p1, 0x7f0a011e    # @id/done_button

    invoke-virtual {p0, p1}, Lcust/settings/CustLegalSettings;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcust/settings/CustLegalSettings;->mDownButton:Landroid/widget/Button;

    .line 49
    iget-object p1, p0, Lcust/settings/CustLegalSettings;->mDownButton:Landroid/widget/Button;

    iget-object v0, p0, Lcust/settings/CustLegalSettings;->ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, p0, Lcust/settings/CustLegalSettings;->mDownButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 53
    invoke-virtual {p0}, Lcust/settings/CustLegalSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 73
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x102002c    # @android:id/home

    if-eq p1, v1, :cond_0

    .line 81
    return v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcust/settings/CustLegalSettings;->finish()V

    .line 78
    return v0
.end method
