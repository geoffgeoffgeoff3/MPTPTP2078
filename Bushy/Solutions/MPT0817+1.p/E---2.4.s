%------------------------------------------------------------------------------
% File       : E---2.4
% Problem    : relset_1__t13_relset_1.p : TPTP v0.0.0. Released v0.0.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n016.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 300s
% DateTime   : Fri Oct 11 10:38:07 EDT 2019

% Result     : Theorem 0.34s
% Output     : CNFRefutation 0.34s
% Verified   : 
% Statistics : Number of formulae       :   74 ( 235 expanded)
%              Number of clauses        :   48 ( 106 expanded)
%              Number of leaves         :   13 (  58 expanded)
%              Depth                    :   18
%              Number of atoms          :  176 ( 585 expanded)
%              Number of equality atoms :    6 (  18 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    6 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t13_relset_1,conjecture,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
     => ( r1_tarski(k1_relat_1(X4),X2)
       => m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ) ) ),
    file('/export/starexec/sandbox/benchmark/relset_1__t13_relset_1.p',t13_relset_1)).

fof(redefinition_r1_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( r1_relset_1(X1,X2,X3,X4)
      <=> r1_tarski(X3,X4) ) ) ),
    file('/export/starexec/sandbox/benchmark/relset_1__t13_relset_1.p',redefinition_r1_relset_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/relset_1__t13_relset_1.p',cc1_relset_1)).

fof(t21_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1))) ) ),
    file('/export/starexec/sandbox/benchmark/relset_1__t13_relset_1.p',t21_relat_1)).

fof(t3_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,k1_zfmisc_1(X2))
    <=> r1_tarski(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/relset_1__t13_relset_1.p',t3_subset)).

fof(d19_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v5_relat_1(X2,X1)
      <=> r1_tarski(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/relset_1__t13_relset_1.p',d19_relat_1)).

fof(t1_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X2,X3) )
     => r1_tarski(X1,X3) ) ),
    file('/export/starexec/sandbox/benchmark/relset_1__t13_relset_1.p',t1_xboole_1)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/relset_1__t13_relset_1.p',t2_subset)).

fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/relset_1__t13_relset_1.p',cc2_relset_1)).

fof(t6_boole,axiom,(
    ! [X1] :
      ( v1_xboole_0(X1)
     => X1 = k1_xboole_0 ) ),
    file('/export/starexec/sandbox/benchmark/relset_1__t13_relset_1.p',t6_boole)).

fof(t1_subset,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => m1_subset_1(X1,X2) ) ),
    file('/export/starexec/sandbox/benchmark/relset_1__t13_relset_1.p',t1_subset)).

fof(dt_o_0_0_xboole_0,axiom,(
    v1_xboole_0(o_0_0_xboole_0) ),
    file('/export/starexec/sandbox/benchmark/relset_1__t13_relset_1.p',dt_o_0_0_xboole_0)).

fof(t119_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X3,X4) )
     => r1_tarski(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X4)) ) ),
    file('/export/starexec/sandbox/benchmark/relset_1__t13_relset_1.p',t119_zfmisc_1)).

fof(c_0_13,negated_conjecture,(
    ~ ! [X1,X2,X3,X4] :
        ( m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))
       => ( r1_tarski(k1_relat_1(X4),X2)
         => m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ) ) ),
    inference(assume_negation,[status(cth)],[t13_relset_1])).

fof(c_0_14,plain,(
    ! [X15,X16,X17,X18] :
      ( ( ~ r1_relset_1(X15,X16,X17,X18)
        | r1_tarski(X17,X18)
        | ~ m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X15,X16))) )
      & ( ~ r1_tarski(X17,X18)
        | r1_relset_1(X15,X16,X17,X18)
        | ~ m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X15,X16))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_r1_relset_1])])])).

fof(c_0_15,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0)))
    & r1_tarski(k1_relat_1(esk4_0),esk2_0)
    & ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])).

fof(c_0_16,plain,(
    ! [X47,X48,X49] :
      ( ~ m1_subset_1(X49,k1_zfmisc_1(k2_zfmisc_1(X47,X48)))
      | v1_relat_1(X49) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

cnf(c_0_17,plain,
    ( r1_relset_1(X3,X4,X1,X2)
    | ~ r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_18,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk1_0,esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_19,plain,(
    ! [X31] :
      ( ~ v1_relat_1(X31)
      | r1_tarski(X31,k2_zfmisc_1(k1_relat_1(X31),k2_relat_1(X31))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t21_relat_1])])).

cnf(c_0_20,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_21,plain,
    ( r1_tarski(X3,X4)
    | ~ r1_relset_1(X1,X2,X3,X4)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_22,negated_conjecture,
    ( r1_relset_1(esk1_0,esk3_0,esk4_0,X1)
    | ~ r1_tarski(esk4_0,X1) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_23,plain,
    ( r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_24,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(spm,[status(thm)],[c_0_20,c_0_18])).

fof(c_0_25,plain,(
    ! [X34,X35] :
      ( ( ~ m1_subset_1(X34,k1_zfmisc_1(X35))
        | r1_tarski(X34,X35) )
      & ( ~ r1_tarski(X34,X35)
        | m1_subset_1(X34,k1_zfmisc_1(X35)) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t3_subset])])).

fof(c_0_26,plain,(
    ! [X11,X12] :
      ( ( ~ v5_relat_1(X12,X11)
        | r1_tarski(k2_relat_1(X12),X11)
        | ~ v1_relat_1(X12) )
      & ( ~ r1_tarski(k2_relat_1(X12),X11)
        | v5_relat_1(X12,X11)
        | ~ v1_relat_1(X12) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).

fof(c_0_27,plain,(
    ! [X28,X29,X30] :
      ( ~ r1_tarski(X28,X29)
      | ~ r1_tarski(X29,X30)
      | r1_tarski(X28,X30) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).

cnf(c_0_28,negated_conjecture,
    ( r1_tarski(esk4_0,X1)
    | ~ r1_relset_1(esk1_0,esk3_0,esk4_0,X1) ),
    inference(spm,[status(thm)],[c_0_21,c_0_18])).

cnf(c_0_29,negated_conjecture,
    ( r1_relset_1(esk1_0,esk3_0,esk4_0,k2_zfmisc_1(k1_relat_1(esk4_0),k2_relat_1(esk4_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_24])])).

fof(c_0_30,plain,(
    ! [X32,X33] :
      ( ~ m1_subset_1(X32,X33)
      | v1_xboole_0(X33)
      | r2_hidden(X32,X33) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

cnf(c_0_31,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X2))
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_32,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

fof(c_0_33,plain,(
    ! [X50,X51,X52] :
      ( ( v4_relat_1(X52,X50)
        | ~ m1_subset_1(X52,k1_zfmisc_1(k2_zfmisc_1(X50,X51))) )
      & ( v5_relat_1(X52,X51)
        | ~ m1_subset_1(X52,k1_zfmisc_1(k2_zfmisc_1(X50,X51))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

cnf(c_0_34,plain,
    ( r1_tarski(X1,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_35,negated_conjecture,
    ( r1_tarski(esk4_0,k2_zfmisc_1(k1_relat_1(esk4_0),k2_relat_1(esk4_0))) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

fof(c_0_36,plain,(
    ! [X42] :
      ( ~ v1_xboole_0(X42)
      | X42 = k1_xboole_0 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t6_boole])])).

fof(c_0_37,plain,(
    ! [X26,X27] :
      ( ~ r2_hidden(X26,X27)
      | m1_subset_1(X26,X27) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_subset])])).

cnf(c_0_38,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_39,plain,
    ( m1_subset_1(k2_relat_1(X1),k1_zfmisc_1(X2))
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_31,c_0_32])).

cnf(c_0_40,plain,
    ( v5_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_41,plain,
    ( r1_tarski(X1,X2)
    | ~ v5_relat_1(X3,X2)
    | ~ v1_relat_1(X3)
    | ~ r1_tarski(X1,k2_relat_1(X3)) ),
    inference(spm,[status(thm)],[c_0_34,c_0_32])).

cnf(c_0_42,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(k1_relat_1(esk4_0),k2_relat_1(esk4_0)))) ),
    inference(spm,[status(thm)],[c_0_31,c_0_35])).

cnf(c_0_43,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_44,plain,
    ( v1_xboole_0(o_0_0_xboole_0) ),
    inference(split_conjunct,[status(thm)],[dt_o_0_0_xboole_0])).

cnf(c_0_45,plain,
    ( r1_tarski(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_46,plain,
    ( m1_subset_1(X1,X2)
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_47,plain,
    ( v1_xboole_0(k1_zfmisc_1(X1))
    | r2_hidden(k2_relat_1(X2),k1_zfmisc_1(X1))
    | ~ v5_relat_1(X2,X1)
    | ~ v1_relat_1(X2) ),
    inference(spm,[status(thm)],[c_0_38,c_0_39])).

cnf(c_0_48,negated_conjecture,
    ( v5_relat_1(esk4_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_40,c_0_18])).

fof(c_0_49,plain,(
    ! [X22,X23,X24,X25] :
      ( ~ r1_tarski(X22,X23)
      | ~ r1_tarski(X24,X25)
      | r1_tarski(k2_zfmisc_1(X22,X24),k2_zfmisc_1(X23,X25)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t119_zfmisc_1])])).

cnf(c_0_50,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,k2_relat_1(X3))
    | ~ v5_relat_1(X3,X2)
    | ~ v1_relat_1(X3)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_41,c_0_32])).

cnf(c_0_51,negated_conjecture,
    ( v5_relat_1(esk4_0,k2_relat_1(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_40,c_0_42])).

cnf(c_0_52,plain,
    ( k1_xboole_0 = o_0_0_xboole_0 ),
    inference(spm,[status(thm)],[c_0_43,c_0_44])).

cnf(c_0_53,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(X1,k1_zfmisc_1(X2)) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_54,negated_conjecture,
    ( v1_xboole_0(k1_zfmisc_1(esk3_0))
    | r2_hidden(k2_relat_1(esk4_0),k1_zfmisc_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_48]),c_0_24])])).

cnf(c_0_55,plain,
    ( r1_tarski(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X4))
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_49])).

cnf(c_0_56,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk4_0),X1)
    | ~ v5_relat_1(esk4_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_24])])).

cnf(c_0_57,plain,
    ( X1 = o_0_0_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(rw,[status(thm)],[c_0_43,c_0_52])).

cnf(c_0_58,negated_conjecture,
    ( v1_xboole_0(k1_zfmisc_1(esk3_0))
    | r1_tarski(k2_relat_1(esk4_0),esk3_0) ),
    inference(spm,[status(thm)],[c_0_53,c_0_54])).

cnf(c_0_59,plain,
    ( r1_tarski(X1,k2_zfmisc_1(X2,X3))
    | ~ r1_tarski(X1,k2_zfmisc_1(X4,X5))
    | ~ r1_tarski(X5,X3)
    | ~ r1_tarski(X4,X2) ),
    inference(spm,[status(thm)],[c_0_34,c_0_55])).

cnf(c_0_60,negated_conjecture,
    ( m1_subset_1(k2_relat_1(esk4_0),k1_zfmisc_1(X1))
    | ~ v5_relat_1(esk4_0,X1) ),
    inference(spm,[status(thm)],[c_0_31,c_0_56])).

cnf(c_0_61,negated_conjecture,
    ( k1_zfmisc_1(esk3_0) = o_0_0_xboole_0
    | r1_tarski(k2_relat_1(esk4_0),esk3_0) ),
    inference(spm,[status(thm)],[c_0_57,c_0_58])).

cnf(c_0_62,plain,
    ( r1_tarski(X1,k2_zfmisc_1(X2,X3))
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(k2_relat_1(X1),X3)
    | ~ r1_tarski(k1_relat_1(X1),X2) ),
    inference(spm,[status(thm)],[c_0_59,c_0_23])).

cnf(c_0_63,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk4_0),esk3_0)
    | m1_subset_1(k2_relat_1(esk4_0),o_0_0_xboole_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_60,c_0_61]),c_0_48])])).

cnf(c_0_64,negated_conjecture,
    ( r1_tarski(esk4_0,k2_zfmisc_1(X1,esk3_0))
    | m1_subset_1(k2_relat_1(esk4_0),o_0_0_xboole_0)
    | ~ r1_tarski(k1_relat_1(esk4_0),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_63]),c_0_24])])).

cnf(c_0_65,negated_conjecture,
    ( r1_tarski(k1_relat_1(esk4_0),esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_66,negated_conjecture,
    ( r1_tarski(esk4_0,k2_zfmisc_1(esk2_0,esk3_0))
    | m1_subset_1(k2_relat_1(esk4_0),o_0_0_xboole_0) ),
    inference(spm,[status(thm)],[c_0_64,c_0_65])).

cnf(c_0_67,negated_conjecture,
    ( ~ m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk2_0,esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_68,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk4_0),esk3_0)
    | r1_tarski(X1,esk3_0)
    | ~ m1_subset_1(X1,o_0_0_xboole_0) ),
    inference(spm,[status(thm)],[c_0_45,c_0_61])).

cnf(c_0_69,negated_conjecture,
    ( m1_subset_1(k2_relat_1(esk4_0),o_0_0_xboole_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_66]),c_0_67])).

cnf(c_0_70,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk4_0),esk3_0) ),
    inference(spm,[status(thm)],[c_0_68,c_0_69])).

cnf(c_0_71,negated_conjecture,
    ( r1_tarski(esk4_0,k2_zfmisc_1(X1,esk3_0))
    | ~ r1_tarski(k1_relat_1(esk4_0),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_70]),c_0_24])])).

cnf(c_0_72,negated_conjecture,
    ( r1_tarski(esk4_0,k2_zfmisc_1(esk2_0,esk3_0)) ),
    inference(spm,[status(thm)],[c_0_71,c_0_65])).

cnf(c_0_73,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_72]),c_0_67]),
    [proof]).
%------------------------------------------------------------------------------
