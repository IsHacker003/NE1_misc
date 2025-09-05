.class abstract Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDeviceNameEdited:Z

.field private mDeviceNameUpdated:Z

.field mDeviceNameView:Landroid/widget/EditText;

.field private mOkButton:Landroid/widget/Button;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)Landroid/app/AlertDialog;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private createDialogView(Ljava/lang/String;)Landroid/view/View;
    .locals 5

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 118
    const v1, 0x7f0d0084    # @layout/dialog_edittext 'res/layout/dialog_edittext.xml'

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 119
    const v1, 0x7f0a0128    # @id/edittext

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 120
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v3, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;

    invoke-direct {v3}, Lcom/android/settings/bluetooth/BluetoothLengthDeviceNameFilter;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 128
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    .line 129
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;-><init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 141
    return-object v0
.end method

.method public static synthetic lambda$onCreateDialog$0(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public static synthetic lambda$onCreateDialog$1(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;Landroid/content/DialogInterface;)V
    .locals 2

    .line 97
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 171
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 173
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    .line 174
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 176
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 177
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    :cond_2
    :goto_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 192
    return-void
.end method

.method protected abstract getDeviceName()Ljava/lang/String;
.end method

.method protected abstract getDialogTitle()I
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 82
    const-string v0, "BluetoothNameDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog, getActivity() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz p1, :cond_0

    .line 85
    const-string v1, "device_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    const-string v1, "device_name_edited"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 88
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getDialogTitle()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 90
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120312    # @string/bluetooth_rename_button 'Rename'

    new-instance v1, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothNameDialogFragment$pGuotXbZkr5ej_7pdbB840goZcw;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothNameDialogFragment$pGuotXbZkr5ej_7pdbB840goZcw;-><init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V

    .line 91
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000    # @android:string/cancel

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 96
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothNameDialogFragment$UwiP0mVIJKgl9XIciCSL5BjtkO4;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/-$$Lambda$BluetoothNameDialogFragment$UwiP0mVIJKgl9XIciCSL5BjtkO4;-><init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 106
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDestroy()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 148
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 149
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 150
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 154
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onResume()V

    .line 155
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 157
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 111
    const-string v0, "device_name"

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "device_name_edited"

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 196
    return-void
.end method

.method protected abstract setDeviceName(Ljava/lang/String;)V
.end method

.method updateDeviceName()V
    .locals 2

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_0

    .line 164
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 166
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_0
    return-void
.end method
