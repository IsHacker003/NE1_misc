.class public final enum Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final alphaHintForFingerprint:I

.field public final alphaMessage:I

.field public final alphaMessageForFingerprint:I

.field public final buttonText:I

.field public final numericHint:I

.field public final numericHintForFingerprint:I

.field public final numericMessage:I

.field public final numericMessageForFingerprint:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 257
    new-instance v12, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f120842    # @string/lockpassword_choose_your_screen_lock_header 'Set screen lock'

    const v4, 0x7f12083c    # @string/lockpassword_choose_your_password_header_for_fingerprint 'To use fingerprint, set password'

    const v5, 0x7f120842    # @string/lockpassword_choose_your_screen_lock_header 'Set screen lock'

    const v6, 0x7f120840    # @string/lockpassword_choose_your_pin_header_for_fingerprint 'To use fingerprint, set PIN'

    const v7, 0x7f12083d    # @string/lockpassword_choose_your_password_message 'For security, set password'

    const v8, 0x7f120825    # @string/lock_settings_picker_fingerprint_added_security_message 'For added security, set a backup screen lock'

    const v9, 0x7f120841    # @string/lockpassword_choose_your_pin_message 'For security, set PIN'

    const v10, 0x7f120825    # @string/lock_settings_picker_fingerprint_added_security_message 'For added security, set a backup screen lock'

    const v11, 0x7f120940    # @string/next_label 'Next'

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v12, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 268
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v14, "NeedToConfirm"

    const/4 v15, 0x1

    const v16, 0x7f12084a    # @string/lockpassword_confirm_your_password_header 'Re-enter your password'

    const v17, 0x7f12084a    # @string/lockpassword_confirm_your_password_header 'Re-enter your password'

    const v18, 0x7f120854    # @string/lockpassword_confirm_your_pin_header 'Re-enter your PIN'

    const v19, 0x7f120854    # @string/lockpassword_confirm_your_pin_header 'Re-enter your PIN'

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0x7f120844    # @string/lockpassword_confirm_label 'Confirm'

    move-object v13, v0

    invoke-direct/range {v13 .. v24}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 279
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const-string v2, "ConfirmWrong"

    const/4 v3, 0x2

    const v4, 0x7f120845    # @string/lockpassword_confirm_passwords_dont_match 'Passwords don’t match'

    const v5, 0x7f120845    # @string/lockpassword_confirm_passwords_dont_match 'Passwords don’t match'

    const v6, 0x7f120846    # @string/lockpassword_confirm_pins_dont_match 'PINs don’t match'

    const v7, 0x7f120846    # @string/lockpassword_confirm_pins_dont_match 'PINs don’t match'

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f120844    # @string/lockpassword_confirm_label 'Confirm'

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IIIIIIIIII)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 255
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIII)V"
        }
    .end annotation

    .line 294
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 295
    iput p3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    .line 296
    iput p4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFingerprint:I

    .line 297
    iput p5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    .line 298
    iput p6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFingerprint:I

    .line 299
    iput p7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessage:I

    .line 300
    iput p8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessageForFingerprint:I

    .line 301
    iput p9, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessage:I

    .line 302
    iput p10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessageForFingerprint:I

    .line 303
    iput p11, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    .line 304
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .line 255
    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .line 255
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method


# virtual methods
.method public getHint(ZZ)I
    .locals 0

    .line 317
    if-eqz p1, :cond_1

    .line 318
    if-eqz p2, :cond_0

    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFingerprint:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_0
    return p1

    .line 320
    :cond_1
    if-eqz p2, :cond_2

    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFingerprint:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    :goto_1
    return p1
.end method

.method public getMessage(ZZ)I
    .locals 0

    .line 325
    if-eqz p1, :cond_1

    .line 326
    if-eqz p2, :cond_0

    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessageForFingerprint:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessage:I

    :goto_0
    return p1

    .line 328
    :cond_1
    if-eqz p2, :cond_2

    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessageForFingerprint:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessage:I

    :goto_1
    return p1
.end method
