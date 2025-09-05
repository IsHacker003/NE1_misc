.class Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;
.super Landroid/app/AlertDialog;
.source "WriteWifiConfigToNfcDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final hexArray:[C


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mLabelView:Landroid/widget/TextView;

.field private mNFCTagWritingSucceed:Z

.field private mPasswordCheckBox:Landroid/widget/CheckBox;

.field private mPasswordView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSecurity:I

.field private mSubmitButton:Landroid/widget/Button;

.field private mView:Landroid/view/View;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWpsNfcConfigurationToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    .line 57
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexArray:[C

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 77
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    .line 80
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "WriteWifiConfigToNfcDialog:wakeLock"

    .line 81
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 82
    iput p2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    .line 83
    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 84
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 87
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 89
    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    .line 90
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "WriteWifiConfigToNfcDialog:wakeLock"

    .line 91
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 92
    const-string v0, "security"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    .line 93
    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;Landroid/nfc/Tag;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->handleWriteNfcEvent(Landroid/nfc/Tag;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)Landroid/widget/ProgressBar;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .locals 6

    .line 312
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 313
    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 314
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 315
    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexArray:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 316
    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexArray:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v0, v3

    .line 313
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private enableSubmitIfAppropriate()V
    .locals 5

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 270
    iget v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_0

    move v1, v2

    nop

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 272
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 273
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_2

    move v1, v2

    nop

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 276
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 279
    :cond_4
    :goto_0
    return-void
.end method

.method private handleWriteNfcEvent(Landroid/nfc/Tag;)V
    .locals 4

    .line 213
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object p1

    .line 215
    const v0, 0x7f120d08    # @string/status_tag_not_writable 'NFC tag is not writable. Please use a different tag.'

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->isWritable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    const-string v0, "application/vnd.wfa.wsc"

    iget-object v1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWpsNfcConfigurationToken:Ljava/lang/String;

    .line 219
    invoke-static {v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 217
    invoke-static {v0, v1}, Landroid/nfc/NdefRecord;->createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v0

    .line 221
    const v1, 0x7f120cf3    # @string/status_failed_to_write 'Unable to write data to NFC tag. If the problem persists, try a different tag'

    :try_start_0
    invoke-virtual {p1}, Landroid/nfc/tech/Ndef;->connect()V

    .line 222
    new-instance v2, Landroid/nfc/NdefMessage;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    invoke-direct {v2, v0, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    invoke-virtual {p1, v2}, Landroid/nfc/tech/Ndef;->writeNdefMessage(Landroid/nfc/NdefMessage;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$2;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 229
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    const v0, 0x7f120d0d    # @string/status_write_success 'Success!'

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 230
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mCancelButton:Landroid/widget/Button;

    const v0, 0x10401ca    # @android:string/emailTypeCustom

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 232
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNFCTagWritingSucceed:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    nop

    .line 242
    goto :goto_0

    .line 237
    :catch_0
    move-exception p1

    .line 238
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 239
    sget-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string v1, "Unable to write Wi-Fi config to NFC tag."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    return-void

    .line 233
    :catch_1
    move-exception p1

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 235
    sget-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string v1, "Unable to write Wi-Fi config to NFC tag."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    return-void

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 244
    sget-object p1, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string v0, "Tag is not writable"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setViewText(Landroid/widget/TextView;I)V

    .line 248
    sget-object p1, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    const-string v0, "Tag does not support NDEF"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .line 300
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 301
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 303
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 304
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 305
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 303
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 308
    :cond_0
    return-object v1
.end method

.method private setViewText(Landroid/widget/TextView;I)V
    .locals 2

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$3;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;Landroid/widget/TextView;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 288
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 325
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 322
    return-void
.end method

.method public dismiss()V
    .locals 3

    .line 254
    sget-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "it\'s dismiss(),release the wakelock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 259
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->dismiss()V

    .line 260
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 292
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    .line 294
    if-eqz p2, :cond_0

    .line 295
    const/16 p2, 0x90

    goto :goto_0

    .line 296
    :cond_0
    const/16 p2, 0x80

    :goto_0
    const/4 v0, 0x1

    or-int/2addr p2, v0

    .line 292
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setInputType(I)V

    .line 297
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 159
    sget-object p1, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "it\'s onClick(),release the wakelock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_0

    .line 161
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetworkWpsNfcConfigurationToken()Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->byteArrayToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 170
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    :goto_0
    const-string v2, "102700%s%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v1, v3, p1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 174
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 175
    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWpsNfcConfigurationToken:Ljava/lang/String;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    .line 178
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog$1;-><init>(Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;)V

    const/16 v2, 0x1f

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/nfc/NfcAdapter;->enableReaderMode(Landroid/app/Activity;Landroid/nfc/NfcAdapter$ReaderCallback;ILandroid/os/Bundle;)V

    .line 192
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 195
    nop

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 199
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    const v0, 0x7f120cea    # @string/status_awaiting_tap 'Tap a tag to write...'

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 201
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v0, 0x7f0a0259    # @id/password_layout

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setTextAlignment(I)V

    .line 202
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 203
    goto :goto_1

    .line 204
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    const v0, 0x7f120cf8    # @string/status_invalid_password 'Invalid password, try again.'

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 206
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 98
    sget-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "it\'s onCreate(),release the wakelock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d01df    # @layout/write_wifi_config_to_nfc 'res/layout/write_wifi_config_to_nfc.xml'

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setView(Landroid/view/View;)V

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setInverseBackgroundForced(Z)V

    .line 103
    const v2, 0x7f120c3e    # @string/setup_wifi_nfc_tag 'Set up Wi-Fi NFC Tag'

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setTitle(I)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setCancelable(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f121136    # @string/write_tag 'Write'

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    .line 105
    const/4 v2, -0x3

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x1040000    # @android:string/cancel

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    const/4 v3, -0x2

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0254    # @id/password

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0258    # @id/password_label

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mLabelView:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0305    # @id/show_password

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBox:Landroid/widget/CheckBox;

    .line 115
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mPasswordCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a0284    # @id/progress_bar

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mProgressBar:Landroid/widget/ProgressBar;

    .line 118
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    .line 121
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSubmitButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 124
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mCancelButton:Landroid/widget/Button;

    .line 125
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 149
    sget-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "it\'s onSaveInstanceState(),release the wakelock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 153
    :cond_0
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onStop()V
    .locals 3

    .line 130
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 131
    sget-object v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "it\'s onStop(),release the wakelock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 135
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNFCTagWritingSucceed:Z

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->getOwnerActivity()Landroid/app/Activity;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_1

    .line 139
    invoke-virtual {v1, v0}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V

    .line 142
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mNFCTagWritingSucceed:Z

    .line 143
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 264
    invoke-direct {p0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->enableSubmitIfAppropriate()V

    .line 265
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    .line 209
    const-string v0, "security"

    iget v1, p0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->mSecurity:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 210
    return-void
.end method
