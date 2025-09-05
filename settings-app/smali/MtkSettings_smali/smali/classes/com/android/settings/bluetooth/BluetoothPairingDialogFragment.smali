.class public Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothPairingDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mDialog:Landroid/app/AlertDialog;

.field private mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

.field private mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

.field private mPairingView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private createConfirmationDialog()Landroid/app/AlertDialog;
    .locals 4

    .line 305
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 306
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 305
    const v2, 0x7f1202eb    # @string/bluetooth_pairing_request 'Pair with %1$s?'

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 307
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 308
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1202dd    # @string/bluetooth_pairing_accept 'Pair'

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 309
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1202df    # @string/bluetooth_pairing_decline 'Cancel'

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 310
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 311
    return-object v0
.end method

.method private createConsentDialog()Landroid/app/AlertDialog;
    .locals 1

    .line 318
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createConfirmationDialog()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createDisplayPasskeyOrPinDialog()Landroid/app/AlertDialog;
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 327
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 326
    const v2, 0x7f1202eb    # @string/bluetooth_pairing_request 'Pair with %1$s?'

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 328
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 329
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000    # @android:string/cancel

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 330
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->notifyDialogDisplayed()V

    .line 335
    return-object v0
.end method

.method private createPinEntryView()Landroid/view/View;
    .locals 12

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0041    # @layout/bluetooth_pin_entry 'res/layout/bluetooth_pin_entry.xml'

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 252
    const v1, 0x7f0a0260    # @id/pin_values_hint

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 253
    const v2, 0x7f0a020c    # @id/message_below_pin

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 254
    const v3, 0x7f0a0043    # @id/alphanumeric_pin

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 255
    const v4, 0x7f0a025e    # @id/phonebook_sharing_message_entry_pin

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 257
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 258
    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 257
    const v7, 0x7f1202ec    # @string/bluetooth_pairing_shares_phonebook 'Allow access to your contacts and call history'

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const v6, 0x7f0a0382    # @id/text

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 261
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isProfileReady()Z

    move-result v7

    const/16 v9, 0x8

    if-eqz v7, :cond_0

    .line 262
    nop

    .line 261
    move v7, v9

    goto :goto_0

    .line 262
    :cond_0
    nop

    .line 261
    move v7, v8

    :goto_0
    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 263
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothPairingController;->setContactSharingState()V

    .line 264
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 265
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getContactSharingState()Z

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 267
    iput-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    .line 269
    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 270
    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 271
    new-instance v4, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$r7iz4I0mbAZSn1y-rbFsqcyiwC0;

    invoke-direct {v4, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$r7iz4I0mbAZSn1y-rbFsqcyiwC0;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 280
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceVariantMessageId()I

    move-result v4

    .line 281
    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v7}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceVariantMessageHintId()I

    move-result v7

    .line 282
    iget-object v10, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v10}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceMaxPasskeyLength()I

    move-result v10

    .line 283
    iget-object v11, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v11}, Lcom/android/settings/bluetooth/BluetoothPairingController;->pairingCodeIsAlphanumeric()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 284
    nop

    .line 283
    move v11, v8

    goto :goto_1

    .line 284
    :cond_1
    nop

    .line 283
    move v11, v9

    :goto_1
    invoke-virtual {v3, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 285
    const/4 v3, -0x1

    if-eq v4, v3, :cond_2

    .line 286
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 288
    :cond_2
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    :goto_2
    if-eq v7, v3, :cond_3

    .line 291
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 293
    :cond_3
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    :goto_3
    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v8

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 298
    return-object v0
.end method

.method private createUserEntryDialog()Landroid/app/AlertDialog;
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 227
    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 226
    const v2, 0x7f1202eb    # @string/bluetooth_pairing_request 'Pair with %1$s?'

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 228
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createPinEntryView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 229
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a    # @android:string/ok

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x1040000    # @android:string/cancel

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 232
    new-instance v1, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$ItV61WjNe_T4YaZN6BYGTBHLdZc;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothPairingDialogFragment$ItV61WjNe_T4YaZN6BYGTBHLdZc;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 244
    return-object v0
.end method

.method private createView()Landroid/view/View;
    .locals 8

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0040    # @layout/bluetooth_pin_confirm 'res/layout/bluetooth_pin_confirm.xml'

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 344
    const v1, 0x7f0a0250    # @id/pairing_caption

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 345
    const v2, 0x7f0a0252    # @id/pairing_subhead

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 346
    const v3, 0x7f0a0251    # @id/pairing_code_message

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 347
    const v4, 0x7f0a025d    # @id/phonebook_sharing_message_confirm_pin

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 349
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 350
    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDeviceName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 349
    const v6, 0x7f1202ec    # @string/bluetooth_pairing_shares_phonebook 'Allow access to your contacts and call history'

    invoke-virtual {p0, v6, v5}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 352
    nop

    .line 353
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isProfileReady()Z

    move-result v5

    const/16 v6, 0x8

    if-eqz v5, :cond_0

    .line 352
    move v5, v6

    goto :goto_0

    .line 353
    :cond_0
    nop

    .line 352
    move v5, v7

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 354
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->setContactSharingState()V

    .line 355
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v5}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getContactSharingState()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 356
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 358
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v4}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isDisplayPairingKeyVariant()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 359
    nop

    .line 358
    move v6, v7

    goto :goto_1

    .line 359
    :cond_1
    nop

    .line 358
    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 360
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/BluetoothPairingController;->hasPairingContent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 361
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 362
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getPairingContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :cond_2
    return-object v0
.end method

.method public static synthetic lambda$createPinEntryView$1(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 273
    if-eqz p2, :cond_0

    .line 274
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setInputType(I)V

    .line 278
    :goto_0
    return-void
.end method

.method public static synthetic lambda$createUserEntryDialog$0(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;Landroid/content/DialogInterface;)V
    .locals 2

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getPairingViewText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 237
    nop

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 239
    if-eqz p1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 243
    :cond_1
    return-void
.end method

.method private setupDialog()Landroid/app/AlertDialog;
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDialogType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 203
    const/4 v0, 0x0

    .line 204
    const-string v1, "BTPairingDialogFragment"

    const-string v2, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createDisplayPasskeyOrPinDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 201
    goto :goto_0

    .line 197
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createConsentDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 198
    goto :goto_0

    .line 194
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->createUserEntryDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 195
    nop

    .line 206
    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stringFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 105
    const-string v0, "[^\\x20-\\x7e]"

    .line 106
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 108
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v1, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isPasskeyValid(Landroid/text/Editable;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->updateUserInput(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 88
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 134
    const/16 v0, 0x265

    return v0
.end method

.method getPairingViewText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method isPairingControllerSet()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPairingDialogActivitySet()Z
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 124
    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onDialogPositiveClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    goto :goto_0

    .line 126
    :cond_0
    const/4 p1, -0x2

    if-ne p2, p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onDialogNegativeClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V

    .line 129
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    .line 130
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingControllerSet()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingDialogActivitySet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 81
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->setupDialog()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    .line 82
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mDialog:Landroid/app/AlertDialog;

    return-object p1

    .line 77
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must call setPairingDialogActivity() before showing dialog"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must call setPairingController() before showing dialog"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 93
    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getInputType()I

    move-result p2

    const/4 p3, 0x2

    if-eq p2, p3, :cond_0

    .line 94
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 95
    const-string p2, "BTPairingDialogFragment"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onTextChanged "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->stringFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 102
    :cond_0
    return-void
.end method

.method setPairingController(Lcom/android/settings/bluetooth/BluetoothPairingController;)V
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingControllerSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 158
    return-void

    .line 154
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The controller can only be set once. Forcibly replacing it will lead to undefined behavior"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setPairingDialogActivity(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingDialogActivitySet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->mPairingDialogActivity:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    .line 177
    return-void

    .line 174
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The pairing dialog activity can only be set once"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
