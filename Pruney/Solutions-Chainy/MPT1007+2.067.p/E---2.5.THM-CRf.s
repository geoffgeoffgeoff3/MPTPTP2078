%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n001.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:04:23 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   71 ( 270 expanded)
%              Number of clauses        :   42 ( 115 expanded)
%              Number of leaves         :   14 (  67 expanded)
%              Depth                    :   11
%              Number of atoms          :  202 ( 766 expanded)
%              Number of equality atoms :   68 ( 256 expanded)
%              Maximal formula depth    :   14 (   4 average)
%              Maximal clause size      :   26 (   2 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t61_funct_2,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,k1_tarski(X1),X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))) )
     => ( X2 != k1_xboole_0
       => r2_hidden(k1_funct_1(X3,X1),X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t61_funct_2)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relset_1)).

fof(cc2_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X1))
         => v1_relat_1(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relat_1)).

fof(fc6_relat_1,axiom,(
    ! [X1,X2] : v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc6_relat_1)).

fof(d1_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( ( ( X2 = k1_xboole_0
           => X1 = k1_xboole_0 )
         => ( v1_funct_2(X3,X1,X2)
          <=> X1 = k1_relset_1(X1,X2,X3) ) )
        & ( X2 = k1_xboole_0
         => ( X1 = k1_xboole_0
            | ( v1_funct_2(X3,X1,X2)
            <=> X3 = k1_xboole_0 ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_funct_2)).

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_tarski)).

fof(t209_relat_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v4_relat_1(X2,X1) )
     => X2 = k7_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t209_relat_1)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(d16_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] : k11_relat_1(X1,X2) = k9_relat_1(X1,k1_tarski(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d16_relat_1)).

fof(t117_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( r2_hidden(X1,k1_relat_1(X2))
       => k11_relat_1(X2,X1) = k1_tarski(k1_funct_1(X2,X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t117_funct_1)).

fof(t148_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => k2_relat_1(k7_relat_1(X2,X1)) = k9_relat_1(X2,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t148_relat_1)).

fof(d19_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v5_relat_1(X2,X1)
      <=> r1_tarski(k2_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d19_relat_1)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(c_0_14,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_funct_1(X3)
          & v1_funct_2(X3,k1_tarski(X1),X2)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))) )
       => ( X2 != k1_xboole_0
         => r2_hidden(k1_funct_1(X3,X1),X2) ) ) ),
    inference(assume_negation,[status(cth)],[t61_funct_2])).

fof(c_0_15,negated_conjecture,
    ( v1_funct_1(esk6_0)
    & v1_funct_2(esk6_0,k1_tarski(esk4_0),esk5_0)
    & m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk4_0),esk5_0)))
    & esk5_0 != k1_xboole_0
    & ~ r2_hidden(k1_funct_1(esk6_0,esk4_0),esk5_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_14])])])).

fof(c_0_16,plain,(
    ! [X27] : k2_tarski(X27,X27) = k1_tarski(X27) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_17,plain,(
    ! [X46,X47,X48] :
      ( ( v4_relat_1(X48,X46)
        | ~ m1_subset_1(X48,k1_zfmisc_1(k2_zfmisc_1(X46,X47))) )
      & ( v5_relat_1(X48,X47)
        | ~ m1_subset_1(X48,k1_zfmisc_1(k2_zfmisc_1(X46,X47))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

cnf(c_0_18,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk4_0),esk5_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

fof(c_0_20,plain,(
    ! [X30,X31] :
      ( ~ v1_relat_1(X30)
      | ~ m1_subset_1(X31,k1_zfmisc_1(X30))
      | v1_relat_1(X31) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).

fof(c_0_21,plain,(
    ! [X36,X37] : v1_relat_1(k2_zfmisc_1(X36,X37)) ),
    inference(variable_rename,[status(thm)],[fc6_relat_1])).

fof(c_0_22,plain,(
    ! [X59,X60,X61] :
      ( ( ~ v1_funct_2(X61,X59,X60)
        | X59 = k1_relset_1(X59,X60,X61)
        | X60 = k1_xboole_0
        | ~ m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X59,X60))) )
      & ( X59 != k1_relset_1(X59,X60,X61)
        | v1_funct_2(X61,X59,X60)
        | X60 = k1_xboole_0
        | ~ m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X59,X60))) )
      & ( ~ v1_funct_2(X61,X59,X60)
        | X59 = k1_relset_1(X59,X60,X61)
        | X59 != k1_xboole_0
        | ~ m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X59,X60))) )
      & ( X59 != k1_relset_1(X59,X60,X61)
        | v1_funct_2(X61,X59,X60)
        | X59 != k1_xboole_0
        | ~ m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X59,X60))) )
      & ( ~ v1_funct_2(X61,X59,X60)
        | X61 = k1_xboole_0
        | X59 = k1_xboole_0
        | X60 != k1_xboole_0
        | ~ m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X59,X60))) )
      & ( X61 != k1_xboole_0
        | v1_funct_2(X61,X59,X60)
        | X59 = k1_xboole_0
        | X60 != k1_xboole_0
        | ~ m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X59,X60))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_23,negated_conjecture,
    ( v1_funct_2(esk6_0,k1_tarski(esk4_0),esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

fof(c_0_24,plain,(
    ! [X20,X21,X22,X23,X24,X25] :
      ( ( ~ r2_hidden(X22,X21)
        | X22 = X20
        | X21 != k1_tarski(X20) )
      & ( X23 != X20
        | r2_hidden(X23,X21)
        | X21 != k1_tarski(X20) )
      & ( ~ r2_hidden(esk2_2(X24,X25),X25)
        | esk2_2(X24,X25) != X24
        | X25 = k1_tarski(X24) )
      & ( r2_hidden(esk2_2(X24,X25),X25)
        | esk2_2(X24,X25) = X24
        | X25 = k1_tarski(X24) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

fof(c_0_25,plain,(
    ! [X42,X43] :
      ( ~ v1_relat_1(X43)
      | ~ v4_relat_1(X43,X42)
      | X43 = k7_relat_1(X43,X42) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).

cnf(c_0_26,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_27,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(k2_tarski(esk4_0,esk4_0),esk5_0))) ),
    inference(rw,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_28,plain,
    ( v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_29,plain,
    ( v1_relat_1(k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

fof(c_0_30,plain,(
    ! [X49,X50,X51] :
      ( ~ m1_subset_1(X51,k1_zfmisc_1(k2_zfmisc_1(X49,X50)))
      | k1_relset_1(X49,X50,X51) = k1_relat_1(X51) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

cnf(c_0_31,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_32,negated_conjecture,
    ( v1_funct_2(esk6_0,k2_tarski(esk4_0,esk4_0),esk5_0) ),
    inference(rw,[status(thm)],[c_0_23,c_0_19])).

cnf(c_0_33,negated_conjecture,
    ( esk5_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_34,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k1_tarski(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_35,plain,
    ( X1 = k7_relat_1(X1,X2)
    | ~ v1_relat_1(X1)
    | ~ v4_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_36,negated_conjecture,
    ( v4_relat_1(esk6_0,k2_tarski(esk4_0,esk4_0)) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_37,negated_conjecture,
    ( v1_relat_1(esk6_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_27]),c_0_29])])).

cnf(c_0_38,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_39,negated_conjecture,
    ( k1_relset_1(k2_tarski(esk4_0,esk4_0),esk5_0,esk6_0) = k2_tarski(esk4_0,esk4_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_27]),c_0_32])]),c_0_33])).

fof(c_0_40,plain,(
    ! [X32,X33] :
      ( ~ v1_relat_1(X32)
      | k11_relat_1(X32,X33) = k9_relat_1(X32,k1_tarski(X33)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d16_relat_1])])])).

cnf(c_0_41,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_tarski(X2,X2) ),
    inference(rw,[status(thm)],[c_0_34,c_0_19])).

fof(c_0_42,plain,(
    ! [X44,X45] :
      ( ~ v1_relat_1(X45)
      | ~ v1_funct_1(X45)
      | ~ r2_hidden(X44,k1_relat_1(X45))
      | k11_relat_1(X45,X44) = k1_tarski(k1_funct_1(X45,X44)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t117_funct_1])])).

fof(c_0_43,plain,(
    ! [X38,X39] :
      ( ~ v1_relat_1(X39)
      | k2_relat_1(k7_relat_1(X39,X38)) = k9_relat_1(X39,X38) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).

cnf(c_0_44,negated_conjecture,
    ( k7_relat_1(esk6_0,k2_tarski(esk4_0,esk4_0)) = esk6_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_36]),c_0_37])])).

cnf(c_0_45,negated_conjecture,
    ( k2_tarski(esk4_0,esk4_0) = k1_relat_1(esk6_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_27]),c_0_39])).

cnf(c_0_46,plain,
    ( k11_relat_1(X1,X2) = k9_relat_1(X1,k1_tarski(X2))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

fof(c_0_47,plain,(
    ! [X34,X35] :
      ( ( ~ v5_relat_1(X35,X34)
        | r1_tarski(k2_relat_1(X35),X34)
        | ~ v1_relat_1(X35) )
      & ( ~ r1_tarski(k2_relat_1(X35),X34)
        | v5_relat_1(X35,X34)
        | ~ v1_relat_1(X35) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).

cnf(c_0_48,plain,
    ( v5_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_49,plain,
    ( r2_hidden(X1,X2)
    | X2 != k2_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_41])).

cnf(c_0_50,plain,
    ( k11_relat_1(X1,X2) = k1_tarski(k1_funct_1(X1,X2))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ r2_hidden(X2,k1_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_51,plain,
    ( k2_relat_1(k7_relat_1(X1,X2)) = k9_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_52,negated_conjecture,
    ( k7_relat_1(esk6_0,k1_relat_1(esk6_0)) = esk6_0 ),
    inference(rw,[status(thm)],[c_0_44,c_0_45])).

cnf(c_0_53,plain,
    ( k11_relat_1(X1,X2) = k9_relat_1(X1,k2_tarski(X2,X2))
    | ~ v1_relat_1(X1) ),
    inference(rw,[status(thm)],[c_0_46,c_0_19])).

fof(c_0_54,plain,(
    ! [X8,X9,X10,X11,X12] :
      ( ( ~ r1_tarski(X8,X9)
        | ~ r2_hidden(X10,X8)
        | r2_hidden(X10,X9) )
      & ( r2_hidden(esk1_2(X11,X12),X11)
        | r1_tarski(X11,X12) )
      & ( ~ r2_hidden(esk1_2(X11,X12),X12)
        | r1_tarski(X11,X12) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_55,plain,
    ( r1_tarski(k2_relat_1(X1),X2)
    | ~ v5_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_47])).

cnf(c_0_56,negated_conjecture,
    ( v5_relat_1(esk6_0,esk5_0) ),
    inference(spm,[status(thm)],[c_0_48,c_0_27])).

cnf(c_0_57,plain,
    ( r2_hidden(X1,k2_tarski(X1,X1)) ),
    inference(er,[status(thm)],[c_0_49])).

cnf(c_0_58,plain,
    ( k11_relat_1(X1,X2) = k2_tarski(k1_funct_1(X1,X2),k1_funct_1(X1,X2))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ r2_hidden(X2,k1_relat_1(X1)) ),
    inference(rw,[status(thm)],[c_0_50,c_0_19])).

cnf(c_0_59,negated_conjecture,
    ( k9_relat_1(esk6_0,k1_relat_1(esk6_0)) = k2_relat_1(esk6_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_52]),c_0_37])])).

cnf(c_0_60,negated_conjecture,
    ( k9_relat_1(X1,k1_relat_1(esk6_0)) = k11_relat_1(X1,esk4_0)
    | ~ v1_relat_1(X1) ),
    inference(spm,[status(thm)],[c_0_53,c_0_45])).

cnf(c_0_61,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_54])).

cnf(c_0_62,negated_conjecture,
    ( r1_tarski(k2_relat_1(esk6_0),esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_56]),c_0_37])])).

cnf(c_0_63,plain,
    ( r2_hidden(k1_funct_1(X1,X2),k11_relat_1(X1,X2))
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ r2_hidden(X2,k1_relat_1(X1)) ),
    inference(spm,[status(thm)],[c_0_57,c_0_58])).

cnf(c_0_64,negated_conjecture,
    ( k11_relat_1(esk6_0,esk4_0) = k2_relat_1(esk6_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_60]),c_0_37])])).

cnf(c_0_65,negated_conjecture,
    ( v1_funct_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_66,negated_conjecture,
    ( r2_hidden(esk4_0,k1_relat_1(esk6_0)) ),
    inference(spm,[status(thm)],[c_0_57,c_0_45])).

cnf(c_0_67,negated_conjecture,
    ( r2_hidden(X1,esk5_0)
    | ~ r2_hidden(X1,k2_relat_1(esk6_0)) ),
    inference(spm,[status(thm)],[c_0_61,c_0_62])).

cnf(c_0_68,negated_conjecture,
    ( r2_hidden(k1_funct_1(esk6_0,esk4_0),k2_relat_1(esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63,c_0_64]),c_0_65]),c_0_37]),c_0_66])])).

cnf(c_0_69,negated_conjecture,
    ( ~ r2_hidden(k1_funct_1(esk6_0,esk4_0),esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_70,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_67,c_0_68]),c_0_69]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.00/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n001.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 10:10:29 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  # Version: 2.5pre002
% 0.12/0.33  # No SInE strategy applied
% 0.12/0.33  # Trying AutoSched0 for 299 seconds
% 0.19/0.49  # AutoSched0-Mode selected heuristic G_E___107_C36_F1_PI_AE_Q4_CS_SP_PS_S0Y
% 0.19/0.49  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.19/0.49  #
% 0.19/0.49  # Preprocessing time       : 0.029 s
% 0.19/0.49  # Presaturation interreduction done
% 0.19/0.49  
% 0.19/0.49  # Proof found!
% 0.19/0.49  # SZS status Theorem
% 0.19/0.49  # SZS output start CNFRefutation
% 0.19/0.49  fof(t61_funct_2, conjecture, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,k1_tarski(X1),X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))))=>(X2!=k1_xboole_0=>r2_hidden(k1_funct_1(X3,X1),X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t61_funct_2)).
% 0.19/0.49  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.19/0.49  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.19/0.49  fof(cc2_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>v1_relat_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relat_1)).
% 0.19/0.49  fof(fc6_relat_1, axiom, ![X1, X2]:v1_relat_1(k2_zfmisc_1(X1,X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc6_relat_1)).
% 0.19/0.49  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_funct_2)).
% 0.19/0.49  fof(d1_tarski, axiom, ![X1, X2]:(X2=k1_tarski(X1)<=>![X3]:(r2_hidden(X3,X2)<=>X3=X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_tarski)).
% 0.19/0.49  fof(t209_relat_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v4_relat_1(X2,X1))=>X2=k7_relat_1(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t209_relat_1)).
% 0.19/0.49  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.19/0.49  fof(d16_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:k11_relat_1(X1,X2)=k9_relat_1(X1,k1_tarski(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d16_relat_1)).
% 0.19/0.49  fof(t117_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(r2_hidden(X1,k1_relat_1(X2))=>k11_relat_1(X2,X1)=k1_tarski(k1_funct_1(X2,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t117_funct_1)).
% 0.19/0.49  fof(t148_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>k2_relat_1(k7_relat_1(X2,X1))=k9_relat_1(X2,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t148_relat_1)).
% 0.19/0.49  fof(d19_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v5_relat_1(X2,X1)<=>r1_tarski(k2_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d19_relat_1)).
% 0.19/0.49  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_tarski)).
% 0.19/0.49  fof(c_0_14, negated_conjecture, ~(![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,k1_tarski(X1),X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(X1),X2))))=>(X2!=k1_xboole_0=>r2_hidden(k1_funct_1(X3,X1),X2)))), inference(assume_negation,[status(cth)],[t61_funct_2])).
% 0.19/0.49  fof(c_0_15, negated_conjecture, (((v1_funct_1(esk6_0)&v1_funct_2(esk6_0,k1_tarski(esk4_0),esk5_0))&m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk4_0),esk5_0))))&(esk5_0!=k1_xboole_0&~r2_hidden(k1_funct_1(esk6_0,esk4_0),esk5_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_14])])])).
% 0.19/0.49  fof(c_0_16, plain, ![X27]:k2_tarski(X27,X27)=k1_tarski(X27), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.19/0.49  fof(c_0_17, plain, ![X46, X47, X48]:((v4_relat_1(X48,X46)|~m1_subset_1(X48,k1_zfmisc_1(k2_zfmisc_1(X46,X47))))&(v5_relat_1(X48,X47)|~m1_subset_1(X48,k1_zfmisc_1(k2_zfmisc_1(X46,X47))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.19/0.49  cnf(c_0_18, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(k1_tarski(esk4_0),esk5_0)))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.49  cnf(c_0_19, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.19/0.49  fof(c_0_20, plain, ![X30, X31]:(~v1_relat_1(X30)|(~m1_subset_1(X31,k1_zfmisc_1(X30))|v1_relat_1(X31))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).
% 0.19/0.49  fof(c_0_21, plain, ![X36, X37]:v1_relat_1(k2_zfmisc_1(X36,X37)), inference(variable_rename,[status(thm)],[fc6_relat_1])).
% 0.19/0.49  fof(c_0_22, plain, ![X59, X60, X61]:((((~v1_funct_2(X61,X59,X60)|X59=k1_relset_1(X59,X60,X61)|X60=k1_xboole_0|~m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X59,X60))))&(X59!=k1_relset_1(X59,X60,X61)|v1_funct_2(X61,X59,X60)|X60=k1_xboole_0|~m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X59,X60)))))&((~v1_funct_2(X61,X59,X60)|X59=k1_relset_1(X59,X60,X61)|X59!=k1_xboole_0|~m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X59,X60))))&(X59!=k1_relset_1(X59,X60,X61)|v1_funct_2(X61,X59,X60)|X59!=k1_xboole_0|~m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X59,X60))))))&((~v1_funct_2(X61,X59,X60)|X61=k1_xboole_0|X59=k1_xboole_0|X60!=k1_xboole_0|~m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X59,X60))))&(X61!=k1_xboole_0|v1_funct_2(X61,X59,X60)|X59=k1_xboole_0|X60!=k1_xboole_0|~m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X59,X60)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.19/0.49  cnf(c_0_23, negated_conjecture, (v1_funct_2(esk6_0,k1_tarski(esk4_0),esk5_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.49  fof(c_0_24, plain, ![X20, X21, X22, X23, X24, X25]:(((~r2_hidden(X22,X21)|X22=X20|X21!=k1_tarski(X20))&(X23!=X20|r2_hidden(X23,X21)|X21!=k1_tarski(X20)))&((~r2_hidden(esk2_2(X24,X25),X25)|esk2_2(X24,X25)!=X24|X25=k1_tarski(X24))&(r2_hidden(esk2_2(X24,X25),X25)|esk2_2(X24,X25)=X24|X25=k1_tarski(X24)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).
% 0.19/0.49  fof(c_0_25, plain, ![X42, X43]:(~v1_relat_1(X43)|~v4_relat_1(X43,X42)|X43=k7_relat_1(X43,X42)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t209_relat_1])])).
% 0.19/0.49  cnf(c_0_26, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.49  cnf(c_0_27, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(k2_tarski(esk4_0,esk4_0),esk5_0)))), inference(rw,[status(thm)],[c_0_18, c_0_19])).
% 0.19/0.49  cnf(c_0_28, plain, (v1_relat_1(X2)|~v1_relat_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.49  cnf(c_0_29, plain, (v1_relat_1(k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.49  fof(c_0_30, plain, ![X49, X50, X51]:(~m1_subset_1(X51,k1_zfmisc_1(k2_zfmisc_1(X49,X50)))|k1_relset_1(X49,X50,X51)=k1_relat_1(X51)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.19/0.49  cnf(c_0_31, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.49  cnf(c_0_32, negated_conjecture, (v1_funct_2(esk6_0,k2_tarski(esk4_0,esk4_0),esk5_0)), inference(rw,[status(thm)],[c_0_23, c_0_19])).
% 0.19/0.49  cnf(c_0_33, negated_conjecture, (esk5_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.49  cnf(c_0_34, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k1_tarski(X2)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.49  cnf(c_0_35, plain, (X1=k7_relat_1(X1,X2)|~v1_relat_1(X1)|~v4_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.49  cnf(c_0_36, negated_conjecture, (v4_relat_1(esk6_0,k2_tarski(esk4_0,esk4_0))), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 0.19/0.49  cnf(c_0_37, negated_conjecture, (v1_relat_1(esk6_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_27]), c_0_29])])).
% 0.19/0.49  cnf(c_0_38, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.19/0.49  cnf(c_0_39, negated_conjecture, (k1_relset_1(k2_tarski(esk4_0,esk4_0),esk5_0,esk6_0)=k2_tarski(esk4_0,esk4_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_27]), c_0_32])]), c_0_33])).
% 0.19/0.49  fof(c_0_40, plain, ![X32, X33]:(~v1_relat_1(X32)|k11_relat_1(X32,X33)=k9_relat_1(X32,k1_tarski(X33))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d16_relat_1])])])).
% 0.19/0.49  cnf(c_0_41, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k2_tarski(X2,X2)), inference(rw,[status(thm)],[c_0_34, c_0_19])).
% 0.19/0.49  fof(c_0_42, plain, ![X44, X45]:(~v1_relat_1(X45)|~v1_funct_1(X45)|(~r2_hidden(X44,k1_relat_1(X45))|k11_relat_1(X45,X44)=k1_tarski(k1_funct_1(X45,X44)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t117_funct_1])])).
% 0.19/0.49  fof(c_0_43, plain, ![X38, X39]:(~v1_relat_1(X39)|k2_relat_1(k7_relat_1(X39,X38))=k9_relat_1(X39,X38)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t148_relat_1])])).
% 0.19/0.49  cnf(c_0_44, negated_conjecture, (k7_relat_1(esk6_0,k2_tarski(esk4_0,esk4_0))=esk6_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_36]), c_0_37])])).
% 0.19/0.49  cnf(c_0_45, negated_conjecture, (k2_tarski(esk4_0,esk4_0)=k1_relat_1(esk6_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_27]), c_0_39])).
% 0.19/0.49  cnf(c_0_46, plain, (k11_relat_1(X1,X2)=k9_relat_1(X1,k1_tarski(X2))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.19/0.49  fof(c_0_47, plain, ![X34, X35]:((~v5_relat_1(X35,X34)|r1_tarski(k2_relat_1(X35),X34)|~v1_relat_1(X35))&(~r1_tarski(k2_relat_1(X35),X34)|v5_relat_1(X35,X34)|~v1_relat_1(X35))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d19_relat_1])])])).
% 0.19/0.49  cnf(c_0_48, plain, (v5_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.19/0.49  cnf(c_0_49, plain, (r2_hidden(X1,X2)|X2!=k2_tarski(X1,X1)), inference(er,[status(thm)],[c_0_41])).
% 0.19/0.49  cnf(c_0_50, plain, (k11_relat_1(X1,X2)=k1_tarski(k1_funct_1(X1,X2))|~v1_relat_1(X1)|~v1_funct_1(X1)|~r2_hidden(X2,k1_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.19/0.49  cnf(c_0_51, plain, (k2_relat_1(k7_relat_1(X1,X2))=k9_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.19/0.49  cnf(c_0_52, negated_conjecture, (k7_relat_1(esk6_0,k1_relat_1(esk6_0))=esk6_0), inference(rw,[status(thm)],[c_0_44, c_0_45])).
% 0.19/0.49  cnf(c_0_53, plain, (k11_relat_1(X1,X2)=k9_relat_1(X1,k2_tarski(X2,X2))|~v1_relat_1(X1)), inference(rw,[status(thm)],[c_0_46, c_0_19])).
% 0.19/0.49  fof(c_0_54, plain, ![X8, X9, X10, X11, X12]:((~r1_tarski(X8,X9)|(~r2_hidden(X10,X8)|r2_hidden(X10,X9)))&((r2_hidden(esk1_2(X11,X12),X11)|r1_tarski(X11,X12))&(~r2_hidden(esk1_2(X11,X12),X12)|r1_tarski(X11,X12)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.19/0.49  cnf(c_0_55, plain, (r1_tarski(k2_relat_1(X1),X2)|~v5_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_47])).
% 0.19/0.49  cnf(c_0_56, negated_conjecture, (v5_relat_1(esk6_0,esk5_0)), inference(spm,[status(thm)],[c_0_48, c_0_27])).
% 0.19/0.49  cnf(c_0_57, plain, (r2_hidden(X1,k2_tarski(X1,X1))), inference(er,[status(thm)],[c_0_49])).
% 0.19/0.49  cnf(c_0_58, plain, (k11_relat_1(X1,X2)=k2_tarski(k1_funct_1(X1,X2),k1_funct_1(X1,X2))|~v1_relat_1(X1)|~v1_funct_1(X1)|~r2_hidden(X2,k1_relat_1(X1))), inference(rw,[status(thm)],[c_0_50, c_0_19])).
% 0.19/0.49  cnf(c_0_59, negated_conjecture, (k9_relat_1(esk6_0,k1_relat_1(esk6_0))=k2_relat_1(esk6_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_52]), c_0_37])])).
% 0.19/0.49  cnf(c_0_60, negated_conjecture, (k9_relat_1(X1,k1_relat_1(esk6_0))=k11_relat_1(X1,esk4_0)|~v1_relat_1(X1)), inference(spm,[status(thm)],[c_0_53, c_0_45])).
% 0.19/0.49  cnf(c_0_61, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_54])).
% 0.19/0.49  cnf(c_0_62, negated_conjecture, (r1_tarski(k2_relat_1(esk6_0),esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_56]), c_0_37])])).
% 0.19/0.49  cnf(c_0_63, plain, (r2_hidden(k1_funct_1(X1,X2),k11_relat_1(X1,X2))|~v1_funct_1(X1)|~v1_relat_1(X1)|~r2_hidden(X2,k1_relat_1(X1))), inference(spm,[status(thm)],[c_0_57, c_0_58])).
% 0.19/0.49  cnf(c_0_64, negated_conjecture, (k11_relat_1(esk6_0,esk4_0)=k2_relat_1(esk6_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_60]), c_0_37])])).
% 0.19/0.49  cnf(c_0_65, negated_conjecture, (v1_funct_1(esk6_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.49  cnf(c_0_66, negated_conjecture, (r2_hidden(esk4_0,k1_relat_1(esk6_0))), inference(spm,[status(thm)],[c_0_57, c_0_45])).
% 0.19/0.49  cnf(c_0_67, negated_conjecture, (r2_hidden(X1,esk5_0)|~r2_hidden(X1,k2_relat_1(esk6_0))), inference(spm,[status(thm)],[c_0_61, c_0_62])).
% 0.19/0.49  cnf(c_0_68, negated_conjecture, (r2_hidden(k1_funct_1(esk6_0,esk4_0),k2_relat_1(esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63, c_0_64]), c_0_65]), c_0_37]), c_0_66])])).
% 0.19/0.49  cnf(c_0_69, negated_conjecture, (~r2_hidden(k1_funct_1(esk6_0,esk4_0),esk5_0)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.49  cnf(c_0_70, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_67, c_0_68]), c_0_69]), ['proof']).
% 0.19/0.49  # SZS output end CNFRefutation
% 0.19/0.49  # Proof object total steps             : 71
% 0.19/0.49  # Proof object clause steps            : 42
% 0.19/0.49  # Proof object formula steps           : 29
% 0.19/0.49  # Proof object conjectures             : 25
% 0.19/0.49  # Proof object clause conjectures      : 22
% 0.19/0.49  # Proof object formula conjectures     : 3
% 0.19/0.49  # Proof object initial clauses used    : 19
% 0.19/0.49  # Proof object initial formulas used   : 14
% 0.19/0.49  # Proof object generating inferences   : 16
% 0.19/0.49  # Proof object simplifying inferences  : 26
% 0.19/0.49  # Training examples: 0 positive, 0 negative
% 0.19/0.49  # Parsed axioms                        : 21
% 0.19/0.49  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.49  # Initial clauses                      : 41
% 0.19/0.49  # Removed in clause preprocessing      : 2
% 0.19/0.49  # Initial clauses in saturation        : 39
% 0.19/0.49  # Processed clauses                    : 433
% 0.19/0.49  # ...of these trivial                  : 12
% 0.19/0.49  # ...subsumed                          : 160
% 0.19/0.49  # ...remaining for further processing  : 261
% 0.19/0.49  # Other redundant clauses eliminated   : 79
% 0.19/0.49  # Clauses deleted for lack of memory   : 0
% 0.19/0.49  # Backward-subsumed                    : 1
% 0.19/0.49  # Backward-rewritten                   : 6
% 0.19/0.49  # Generated clauses                    : 4200
% 0.19/0.49  # ...of the previous two non-trivial   : 3994
% 0.19/0.49  # Contextual simplify-reflections      : 2
% 0.19/0.49  # Paramodulations                      : 4097
% 0.19/0.49  # Factorizations                       : 13
% 0.19/0.49  # Equation resolutions                 : 89
% 0.19/0.49  # Propositional unsat checks           : 0
% 0.19/0.49  #    Propositional check models        : 0
% 0.19/0.49  #    Propositional check unsatisfiable : 0
% 0.19/0.49  #    Propositional clauses             : 0
% 0.19/0.49  #    Propositional clauses after purity: 0
% 0.19/0.49  #    Propositional unsat core size     : 0
% 0.19/0.49  #    Propositional preprocessing time  : 0.000
% 0.19/0.49  #    Propositional encoding time       : 0.000
% 0.19/0.49  #    Propositional solver time         : 0.000
% 0.19/0.49  #    Success case prop preproc time    : 0.000
% 0.19/0.49  #    Success case prop encoding time   : 0.000
% 0.19/0.49  #    Success case prop solver time     : 0.000
% 0.19/0.49  # Current number of processed clauses  : 211
% 0.19/0.49  #    Positive orientable unit clauses  : 23
% 0.19/0.49  #    Positive unorientable unit clauses: 0
% 0.19/0.49  #    Negative unit clauses             : 6
% 0.19/0.49  #    Non-unit-clauses                  : 182
% 0.19/0.49  # Current number of unprocessed clauses: 3625
% 0.19/0.49  # ...number of literals in the above   : 23377
% 0.19/0.49  # Current number of archived formulas  : 0
% 0.19/0.49  # Current number of archived clauses   : 48
% 0.19/0.49  # Clause-clause subsumption calls (NU) : 5137
% 0.19/0.49  # Rec. Clause-clause subsumption calls : 2046
% 0.19/0.49  # Non-unit clause-clause subsumptions  : 135
% 0.19/0.49  # Unit Clause-clause subsumption calls : 395
% 0.19/0.49  # Rewrite failures with RHS unbound    : 0
% 0.19/0.49  # BW rewrite match attempts            : 9
% 0.19/0.49  # BW rewrite match successes           : 2
% 0.19/0.49  # Condensation attempts                : 0
% 0.19/0.49  # Condensation successes               : 0
% 0.19/0.49  # Termbank termtop insertions          : 78384
% 0.19/0.49  
% 0.19/0.49  # -------------------------------------------------
% 0.19/0.49  # User time                : 0.152 s
% 0.19/0.49  # System time              : 0.007 s
% 0.19/0.49  # Total time               : 0.159 s
% 0.19/0.49  # Maximum resident set size: 1600 pages
%------------------------------------------------------------------------------
