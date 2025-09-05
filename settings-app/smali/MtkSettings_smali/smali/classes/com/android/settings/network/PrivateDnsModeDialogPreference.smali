.class public Lcom/android/settings/network/PrivateDnsModeDialogPreference;
.super Lcom/android/settingslib/CustomDialogPreference;
.source "PrivateDnsModeDialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# static fields
.field private static final ADDRESS_FAMILIES:[I

.field static final HOSTNAME_KEY:Ljava/lang/String; = "private_dns_specifier"

.field static final MODE_KEY:Ljava/lang/String; = "private_dns_mode"

.field private static final PRIVATE_DNS_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mEditText:Landroid/widget/EditText;

.field mMode:Ljava/lang/String;

.field mRadioGroup:Landroid/widget/RadioGroup;

.field private final mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    .line 70
    sget-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    const-string v1, "off"

    const v2, 0x7f0a0279    # @id/private_dns_mode_off

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    const-string v1, "opportunistic"

    const v2, 0x7f0a027a    # @id/private_dns_mode_opportunistic

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    const-string v1, "hostname"

    const v2, 0x7f0a027b    # @id/private_dns_mode_provider

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->ADDRESS_FAMILIES:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;)V

    .line 118
    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v0, "url"

    sget-object v1, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 118
    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string p2, "url"

    sget-object v0, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    invoke-direct {p1, p2, v0}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 118
    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string p2, "url"

    sget-object p3, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    invoke-direct {p1, p2, p3}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 118
    new-instance p1, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string p2, "url"

    sget-object p3, Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;->INSTANCE:Lcom/android/settings/network/-$$Lambda$PrivateDnsModeDialogPreference$I1bK8FTmQSNCc-qXqZ0usMONEsU;

    invoke-direct {p1, p2, p3}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mUrlLinkInfo:Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    .line 116
    return-void
.end method

.method public static getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "private_dns_specifier"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getModeFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 2

    .line 83
    const-string v0, "private_dns_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 85
    const-string v0, "private_dns_default_mode"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    sget-object p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "opportunistic"

    :goto_0
    return-object v0
.end method

.method private getSaveButton()Landroid/widget/Button;
    .locals 2

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 228
    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method private isWeaklyValidatedHostname(Ljava/lang/String;)Z
    .locals 5

    .line 213
    const-string v0, "^[a-zA-Z0-9_.-]+$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 214
    return v1

    .line 217
    :cond_0
    sget-object v0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->ADDRESS_FAMILIES:[I

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    .line 218
    invoke-static {v4, p1}, Landroid/system/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 219
    return v1

    .line 217
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    nop

    .line 122
    const v1, 0x7f1206e5    # @string/help_uri_private_dns ''

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 126
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception p0

    .line 128
    const-string p0, "PrivateDnsModeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity was not found for intent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    :goto_0
    return-void
.end method

.method private updateDialogInfo()V
    .locals 2

    .line 235
    const-string v0, "hostname"

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 236
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getSaveButton()Landroid/widget/Button;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_2

    .line 241
    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->isWeaklyValidatedHostname(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, 0x1

    .line 241
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 245
    :cond_2
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 206
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->updateDialogInfo()V

    .line 207
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 198
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 138
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getModeFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    .line 140
    const v2, 0x7f0a027c    # @id/private_dns_mode_provider_hostname

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    .line 141
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getHostnameFromSettings(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const v1, 0x7f0a027d    # @id/private_dns_radio_group

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 145
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 146
    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mRadioGroup:Landroid/widget/RadioGroup;

    sget-object v2, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->PRIVATE_DNS_MAP:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    const v4, 0x7f0a027a    # @id/private_dns_mode_opportunistic

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 148
    const v1, 0x7f0a0278    # @id/private_dns_help_info

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 149
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 150
    nop

    .line 151
    const v1, 0x7f1206e5    # @string/help_uri_private_dns ''

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 153
    new-instance v2, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    const-string v3, "url"

    invoke-direct {v2, v0, v3, v1}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    .line 155
    invoke-virtual {v2}, Lcom/android/settings/utils/AnnotationSpan$LinkInfo;->isActionable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    const v3, 0x7f120a92    # @string/private_dns_help_message '<annotation id="url">Learn more</annotation> about Private DNS features'

    .line 158
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/settings/utils/AnnotationSpan$LinkInfo;

    aput-object v2, v3, v1

    .line 157
    invoke-static {v0, v3}, Lcom/android/settings/utils/AnnotationSpan;->linkify(Ljava/lang/CharSequence;[Lcom/android/settings/utils/AnnotationSpan$LinkInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 160
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    :goto_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 182
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 190
    :pswitch_0
    const-string p1, "hostname"

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    goto :goto_0

    .line 187
    :pswitch_1
    const-string p1, "opportunistic"

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    .line 188
    goto :goto_0

    .line 184
    :pswitch_2
    const-string p1, "off"

    iput-object p1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    .line 185
    nop

    .line 193
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->updateDialogInfo()V

    .line 194
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0279
        :pswitch_2    # @id/private_dns_mode_off
        :pswitch_1    # @id/private_dns_mode_opportunistic
        :pswitch_0    # @id/private_dns_mode_provider
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 166
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 168
    iget-object p2, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    const-string v0, "hostname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "private_dns_specifier"

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mEditText:Landroid/widget/EditText;

    .line 171
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 174
    :cond_0
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p2

    const/16 v0, 0x4e1

    iget-object v1, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "private_dns_mode"

    iget-object v0, p0, Lcom/android/settings/network/PrivateDnsModeDialogPreference;->mMode:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 202
    return-void
.end method
