%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n010.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:52:39 EST 2020

% Result     : Theorem 0.17s
% Output     : CNFRefutation 0.17s
% Verified   : 
% Statistics : Number of formulae       :   33 (  54 expanded)
%              Number of clauses        :   20 (  24 expanded)
%              Number of leaves         :    6 (  13 expanded)
%              Depth                    :   12
%              Number of atoms          :   67 ( 132 expanded)
%              Number of equality atoms :    6 (  10 expanded)
%              Maximal formula depth    :    8 (   3 average)
%              Maximal clause size      :    4 (   1 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t215_relat_1,conjecture,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( v1_relat_1(X2)
         => ( r1_xboole_0(k2_relat_1(X1),k2_relat_1(X2))
           => r1_xboole_0(X1,X2) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t215_relat_1)).

fof(t127_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( r1_xboole_0(X1,X2)
        | r1_xboole_0(X3,X4) )
     => r1_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X4)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t127_zfmisc_1)).

fof(t83_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
    <=> k4_xboole_0(X1,X2) = X1 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t83_xboole_1)).

fof(t106_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( r1_tarski(X1,k4_xboole_0(X2,X3))
     => ( r1_tarski(X1,X2)
        & r1_xboole_0(X1,X3) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t106_xboole_1)).

fof(t21_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t21_relat_1)).

fof(symmetry_r1_xboole_0,axiom,(
    ! [X1,X2] :
      ( r1_xboole_0(X1,X2)
     => r1_xboole_0(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',symmetry_r1_xboole_0)).

fof(c_0_6,negated_conjecture,(
    ~ ! [X1] :
        ( v1_relat_1(X1)
       => ! [X2] :
            ( v1_relat_1(X2)
           => ( r1_xboole_0(k2_relat_1(X1),k2_relat_1(X2))
             => r1_xboole_0(X1,X2) ) ) ) ),
    inference(assume_negation,[status(cth)],[t215_relat_1])).

fof(c_0_7,plain,(
    ! [X12,X13,X14,X15] :
      ( ( ~ r1_xboole_0(X12,X13)
        | r1_xboole_0(k2_zfmisc_1(X12,X14),k2_zfmisc_1(X13,X15)) )
      & ( ~ r1_xboole_0(X14,X15)
        | r1_xboole_0(k2_zfmisc_1(X12,X14),k2_zfmisc_1(X13,X15)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t127_zfmisc_1])])])).

fof(c_0_8,negated_conjecture,
    ( v1_relat_1(esk1_0)
    & v1_relat_1(esk2_0)
    & r1_xboole_0(k2_relat_1(esk1_0),k2_relat_1(esk2_0))
    & ~ r1_xboole_0(esk1_0,esk2_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).

fof(c_0_9,plain,(
    ! [X10,X11] :
      ( ( ~ r1_xboole_0(X10,X11)
        | k4_xboole_0(X10,X11) = X10 )
      & ( k4_xboole_0(X10,X11) != X10
        | r1_xboole_0(X10,X11) ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).

cnf(c_0_10,plain,
    ( r1_xboole_0(k2_zfmisc_1(X3,X1),k2_zfmisc_1(X4,X2))
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,negated_conjecture,
    ( r1_xboole_0(k2_relat_1(esk1_0),k2_relat_1(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_12,plain,(
    ! [X7,X8,X9] :
      ( ( r1_tarski(X7,X8)
        | ~ r1_tarski(X7,k4_xboole_0(X8,X9)) )
      & ( r1_xboole_0(X7,X9)
        | ~ r1_tarski(X7,k4_xboole_0(X8,X9)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t106_xboole_1])])])).

cnf(c_0_13,plain,
    ( k4_xboole_0(X1,X2) = X1
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,negated_conjecture,
    ( r1_xboole_0(k2_zfmisc_1(X1,k2_relat_1(esk1_0)),k2_zfmisc_1(X2,k2_relat_1(esk2_0))) ),
    inference(spm,[status(thm)],[c_0_10,c_0_11])).

fof(c_0_15,plain,(
    ! [X16] :
      ( ~ v1_relat_1(X16)
      | r1_tarski(X16,k2_zfmisc_1(k1_relat_1(X16),k2_relat_1(X16))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t21_relat_1])])).

cnf(c_0_16,plain,
    ( r1_xboole_0(X1,X2)
    | ~ r1_tarski(X1,k4_xboole_0(X3,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_17,negated_conjecture,
    ( k4_xboole_0(k2_zfmisc_1(X1,k2_relat_1(esk1_0)),k2_zfmisc_1(X2,k2_relat_1(esk2_0))) = k2_zfmisc_1(X1,k2_relat_1(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_18,plain,
    ( r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,negated_conjecture,
    ( v1_relat_1(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_20,plain,(
    ! [X5,X6] :
      ( ~ r1_xboole_0(X5,X6)
      | r1_xboole_0(X6,X5) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).

cnf(c_0_21,negated_conjecture,
    ( r1_xboole_0(X1,k2_zfmisc_1(X2,k2_relat_1(esk2_0)))
    | ~ r1_tarski(X1,k2_zfmisc_1(X3,k2_relat_1(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_22,negated_conjecture,
    ( r1_tarski(esk1_0,k2_zfmisc_1(k1_relat_1(esk1_0),k2_relat_1(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_23,plain,
    ( r1_xboole_0(X2,X1)
    | ~ r1_xboole_0(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_24,negated_conjecture,
    ( r1_xboole_0(esk1_0,k2_zfmisc_1(X1,k2_relat_1(esk2_0))) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

cnf(c_0_25,negated_conjecture,
    ( r1_xboole_0(k2_zfmisc_1(X1,k2_relat_1(esk2_0)),esk1_0) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_26,negated_conjecture,
    ( k4_xboole_0(k2_zfmisc_1(X1,k2_relat_1(esk2_0)),esk1_0) = k2_zfmisc_1(X1,k2_relat_1(esk2_0)) ),
    inference(spm,[status(thm)],[c_0_13,c_0_25])).

cnf(c_0_27,negated_conjecture,
    ( v1_relat_1(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_28,negated_conjecture,
    ( r1_xboole_0(X1,esk1_0)
    | ~ r1_tarski(X1,k2_zfmisc_1(X2,k2_relat_1(esk2_0))) ),
    inference(spm,[status(thm)],[c_0_16,c_0_26])).

cnf(c_0_29,negated_conjecture,
    ( r1_tarski(esk2_0,k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0))) ),
    inference(spm,[status(thm)],[c_0_18,c_0_27])).

cnf(c_0_30,negated_conjecture,
    ( r1_xboole_0(esk2_0,esk1_0) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_31,negated_conjecture,
    ( ~ r1_xboole_0(esk1_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_32,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_30]),c_0_31]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.00/0.10  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.11  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.11/0.31  % Computer   : n010.cluster.edu
% 0.11/0.31  % Model      : x86_64 x86_64
% 0.11/0.31  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.11/0.31  % Memory     : 8042.1875MB
% 0.11/0.31  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.11/0.31  % CPULimit   : 60
% 0.11/0.31  % WCLimit    : 600
% 0.11/0.31  % DateTime   : Tue Dec  1 16:12:14 EST 2020
% 0.11/0.31  % CPUTime    : 
% 0.11/0.32  # Version: 2.5pre002
% 0.11/0.32  # No SInE strategy applied
% 0.11/0.32  # Trying AutoSched0 for 299 seconds
% 0.17/0.33  # AutoSched0-Mode selected heuristic G_E___107_C00_02_nc_F1_PI_AE_Q4_CS_SP_PS_S00EN
% 0.17/0.33  # and selection function PSelectSmallestOrientable.
% 0.17/0.33  #
% 0.17/0.33  # Preprocessing time       : 0.016 s
% 0.17/0.33  # Presaturation interreduction done
% 0.17/0.33  
% 0.17/0.33  # Proof found!
% 0.17/0.33  # SZS status Theorem
% 0.17/0.33  # SZS output start CNFRefutation
% 0.17/0.33  fof(t215_relat_1, conjecture, ![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>(r1_xboole_0(k2_relat_1(X1),k2_relat_1(X2))=>r1_xboole_0(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t215_relat_1)).
% 0.17/0.33  fof(t127_zfmisc_1, axiom, ![X1, X2, X3, X4]:((r1_xboole_0(X1,X2)|r1_xboole_0(X3,X4))=>r1_xboole_0(k2_zfmisc_1(X1,X3),k2_zfmisc_1(X2,X4))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t127_zfmisc_1)).
% 0.17/0.33  fof(t83_xboole_1, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)<=>k4_xboole_0(X1,X2)=X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t83_xboole_1)).
% 0.17/0.33  fof(t106_xboole_1, axiom, ![X1, X2, X3]:(r1_tarski(X1,k4_xboole_0(X2,X3))=>(r1_tarski(X1,X2)&r1_xboole_0(X1,X3))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t106_xboole_1)).
% 0.17/0.33  fof(t21_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t21_relat_1)).
% 0.17/0.33  fof(symmetry_r1_xboole_0, axiom, ![X1, X2]:(r1_xboole_0(X1,X2)=>r1_xboole_0(X2,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', symmetry_r1_xboole_0)).
% 0.17/0.33  fof(c_0_6, negated_conjecture, ~(![X1]:(v1_relat_1(X1)=>![X2]:(v1_relat_1(X2)=>(r1_xboole_0(k2_relat_1(X1),k2_relat_1(X2))=>r1_xboole_0(X1,X2))))), inference(assume_negation,[status(cth)],[t215_relat_1])).
% 0.17/0.33  fof(c_0_7, plain, ![X12, X13, X14, X15]:((~r1_xboole_0(X12,X13)|r1_xboole_0(k2_zfmisc_1(X12,X14),k2_zfmisc_1(X13,X15)))&(~r1_xboole_0(X14,X15)|r1_xboole_0(k2_zfmisc_1(X12,X14),k2_zfmisc_1(X13,X15)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t127_zfmisc_1])])])).
% 0.17/0.33  fof(c_0_8, negated_conjecture, (v1_relat_1(esk1_0)&(v1_relat_1(esk2_0)&(r1_xboole_0(k2_relat_1(esk1_0),k2_relat_1(esk2_0))&~r1_xboole_0(esk1_0,esk2_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])).
% 0.17/0.33  fof(c_0_9, plain, ![X10, X11]:((~r1_xboole_0(X10,X11)|k4_xboole_0(X10,X11)=X10)&(k4_xboole_0(X10,X11)!=X10|r1_xboole_0(X10,X11))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t83_xboole_1])])).
% 0.17/0.33  cnf(c_0_10, plain, (r1_xboole_0(k2_zfmisc_1(X3,X1),k2_zfmisc_1(X4,X2))|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.17/0.33  cnf(c_0_11, negated_conjecture, (r1_xboole_0(k2_relat_1(esk1_0),k2_relat_1(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.17/0.33  fof(c_0_12, plain, ![X7, X8, X9]:((r1_tarski(X7,X8)|~r1_tarski(X7,k4_xboole_0(X8,X9)))&(r1_xboole_0(X7,X9)|~r1_tarski(X7,k4_xboole_0(X8,X9)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t106_xboole_1])])])).
% 0.17/0.33  cnf(c_0_13, plain, (k4_xboole_0(X1,X2)=X1|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.17/0.33  cnf(c_0_14, negated_conjecture, (r1_xboole_0(k2_zfmisc_1(X1,k2_relat_1(esk1_0)),k2_zfmisc_1(X2,k2_relat_1(esk2_0)))), inference(spm,[status(thm)],[c_0_10, c_0_11])).
% 0.17/0.33  fof(c_0_15, plain, ![X16]:(~v1_relat_1(X16)|r1_tarski(X16,k2_zfmisc_1(k1_relat_1(X16),k2_relat_1(X16)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t21_relat_1])])).
% 0.17/0.33  cnf(c_0_16, plain, (r1_xboole_0(X1,X2)|~r1_tarski(X1,k4_xboole_0(X3,X2))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.17/0.33  cnf(c_0_17, negated_conjecture, (k4_xboole_0(k2_zfmisc_1(X1,k2_relat_1(esk1_0)),k2_zfmisc_1(X2,k2_relat_1(esk2_0)))=k2_zfmisc_1(X1,k2_relat_1(esk1_0))), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.17/0.33  cnf(c_0_18, plain, (r1_tarski(X1,k2_zfmisc_1(k1_relat_1(X1),k2_relat_1(X1)))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.17/0.33  cnf(c_0_19, negated_conjecture, (v1_relat_1(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.17/0.33  fof(c_0_20, plain, ![X5, X6]:(~r1_xboole_0(X5,X6)|r1_xboole_0(X6,X5)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_xboole_0])])).
% 0.17/0.33  cnf(c_0_21, negated_conjecture, (r1_xboole_0(X1,k2_zfmisc_1(X2,k2_relat_1(esk2_0)))|~r1_tarski(X1,k2_zfmisc_1(X3,k2_relat_1(esk1_0)))), inference(spm,[status(thm)],[c_0_16, c_0_17])).
% 0.17/0.33  cnf(c_0_22, negated_conjecture, (r1_tarski(esk1_0,k2_zfmisc_1(k1_relat_1(esk1_0),k2_relat_1(esk1_0)))), inference(spm,[status(thm)],[c_0_18, c_0_19])).
% 0.17/0.33  cnf(c_0_23, plain, (r1_xboole_0(X2,X1)|~r1_xboole_0(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.17/0.33  cnf(c_0_24, negated_conjecture, (r1_xboole_0(esk1_0,k2_zfmisc_1(X1,k2_relat_1(esk2_0)))), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.17/0.33  cnf(c_0_25, negated_conjecture, (r1_xboole_0(k2_zfmisc_1(X1,k2_relat_1(esk2_0)),esk1_0)), inference(spm,[status(thm)],[c_0_23, c_0_24])).
% 0.17/0.33  cnf(c_0_26, negated_conjecture, (k4_xboole_0(k2_zfmisc_1(X1,k2_relat_1(esk2_0)),esk1_0)=k2_zfmisc_1(X1,k2_relat_1(esk2_0))), inference(spm,[status(thm)],[c_0_13, c_0_25])).
% 0.17/0.33  cnf(c_0_27, negated_conjecture, (v1_relat_1(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.17/0.33  cnf(c_0_28, negated_conjecture, (r1_xboole_0(X1,esk1_0)|~r1_tarski(X1,k2_zfmisc_1(X2,k2_relat_1(esk2_0)))), inference(spm,[status(thm)],[c_0_16, c_0_26])).
% 0.17/0.33  cnf(c_0_29, negated_conjecture, (r1_tarski(esk2_0,k2_zfmisc_1(k1_relat_1(esk2_0),k2_relat_1(esk2_0)))), inference(spm,[status(thm)],[c_0_18, c_0_27])).
% 0.17/0.33  cnf(c_0_30, negated_conjecture, (r1_xboole_0(esk2_0,esk1_0)), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.17/0.33  cnf(c_0_31, negated_conjecture, (~r1_xboole_0(esk1_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.17/0.33  cnf(c_0_32, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_30]), c_0_31]), ['proof']).
% 0.17/0.33  # SZS output end CNFRefutation
% 0.17/0.33  # Proof object total steps             : 33
% 0.17/0.33  # Proof object clause steps            : 20
% 0.17/0.33  # Proof object formula steps           : 13
% 0.17/0.33  # Proof object conjectures             : 18
% 0.17/0.33  # Proof object clause conjectures      : 15
% 0.17/0.33  # Proof object formula conjectures     : 3
% 0.17/0.33  # Proof object initial clauses used    : 9
% 0.17/0.33  # Proof object initial formulas used   : 6
% 0.17/0.33  # Proof object generating inferences   : 11
% 0.17/0.33  # Proof object simplifying inferences  : 1
% 0.17/0.33  # Training examples: 0 positive, 0 negative
% 0.17/0.33  # Parsed axioms                        : 6
% 0.17/0.33  # Removed by relevancy pruning/SinE    : 0
% 0.17/0.33  # Initial clauses                      : 12
% 0.17/0.33  # Removed in clause preprocessing      : 0
% 0.17/0.33  # Initial clauses in saturation        : 12
% 0.17/0.33  # Processed clauses                    : 49
% 0.17/0.33  # ...of these trivial                  : 2
% 0.17/0.33  # ...subsumed                          : 0
% 0.17/0.33  # ...remaining for further processing  : 47
% 0.17/0.33  # Other redundant clauses eliminated   : 0
% 0.17/0.33  # Clauses deleted for lack of memory   : 0
% 0.17/0.33  # Backward-subsumed                    : 0
% 0.17/0.33  # Backward-rewritten                   : 0
% 0.17/0.33  # Generated clauses                    : 65
% 0.17/0.33  # ...of the previous two non-trivial   : 44
% 0.17/0.33  # Contextual simplify-reflections      : 0
% 0.17/0.33  # Paramodulations                      : 65
% 0.17/0.33  # Factorizations                       : 0
% 0.17/0.33  # Equation resolutions                 : 0
% 0.17/0.33  # Propositional unsat checks           : 0
% 0.17/0.33  #    Propositional check models        : 0
% 0.17/0.33  #    Propositional check unsatisfiable : 0
% 0.17/0.33  #    Propositional clauses             : 0
% 0.17/0.33  #    Propositional clauses after purity: 0
% 0.17/0.33  #    Propositional unsat core size     : 0
% 0.17/0.33  #    Propositional preprocessing time  : 0.000
% 0.17/0.33  #    Propositional encoding time       : 0.000
% 0.17/0.33  #    Propositional solver time         : 0.000
% 0.17/0.33  #    Success case prop preproc time    : 0.000
% 0.17/0.33  #    Success case prop encoding time   : 0.000
% 0.17/0.33  #    Success case prop solver time     : 0.000
% 0.17/0.33  # Current number of processed clauses  : 35
% 0.17/0.33  #    Positive orientable unit clauses  : 21
% 0.17/0.33  #    Positive unorientable unit clauses: 0
% 0.17/0.33  #    Negative unit clauses             : 1
% 0.17/0.33  #    Non-unit-clauses                  : 13
% 0.17/0.33  # Current number of unprocessed clauses: 18
% 0.17/0.33  # ...number of literals in the above   : 20
% 0.17/0.33  # Current number of archived formulas  : 0
% 0.17/0.33  # Current number of archived clauses   : 12
% 0.17/0.33  # Clause-clause subsumption calls (NU) : 32
% 0.17/0.33  # Rec. Clause-clause subsumption calls : 30
% 0.17/0.33  # Non-unit clause-clause subsumptions  : 0
% 0.17/0.33  # Unit Clause-clause subsumption calls : 0
% 0.17/0.33  # Rewrite failures with RHS unbound    : 0
% 0.17/0.33  # BW rewrite match attempts            : 3
% 0.17/0.33  # BW rewrite match successes           : 0
% 0.17/0.33  # Condensation attempts                : 0
% 0.17/0.33  # Condensation successes               : 0
% 0.17/0.33  # Termbank termtop insertions          : 1668
% 0.17/0.33  
% 0.17/0.33  # -------------------------------------------------
% 0.17/0.33  # User time                : 0.017 s
% 0.17/0.33  # System time              : 0.002 s
% 0.17/0.33  # Total time               : 0.019 s
% 0.17/0.33  # Maximum resident set size: 1568 pages
%------------------------------------------------------------------------------
