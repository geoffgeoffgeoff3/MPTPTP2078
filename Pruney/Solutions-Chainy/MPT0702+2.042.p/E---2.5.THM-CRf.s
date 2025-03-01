%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n020.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:55:13 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   53 ( 149 expanded)
%              Number of clauses        :   32 (  54 expanded)
%              Number of leaves         :   10 (  36 expanded)
%              Depth                    :   12
%              Number of atoms          :  138 ( 597 expanded)
%              Number of equality atoms :   17 (  21 expanded)
%              Maximal formula depth    :    9 (   4 average)
%              Maximal clause size      :    6 (   2 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t157_funct_1,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_relat_1(X3)
        & v1_funct_1(X3) )
     => ( ( r1_tarski(k9_relat_1(X3,X1),k9_relat_1(X3,X2))
          & r1_tarski(X1,k1_relat_1(X3))
          & v2_funct_1(X3) )
       => r1_tarski(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t157_funct_1)).

fof(t155_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( v2_funct_1(X2)
       => k10_relat_1(X2,X1) = k9_relat_1(k2_funct_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t155_funct_1)).

fof(dt_k2_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v1_relat_1(k2_funct_1(X1))
        & v1_funct_1(k2_funct_1(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_funct_1)).

fof(t144_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => r1_tarski(k9_relat_1(X2,X1),k2_relat_1(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t144_relat_1)).

fof(t169_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k10_relat_1(X1,k2_relat_1(X1)) = k1_relat_1(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t169_relat_1)).

fof(t154_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( v2_funct_1(X2)
       => k9_relat_1(X2,X1) = k10_relat_1(k2_funct_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t154_funct_1)).

fof(t1_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X2,X3) )
     => r1_tarski(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_xboole_1)).

fof(t147_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( r1_tarski(X1,k2_relat_1(X2))
       => k9_relat_1(X2,k10_relat_1(X2,X1)) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t147_funct_1)).

fof(t152_funct_1,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v1_funct_1(X2) )
     => ( v2_funct_1(X2)
       => r1_tarski(k10_relat_1(X2,k9_relat_1(X2,X1)),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t152_funct_1)).

fof(t178_relat_1,axiom,(
    ! [X1,X2,X3] :
      ( v1_relat_1(X3)
     => ( r1_tarski(X1,X2)
       => r1_tarski(k10_relat_1(X3,X1),k10_relat_1(X3,X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t178_relat_1)).

fof(c_0_10,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_relat_1(X3)
          & v1_funct_1(X3) )
       => ( ( r1_tarski(k9_relat_1(X3,X1),k9_relat_1(X3,X2))
            & r1_tarski(X1,k1_relat_1(X3))
            & v2_funct_1(X3) )
         => r1_tarski(X1,X2) ) ) ),
    inference(assume_negation,[status(cth)],[t157_funct_1])).

fof(c_0_11,plain,(
    ! [X20,X21] :
      ( ~ v1_relat_1(X21)
      | ~ v1_funct_1(X21)
      | ~ v2_funct_1(X21)
      | k10_relat_1(X21,X20) = k9_relat_1(k2_funct_1(X21),X20) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t155_funct_1])])).

fof(c_0_12,negated_conjecture,
    ( v1_relat_1(esk3_0)
    & v1_funct_1(esk3_0)
    & r1_tarski(k9_relat_1(esk3_0,esk1_0),k9_relat_1(esk3_0,esk2_0))
    & r1_tarski(esk1_0,k1_relat_1(esk3_0))
    & v2_funct_1(esk3_0)
    & ~ r1_tarski(esk1_0,esk2_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_10])])])).

fof(c_0_13,plain,(
    ! [X13] :
      ( ( v1_relat_1(k2_funct_1(X13))
        | ~ v1_relat_1(X13)
        | ~ v1_funct_1(X13) )
      & ( v1_funct_1(k2_funct_1(X13))
        | ~ v1_relat_1(X13)
        | ~ v1_funct_1(X13) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).

fof(c_0_14,plain,(
    ! [X7,X8] :
      ( ~ v1_relat_1(X8)
      | r1_tarski(k9_relat_1(X8,X7),k2_relat_1(X8)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t144_relat_1])])).

cnf(c_0_15,plain,
    ( k10_relat_1(X1,X2) = k9_relat_1(k2_funct_1(X1),X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_16,negated_conjecture,
    ( v2_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_17,negated_conjecture,
    ( v1_funct_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_18,negated_conjecture,
    ( v1_relat_1(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_19,plain,
    ( v1_relat_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_20,plain,(
    ! [X9] :
      ( ~ v1_relat_1(X9)
      | k10_relat_1(X9,k2_relat_1(X9)) = k1_relat_1(X9) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t169_relat_1])])).

cnf(c_0_21,plain,
    ( r1_tarski(k9_relat_1(X1,X2),k2_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_22,negated_conjecture,
    ( k9_relat_1(k2_funct_1(esk3_0),X1) = k10_relat_1(esk3_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15,c_0_16]),c_0_17]),c_0_18])])).

cnf(c_0_23,negated_conjecture,
    ( v1_relat_1(k2_funct_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_17]),c_0_18])])).

cnf(c_0_24,plain,
    ( k10_relat_1(X1,k2_relat_1(X1)) = k1_relat_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

fof(c_0_25,plain,(
    ! [X18,X19] :
      ( ~ v1_relat_1(X19)
      | ~ v1_funct_1(X19)
      | ~ v2_funct_1(X19)
      | k9_relat_1(X19,X18) = k10_relat_1(k2_funct_1(X19),X18) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t154_funct_1])])).

fof(c_0_26,plain,(
    ! [X4,X5,X6] :
      ( ~ r1_tarski(X4,X5)
      | ~ r1_tarski(X5,X6)
      | r1_tarski(X4,X6) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).

cnf(c_0_27,negated_conjecture,
    ( r1_tarski(k10_relat_1(esk3_0,X1),k2_relat_1(k2_funct_1(esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21,c_0_22]),c_0_23])])).

cnf(c_0_28,negated_conjecture,
    ( k10_relat_1(esk3_0,k2_relat_1(esk3_0)) = k1_relat_1(esk3_0) ),
    inference(spm,[status(thm)],[c_0_24,c_0_18])).

fof(c_0_29,plain,(
    ! [X14,X15] :
      ( ~ v1_relat_1(X15)
      | ~ v1_funct_1(X15)
      | ~ r1_tarski(X14,k2_relat_1(X15))
      | k9_relat_1(X15,k10_relat_1(X15,X14)) = X14 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t147_funct_1])])).

cnf(c_0_30,plain,
    ( v1_funct_1(k2_funct_1(X1))
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_31,plain,
    ( k9_relat_1(X1,X2) = k10_relat_1(k2_funct_1(X1),X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_25])).

cnf(c_0_32,plain,
    ( r1_tarski(X1,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

cnf(c_0_33,negated_conjecture,
    ( r1_tarski(k1_relat_1(esk3_0),k2_relat_1(k2_funct_1(esk3_0))) ),
    inference(spm,[status(thm)],[c_0_27,c_0_28])).

cnf(c_0_34,plain,
    ( k9_relat_1(X1,k10_relat_1(X1,X2)) = X2
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ r1_tarski(X2,k2_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_35,negated_conjecture,
    ( v1_funct_1(k2_funct_1(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_17]),c_0_18])])).

cnf(c_0_36,negated_conjecture,
    ( k10_relat_1(k2_funct_1(esk3_0),X1) = k9_relat_1(esk3_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_16]),c_0_17]),c_0_18])])).

cnf(c_0_37,negated_conjecture,
    ( r1_tarski(X1,k2_relat_1(k2_funct_1(esk3_0)))
    | ~ r1_tarski(X1,k1_relat_1(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_32,c_0_33])).

cnf(c_0_38,negated_conjecture,
    ( r1_tarski(esk1_0,k1_relat_1(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_39,plain,(
    ! [X16,X17] :
      ( ~ v1_relat_1(X17)
      | ~ v1_funct_1(X17)
      | ~ v2_funct_1(X17)
      | r1_tarski(k10_relat_1(X17,k9_relat_1(X17,X16)),X16) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t152_funct_1])])).

fof(c_0_40,plain,(
    ! [X10,X11,X12] :
      ( ~ v1_relat_1(X12)
      | ~ r1_tarski(X10,X11)
      | r1_tarski(k10_relat_1(X12,X10),k10_relat_1(X12,X11)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t178_relat_1])])).

cnf(c_0_41,negated_conjecture,
    ( k10_relat_1(esk3_0,k9_relat_1(esk3_0,X1)) = X1
    | ~ r1_tarski(X1,k2_relat_1(k2_funct_1(esk3_0))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_35]),c_0_23])]),c_0_36]),c_0_22])).

cnf(c_0_42,negated_conjecture,
    ( r1_tarski(esk1_0,k2_relat_1(k2_funct_1(esk3_0))) ),
    inference(spm,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_43,plain,
    ( r1_tarski(k10_relat_1(X1,k9_relat_1(X1,X2)),X2)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1)
    | ~ v2_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_44,plain,
    ( r1_tarski(k10_relat_1(X1,X2),k10_relat_1(X1,X3))
    | ~ v1_relat_1(X1)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

cnf(c_0_45,negated_conjecture,
    ( k10_relat_1(esk3_0,k9_relat_1(esk3_0,esk1_0)) = esk1_0 ),
    inference(spm,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_46,negated_conjecture,
    ( r1_tarski(k10_relat_1(esk3_0,k9_relat_1(esk3_0,X1)),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_16]),c_0_17]),c_0_18])])).

cnf(c_0_47,negated_conjecture,
    ( r1_tarski(esk1_0,k10_relat_1(esk3_0,X1))
    | ~ r1_tarski(k9_relat_1(esk3_0,esk1_0),X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_45]),c_0_18])])).

cnf(c_0_48,negated_conjecture,
    ( r1_tarski(k9_relat_1(esk3_0,esk1_0),k9_relat_1(esk3_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_49,negated_conjecture,
    ( r1_tarski(X1,X2)
    | ~ r1_tarski(X1,k10_relat_1(esk3_0,k9_relat_1(esk3_0,X2))) ),
    inference(spm,[status(thm)],[c_0_32,c_0_46])).

cnf(c_0_50,negated_conjecture,
    ( r1_tarski(esk1_0,k10_relat_1(esk3_0,k9_relat_1(esk3_0,esk2_0))) ),
    inference(spm,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_51,negated_conjecture,
    ( ~ r1_tarski(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_52,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_50]),c_0_51]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n020.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 18:40:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.40  # AutoSched0-Mode selected heuristic G_E___107_C00_02_nc_F1_PI_AE_Q4_CS_SP_PS_S00EN
% 0.19/0.40  # and selection function PSelectSmallestOrientable.
% 0.19/0.40  #
% 0.19/0.40  # Preprocessing time       : 0.047 s
% 0.19/0.40  # Presaturation interreduction done
% 0.19/0.40  
% 0.19/0.40  # Proof found!
% 0.19/0.40  # SZS status Theorem
% 0.19/0.40  # SZS output start CNFRefutation
% 0.19/0.40  fof(t157_funct_1, conjecture, ![X1, X2, X3]:((v1_relat_1(X3)&v1_funct_1(X3))=>(((r1_tarski(k9_relat_1(X3,X1),k9_relat_1(X3,X2))&r1_tarski(X1,k1_relat_1(X3)))&v2_funct_1(X3))=>r1_tarski(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t157_funct_1)).
% 0.19/0.40  fof(t155_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(v2_funct_1(X2)=>k10_relat_1(X2,X1)=k9_relat_1(k2_funct_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t155_funct_1)).
% 0.19/0.40  fof(dt_k2_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v1_relat_1(k2_funct_1(X1))&v1_funct_1(k2_funct_1(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_funct_1)).
% 0.19/0.40  fof(t144_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>r1_tarski(k9_relat_1(X2,X1),k2_relat_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t144_relat_1)).
% 0.19/0.40  fof(t169_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k10_relat_1(X1,k2_relat_1(X1))=k1_relat_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t169_relat_1)).
% 0.19/0.40  fof(t154_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(v2_funct_1(X2)=>k9_relat_1(X2,X1)=k10_relat_1(k2_funct_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t154_funct_1)).
% 0.19/0.40  fof(t1_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_tarski(X2,X3))=>r1_tarski(X1,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_xboole_1)).
% 0.19/0.40  fof(t147_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(r1_tarski(X1,k2_relat_1(X2))=>k9_relat_1(X2,k10_relat_1(X2,X1))=X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t147_funct_1)).
% 0.19/0.40  fof(t152_funct_1, axiom, ![X1, X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(v2_funct_1(X2)=>r1_tarski(k10_relat_1(X2,k9_relat_1(X2,X1)),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t152_funct_1)).
% 0.19/0.40  fof(t178_relat_1, axiom, ![X1, X2, X3]:(v1_relat_1(X3)=>(r1_tarski(X1,X2)=>r1_tarski(k10_relat_1(X3,X1),k10_relat_1(X3,X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t178_relat_1)).
% 0.19/0.40  fof(c_0_10, negated_conjecture, ~(![X1, X2, X3]:((v1_relat_1(X3)&v1_funct_1(X3))=>(((r1_tarski(k9_relat_1(X3,X1),k9_relat_1(X3,X2))&r1_tarski(X1,k1_relat_1(X3)))&v2_funct_1(X3))=>r1_tarski(X1,X2)))), inference(assume_negation,[status(cth)],[t157_funct_1])).
% 0.19/0.40  fof(c_0_11, plain, ![X20, X21]:(~v1_relat_1(X21)|~v1_funct_1(X21)|(~v2_funct_1(X21)|k10_relat_1(X21,X20)=k9_relat_1(k2_funct_1(X21),X20))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t155_funct_1])])).
% 0.19/0.40  fof(c_0_12, negated_conjecture, ((v1_relat_1(esk3_0)&v1_funct_1(esk3_0))&(((r1_tarski(k9_relat_1(esk3_0,esk1_0),k9_relat_1(esk3_0,esk2_0))&r1_tarski(esk1_0,k1_relat_1(esk3_0)))&v2_funct_1(esk3_0))&~r1_tarski(esk1_0,esk2_0))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_10])])])).
% 0.19/0.40  fof(c_0_13, plain, ![X13]:((v1_relat_1(k2_funct_1(X13))|(~v1_relat_1(X13)|~v1_funct_1(X13)))&(v1_funct_1(k2_funct_1(X13))|(~v1_relat_1(X13)|~v1_funct_1(X13)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_funct_1])])])).
% 0.19/0.40  fof(c_0_14, plain, ![X7, X8]:(~v1_relat_1(X8)|r1_tarski(k9_relat_1(X8,X7),k2_relat_1(X8))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t144_relat_1])])).
% 0.19/0.40  cnf(c_0_15, plain, (k10_relat_1(X1,X2)=k9_relat_1(k2_funct_1(X1),X2)|~v1_relat_1(X1)|~v1_funct_1(X1)|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.19/0.40  cnf(c_0_16, negated_conjecture, (v2_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.40  cnf(c_0_17, negated_conjecture, (v1_funct_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.40  cnf(c_0_18, negated_conjecture, (v1_relat_1(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.40  cnf(c_0_19, plain, (v1_relat_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.19/0.40  fof(c_0_20, plain, ![X9]:(~v1_relat_1(X9)|k10_relat_1(X9,k2_relat_1(X9))=k1_relat_1(X9)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t169_relat_1])])).
% 0.19/0.40  cnf(c_0_21, plain, (r1_tarski(k9_relat_1(X1,X2),k2_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.40  cnf(c_0_22, negated_conjecture, (k9_relat_1(k2_funct_1(esk3_0),X1)=k10_relat_1(esk3_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_15, c_0_16]), c_0_17]), c_0_18])])).
% 0.19/0.40  cnf(c_0_23, negated_conjecture, (v1_relat_1(k2_funct_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_17]), c_0_18])])).
% 0.19/0.40  cnf(c_0_24, plain, (k10_relat_1(X1,k2_relat_1(X1))=k1_relat_1(X1)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.19/0.40  fof(c_0_25, plain, ![X18, X19]:(~v1_relat_1(X19)|~v1_funct_1(X19)|(~v2_funct_1(X19)|k9_relat_1(X19,X18)=k10_relat_1(k2_funct_1(X19),X18))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t154_funct_1])])).
% 0.19/0.40  fof(c_0_26, plain, ![X4, X5, X6]:(~r1_tarski(X4,X5)|~r1_tarski(X5,X6)|r1_tarski(X4,X6)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).
% 0.19/0.40  cnf(c_0_27, negated_conjecture, (r1_tarski(k10_relat_1(esk3_0,X1),k2_relat_1(k2_funct_1(esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_21, c_0_22]), c_0_23])])).
% 0.19/0.40  cnf(c_0_28, negated_conjecture, (k10_relat_1(esk3_0,k2_relat_1(esk3_0))=k1_relat_1(esk3_0)), inference(spm,[status(thm)],[c_0_24, c_0_18])).
% 0.19/0.40  fof(c_0_29, plain, ![X14, X15]:(~v1_relat_1(X15)|~v1_funct_1(X15)|(~r1_tarski(X14,k2_relat_1(X15))|k9_relat_1(X15,k10_relat_1(X15,X14))=X14)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t147_funct_1])])).
% 0.19/0.40  cnf(c_0_30, plain, (v1_funct_1(k2_funct_1(X1))|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.19/0.40  cnf(c_0_31, plain, (k9_relat_1(X1,X2)=k10_relat_1(k2_funct_1(X1),X2)|~v1_relat_1(X1)|~v1_funct_1(X1)|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_25])).
% 0.19/0.40  cnf(c_0_32, plain, (r1_tarski(X1,X3)|~r1_tarski(X1,X2)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.19/0.40  cnf(c_0_33, negated_conjecture, (r1_tarski(k1_relat_1(esk3_0),k2_relat_1(k2_funct_1(esk3_0)))), inference(spm,[status(thm)],[c_0_27, c_0_28])).
% 0.19/0.40  cnf(c_0_34, plain, (k9_relat_1(X1,k10_relat_1(X1,X2))=X2|~v1_relat_1(X1)|~v1_funct_1(X1)|~r1_tarski(X2,k2_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.19/0.40  cnf(c_0_35, negated_conjecture, (v1_funct_1(k2_funct_1(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_17]), c_0_18])])).
% 0.19/0.40  cnf(c_0_36, negated_conjecture, (k10_relat_1(k2_funct_1(esk3_0),X1)=k9_relat_1(esk3_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_16]), c_0_17]), c_0_18])])).
% 0.19/0.40  cnf(c_0_37, negated_conjecture, (r1_tarski(X1,k2_relat_1(k2_funct_1(esk3_0)))|~r1_tarski(X1,k1_relat_1(esk3_0))), inference(spm,[status(thm)],[c_0_32, c_0_33])).
% 0.19/0.40  cnf(c_0_38, negated_conjecture, (r1_tarski(esk1_0,k1_relat_1(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.40  fof(c_0_39, plain, ![X16, X17]:(~v1_relat_1(X17)|~v1_funct_1(X17)|(~v2_funct_1(X17)|r1_tarski(k10_relat_1(X17,k9_relat_1(X17,X16)),X16))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t152_funct_1])])).
% 0.19/0.40  fof(c_0_40, plain, ![X10, X11, X12]:(~v1_relat_1(X12)|(~r1_tarski(X10,X11)|r1_tarski(k10_relat_1(X12,X10),k10_relat_1(X12,X11)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t178_relat_1])])).
% 0.19/0.40  cnf(c_0_41, negated_conjecture, (k10_relat_1(esk3_0,k9_relat_1(esk3_0,X1))=X1|~r1_tarski(X1,k2_relat_1(k2_funct_1(esk3_0)))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_35]), c_0_23])]), c_0_36]), c_0_22])).
% 0.19/0.40  cnf(c_0_42, negated_conjecture, (r1_tarski(esk1_0,k2_relat_1(k2_funct_1(esk3_0)))), inference(spm,[status(thm)],[c_0_37, c_0_38])).
% 0.19/0.40  cnf(c_0_43, plain, (r1_tarski(k10_relat_1(X1,k9_relat_1(X1,X2)),X2)|~v1_relat_1(X1)|~v1_funct_1(X1)|~v2_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.19/0.40  cnf(c_0_44, plain, (r1_tarski(k10_relat_1(X1,X2),k10_relat_1(X1,X3))|~v1_relat_1(X1)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.19/0.40  cnf(c_0_45, negated_conjecture, (k10_relat_1(esk3_0,k9_relat_1(esk3_0,esk1_0))=esk1_0), inference(spm,[status(thm)],[c_0_41, c_0_42])).
% 0.19/0.40  cnf(c_0_46, negated_conjecture, (r1_tarski(k10_relat_1(esk3_0,k9_relat_1(esk3_0,X1)),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_16]), c_0_17]), c_0_18])])).
% 0.19/0.40  cnf(c_0_47, negated_conjecture, (r1_tarski(esk1_0,k10_relat_1(esk3_0,X1))|~r1_tarski(k9_relat_1(esk3_0,esk1_0),X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_45]), c_0_18])])).
% 0.19/0.40  cnf(c_0_48, negated_conjecture, (r1_tarski(k9_relat_1(esk3_0,esk1_0),k9_relat_1(esk3_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.40  cnf(c_0_49, negated_conjecture, (r1_tarski(X1,X2)|~r1_tarski(X1,k10_relat_1(esk3_0,k9_relat_1(esk3_0,X2)))), inference(spm,[status(thm)],[c_0_32, c_0_46])).
% 0.19/0.40  cnf(c_0_50, negated_conjecture, (r1_tarski(esk1_0,k10_relat_1(esk3_0,k9_relat_1(esk3_0,esk2_0)))), inference(spm,[status(thm)],[c_0_47, c_0_48])).
% 0.19/0.40  cnf(c_0_51, negated_conjecture, (~r1_tarski(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.19/0.40  cnf(c_0_52, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_50]), c_0_51]), ['proof']).
% 0.19/0.40  # SZS output end CNFRefutation
% 0.19/0.40  # Proof object total steps             : 53
% 0.19/0.40  # Proof object clause steps            : 32
% 0.19/0.40  # Proof object formula steps           : 21
% 0.19/0.40  # Proof object conjectures             : 25
% 0.19/0.40  # Proof object clause conjectures      : 22
% 0.19/0.40  # Proof object formula conjectures     : 3
% 0.19/0.40  # Proof object initial clauses used    : 16
% 0.19/0.40  # Proof object initial formulas used   : 10
% 0.19/0.40  # Proof object generating inferences   : 16
% 0.19/0.40  # Proof object simplifying inferences  : 22
% 0.19/0.40  # Training examples: 0 positive, 0 negative
% 0.19/0.40  # Parsed axioms                        : 10
% 0.19/0.40  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.40  # Initial clauses                      : 16
% 0.19/0.40  # Removed in clause preprocessing      : 0
% 0.19/0.40  # Initial clauses in saturation        : 16
% 0.19/0.40  # Processed clauses                    : 137
% 0.19/0.40  # ...of these trivial                  : 18
% 0.19/0.40  # ...subsumed                          : 8
% 0.19/0.40  # ...remaining for further processing  : 111
% 0.19/0.40  # Other redundant clauses eliminated   : 0
% 0.19/0.40  # Clauses deleted for lack of memory   : 0
% 0.19/0.40  # Backward-subsumed                    : 1
% 0.19/0.40  # Backward-rewritten                   : 9
% 0.19/0.40  # Generated clauses                    : 415
% 0.19/0.40  # ...of the previous two non-trivial   : 279
% 0.19/0.40  # Contextual simplify-reflections      : 0
% 0.19/0.40  # Paramodulations                      : 415
% 0.19/0.40  # Factorizations                       : 0
% 0.19/0.40  # Equation resolutions                 : 0
% 0.19/0.40  # Propositional unsat checks           : 0
% 0.19/0.40  #    Propositional check models        : 0
% 0.19/0.40  #    Propositional check unsatisfiable : 0
% 0.19/0.40  #    Propositional clauses             : 0
% 0.19/0.40  #    Propositional clauses after purity: 0
% 0.19/0.40  #    Propositional unsat core size     : 0
% 0.19/0.40  #    Propositional preprocessing time  : 0.000
% 0.19/0.40  #    Propositional encoding time       : 0.000
% 0.19/0.40  #    Propositional solver time         : 0.000
% 0.19/0.40  #    Success case prop preproc time    : 0.000
% 0.19/0.40  #    Success case prop encoding time   : 0.000
% 0.19/0.40  #    Success case prop solver time     : 0.000
% 0.19/0.40  # Current number of processed clauses  : 85
% 0.19/0.40  #    Positive orientable unit clauses  : 55
% 0.19/0.40  #    Positive unorientable unit clauses: 0
% 0.19/0.40  #    Negative unit clauses             : 1
% 0.19/0.40  #    Non-unit-clauses                  : 29
% 0.19/0.40  # Current number of unprocessed clauses: 167
% 0.19/0.40  # ...number of literals in the above   : 231
% 0.19/0.40  # Current number of archived formulas  : 0
% 0.19/0.40  # Current number of archived clauses   : 26
% 0.19/0.40  # Clause-clause subsumption calls (NU) : 73
% 0.19/0.40  # Rec. Clause-clause subsumption calls : 49
% 0.19/0.40  # Non-unit clause-clause subsumptions  : 9
% 0.19/0.40  # Unit Clause-clause subsumption calls : 2
% 0.19/0.40  # Rewrite failures with RHS unbound    : 0
% 0.19/0.40  # BW rewrite match attempts            : 46
% 0.19/0.40  # BW rewrite match successes           : 9
% 0.19/0.40  # Condensation attempts                : 0
% 0.19/0.40  # Condensation successes               : 0
% 0.19/0.40  # Termbank termtop insertions          : 7607
% 0.19/0.40  
% 0.19/0.40  # -------------------------------------------------
% 0.19/0.40  # User time                : 0.057 s
% 0.19/0.40  # System time              : 0.006 s
% 0.19/0.40  # Total time               : 0.063 s
% 0.19/0.40  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
