%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:11:14 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   38 ( 107 expanded)
%              Number of clauses        :   23 (  42 expanded)
%              Number of leaves         :    7 (  25 expanded)
%              Depth                    :    8
%              Number of atoms          :   89 ( 312 expanded)
%              Number of equality atoms :   30 (  72 expanded)
%              Maximal formula depth    :    7 (   4 average)
%              Maximal clause size      :    4 (   2 average)
%              Maximal term depth       :    5 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t75_tops_1,conjecture,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k2_tops_1(X1,k2_tops_1(X1,k2_tops_1(X1,X2))) = k2_tops_1(X1,k2_tops_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t75_tops_1)).

fof(dt_k2_tops_1,axiom,(
    ! [X1,X2] :
      ( ( l1_pre_topc(X1)
        & m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) )
     => m1_subset_1(k2_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1))) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_tops_1)).

fof(l78_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l78_tops_1)).

fof(l79_tops_1,axiom,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k2_pre_topc(X1,k2_tops_1(X1,X2)) = k2_tops_1(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l79_tops_1)).

fof(redefinition_k7_subset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => k7_subset_1(X1,X2,X3) = k4_xboole_0(X2,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k7_subset_1)).

fof(l80_tops_1,axiom,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k1_tops_1(X1,k2_tops_1(X1,k2_tops_1(X1,X2))) = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',l80_tops_1)).

fof(t3_boole,axiom,(
    ! [X1] : k4_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t3_boole)).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1] :
        ( ( v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
           => k2_tops_1(X1,k2_tops_1(X1,k2_tops_1(X1,X2))) = k2_tops_1(X1,k2_tops_1(X1,X2)) ) ) ),
    inference(assume_negation,[status(cth)],[t75_tops_1])).

fof(c_0_8,plain,(
    ! [X8,X9] :
      ( ~ l1_pre_topc(X8)
      | ~ m1_subset_1(X9,k1_zfmisc_1(u1_struct_0(X8)))
      | m1_subset_1(k2_tops_1(X8,X9),k1_zfmisc_1(u1_struct_0(X8))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_tops_1])])).

fof(c_0_9,negated_conjecture,
    ( v2_pre_topc(esk1_0)
    & l1_pre_topc(esk1_0)
    & m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
    & k2_tops_1(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0))) != k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).

fof(c_0_10,plain,(
    ! [X10,X11] :
      ( ~ l1_pre_topc(X10)
      | ~ m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(X10)))
      | k2_tops_1(X10,X11) = k7_subset_1(u1_struct_0(X10),k2_pre_topc(X10,X11),k1_tops_1(X10,X11)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l78_tops_1])])])).

fof(c_0_11,plain,(
    ! [X12,X13] :
      ( ~ v2_pre_topc(X12)
      | ~ l1_pre_topc(X12)
      | ~ m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))
      | k2_pre_topc(X12,k2_tops_1(X12,X13)) = k2_tops_1(X12,X13) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l79_tops_1])])])).

fof(c_0_12,plain,(
    ! [X5,X6,X7] :
      ( ~ m1_subset_1(X6,k1_zfmisc_1(X5))
      | k7_subset_1(X5,X6,X7) = k4_xboole_0(X6,X7) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).

cnf(c_0_13,plain,
    ( m1_subset_1(k2_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,negated_conjecture,
    ( l1_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,plain,
    ( k2_tops_1(X1,X2) = k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_16,plain,
    ( k2_pre_topc(X1,k2_tops_1(X1,X2)) = k2_tops_1(X1,X2)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_17,negated_conjecture,
    ( v2_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_18,plain,(
    ! [X14,X15] :
      ( ~ v2_pre_topc(X14)
      | ~ l1_pre_topc(X14)
      | ~ m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))
      | k1_tops_1(X14,k2_tops_1(X14,k2_tops_1(X14,X15))) = k1_xboole_0 ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l80_tops_1])])])).

cnf(c_0_19,plain,
    ( k7_subset_1(X2,X1,X3) = k4_xboole_0(X1,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_20,negated_conjecture,
    ( m1_subset_1(k2_tops_1(esk1_0,X1),k1_zfmisc_1(u1_struct_0(esk1_0)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_13,c_0_14])).

cnf(c_0_21,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,X1),k1_tops_1(esk1_0,X1)) = k2_tops_1(esk1_0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_15,c_0_14])).

cnf(c_0_22,negated_conjecture,
    ( k2_pre_topc(esk1_0,k2_tops_1(esk1_0,X1)) = k2_tops_1(esk1_0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17]),c_0_14])])).

cnf(c_0_23,plain,
    ( k1_tops_1(X1,k2_tops_1(X1,k2_tops_1(X1,X2))) = k1_xboole_0
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_24,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),k2_tops_1(esk1_0,X1),X2) = k4_xboole_0(k2_tops_1(esk1_0,X1),X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_19,c_0_20])).

cnf(c_0_25,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,k2_tops_1(esk1_0,X1)),k1_tops_1(esk1_0,k2_tops_1(esk1_0,X1))) = k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_21,c_0_20])).

cnf(c_0_26,negated_conjecture,
    ( k2_pre_topc(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1))) = k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_22,c_0_20])).

cnf(c_0_27,negated_conjecture,
    ( m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_28,negated_conjecture,
    ( k1_tops_1(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1))) = k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_17]),c_0_14])])).

cnf(c_0_29,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1)),X2) = k4_xboole_0(k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1)),X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_24,c_0_20])).

fof(c_0_30,plain,(
    ! [X4] : k4_xboole_0(X4,k1_xboole_0) = X4 ),
    inference(variable_rename,[status(thm)],[t3_boole])).

cnf(c_0_31,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1))),k1_tops_1(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1)))) = k2_tops_1(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(spm,[status(thm)],[c_0_25,c_0_20])).

cnf(c_0_32,negated_conjecture,
    ( k2_pre_topc(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0))) = k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_26,c_0_27])).

cnf(c_0_33,negated_conjecture,
    ( k1_tops_1(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0))) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_28,c_0_27])).

cnf(c_0_34,negated_conjecture,
    ( k7_subset_1(u1_struct_0(esk1_0),k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0)),X1) = k4_xboole_0(k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0)),X1) ),
    inference(spm,[status(thm)],[c_0_29,c_0_27])).

cnf(c_0_35,plain,
    ( k4_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_36,negated_conjecture,
    ( k2_tops_1(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0))) != k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_37,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_27]),c_0_32]),c_0_33]),c_0_34]),c_0_35]),c_0_36]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.12/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.12/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.35  % Computer   : n022.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % WCLimit    : 600
% 0.13/0.35  % DateTime   : Tue Dec  1 10:27:25 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S050I
% 0.13/0.38  # and selection function PSelectNewComplexExceptUniqMaxHorn.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.028 s
% 0.13/0.38  # Presaturation interreduction done
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(t75_tops_1, conjecture, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k2_tops_1(X1,k2_tops_1(X1,k2_tops_1(X1,X2)))=k2_tops_1(X1,k2_tops_1(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t75_tops_1)).
% 0.13/0.38  fof(dt_k2_tops_1, axiom, ![X1, X2]:((l1_pre_topc(X1)&m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))))=>m1_subset_1(k2_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k2_tops_1)).
% 0.13/0.38  fof(l78_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l78_tops_1)).
% 0.13/0.38  fof(l79_tops_1, axiom, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k2_pre_topc(X1,k2_tops_1(X1,X2))=k2_tops_1(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l79_tops_1)).
% 0.13/0.38  fof(redefinition_k7_subset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>k7_subset_1(X1,X2,X3)=k4_xboole_0(X2,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k7_subset_1)).
% 0.13/0.38  fof(l80_tops_1, axiom, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k1_tops_1(X1,k2_tops_1(X1,k2_tops_1(X1,X2)))=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', l80_tops_1)).
% 0.13/0.38  fof(t3_boole, axiom, ![X1]:k4_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', t3_boole)).
% 0.13/0.38  fof(c_0_7, negated_conjecture, ~(![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k2_tops_1(X1,k2_tops_1(X1,k2_tops_1(X1,X2)))=k2_tops_1(X1,k2_tops_1(X1,X2))))), inference(assume_negation,[status(cth)],[t75_tops_1])).
% 0.13/0.38  fof(c_0_8, plain, ![X8, X9]:(~l1_pre_topc(X8)|~m1_subset_1(X9,k1_zfmisc_1(u1_struct_0(X8)))|m1_subset_1(k2_tops_1(X8,X9),k1_zfmisc_1(u1_struct_0(X8)))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k2_tops_1])])).
% 0.13/0.38  fof(c_0_9, negated_conjecture, ((v2_pre_topc(esk1_0)&l1_pre_topc(esk1_0))&(m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))&k2_tops_1(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0)))!=k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0)))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])).
% 0.13/0.38  fof(c_0_10, plain, ![X10, X11]:(~l1_pre_topc(X10)|(~m1_subset_1(X11,k1_zfmisc_1(u1_struct_0(X10)))|k2_tops_1(X10,X11)=k7_subset_1(u1_struct_0(X10),k2_pre_topc(X10,X11),k1_tops_1(X10,X11)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l78_tops_1])])])).
% 0.13/0.38  fof(c_0_11, plain, ![X12, X13]:(~v2_pre_topc(X12)|~l1_pre_topc(X12)|(~m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))|k2_pre_topc(X12,k2_tops_1(X12,X13))=k2_tops_1(X12,X13))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l79_tops_1])])])).
% 0.13/0.38  fof(c_0_12, plain, ![X5, X6, X7]:(~m1_subset_1(X6,k1_zfmisc_1(X5))|k7_subset_1(X5,X6,X7)=k4_xboole_0(X6,X7)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k7_subset_1])])).
% 0.13/0.38  cnf(c_0_13, plain, (m1_subset_1(k2_tops_1(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.38  cnf(c_0_14, negated_conjecture, (l1_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_15, plain, (k2_tops_1(X1,X2)=k7_subset_1(u1_struct_0(X1),k2_pre_topc(X1,X2),k1_tops_1(X1,X2))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_16, plain, (k2_pre_topc(X1,k2_tops_1(X1,X2))=k2_tops_1(X1,X2)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_17, negated_conjecture, (v2_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  fof(c_0_18, plain, ![X14, X15]:(~v2_pre_topc(X14)|~l1_pre_topc(X14)|(~m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))|k1_tops_1(X14,k2_tops_1(X14,k2_tops_1(X14,X15)))=k1_xboole_0)), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[l80_tops_1])])])).
% 0.13/0.38  cnf(c_0_19, plain, (k7_subset_1(X2,X1,X3)=k4_xboole_0(X1,X3)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_20, negated_conjecture, (m1_subset_1(k2_tops_1(esk1_0,X1),k1_zfmisc_1(u1_struct_0(esk1_0)))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_13, c_0_14])).
% 0.13/0.38  cnf(c_0_21, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,X1),k1_tops_1(esk1_0,X1))=k2_tops_1(esk1_0,X1)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_15, c_0_14])).
% 0.13/0.38  cnf(c_0_22, negated_conjecture, (k2_pre_topc(esk1_0,k2_tops_1(esk1_0,X1))=k2_tops_1(esk1_0,X1)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_17]), c_0_14])])).
% 0.13/0.38  cnf(c_0_23, plain, (k1_tops_1(X1,k2_tops_1(X1,k2_tops_1(X1,X2)))=k1_xboole_0|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.13/0.38  cnf(c_0_24, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),k2_tops_1(esk1_0,X1),X2)=k4_xboole_0(k2_tops_1(esk1_0,X1),X2)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_19, c_0_20])).
% 0.13/0.38  cnf(c_0_25, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,k2_tops_1(esk1_0,X1)),k1_tops_1(esk1_0,k2_tops_1(esk1_0,X1)))=k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_21, c_0_20])).
% 0.13/0.38  cnf(c_0_26, negated_conjecture, (k2_pre_topc(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1)))=k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_22, c_0_20])).
% 0.13/0.38  cnf(c_0_27, negated_conjecture, (m1_subset_1(esk2_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_28, negated_conjecture, (k1_tops_1(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1)))=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_17]), c_0_14])])).
% 0.13/0.38  cnf(c_0_29, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1)),X2)=k4_xboole_0(k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1)),X2)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_24, c_0_20])).
% 0.13/0.38  fof(c_0_30, plain, ![X4]:k4_xboole_0(X4,k1_xboole_0)=X4, inference(variable_rename,[status(thm)],[t3_boole])).
% 0.13/0.38  cnf(c_0_31, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),k2_pre_topc(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1))),k1_tops_1(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1))))=k2_tops_1(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,X1)))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(spm,[status(thm)],[c_0_25, c_0_20])).
% 0.13/0.38  cnf(c_0_32, negated_conjecture, (k2_pre_topc(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0)))=k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0))), inference(spm,[status(thm)],[c_0_26, c_0_27])).
% 0.13/0.38  cnf(c_0_33, negated_conjecture, (k1_tops_1(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0)))=k1_xboole_0), inference(spm,[status(thm)],[c_0_28, c_0_27])).
% 0.13/0.38  cnf(c_0_34, negated_conjecture, (k7_subset_1(u1_struct_0(esk1_0),k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0)),X1)=k4_xboole_0(k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0)),X1)), inference(spm,[status(thm)],[c_0_29, c_0_27])).
% 0.13/0.38  cnf(c_0_35, plain, (k4_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.13/0.38  cnf(c_0_36, negated_conjecture, (k2_tops_1(esk1_0,k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0)))!=k2_tops_1(esk1_0,k2_tops_1(esk1_0,esk2_0))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_37, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_27]), c_0_32]), c_0_33]), c_0_34]), c_0_35]), c_0_36]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 38
% 0.13/0.38  # Proof object clause steps            : 23
% 0.13/0.38  # Proof object formula steps           : 15
% 0.13/0.38  # Proof object conjectures             : 20
% 0.13/0.38  # Proof object clause conjectures      : 17
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 10
% 0.13/0.38  # Proof object initial formulas used   : 7
% 0.13/0.38  # Proof object generating inferences   : 13
% 0.13/0.38  # Proof object simplifying inferences  : 9
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 7
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 10
% 0.13/0.38  # Removed in clause preprocessing      : 0
% 0.13/0.38  # Initial clauses in saturation        : 10
% 0.13/0.38  # Processed clauses                    : 50
% 0.13/0.38  # ...of these trivial                  : 0
% 0.13/0.38  # ...subsumed                          : 0
% 0.13/0.38  # ...remaining for further processing  : 50
% 0.13/0.38  # Other redundant clauses eliminated   : 0
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 0
% 0.13/0.38  # Backward-rewritten                   : 0
% 0.13/0.38  # Generated clauses                    : 36
% 0.13/0.38  # ...of the previous two non-trivial   : 34
% 0.13/0.38  # Contextual simplify-reflections      : 0
% 0.13/0.38  # Paramodulations                      : 36
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 0
% 0.13/0.38  # Propositional unsat checks           : 0
% 0.13/0.38  #    Propositional check models        : 0
% 0.13/0.38  #    Propositional check unsatisfiable : 0
% 0.13/0.38  #    Propositional clauses             : 0
% 0.13/0.38  #    Propositional clauses after purity: 0
% 0.13/0.38  #    Propositional unsat core size     : 0
% 0.13/0.38  #    Propositional preprocessing time  : 0.000
% 0.13/0.38  #    Propositional encoding time       : 0.000
% 0.13/0.38  #    Propositional solver time         : 0.000
% 0.13/0.38  #    Success case prop preproc time    : 0.000
% 0.13/0.38  #    Success case prop encoding time   : 0.000
% 0.13/0.38  #    Success case prop solver time     : 0.000
% 0.13/0.38  # Current number of processed clauses  : 40
% 0.13/0.38  #    Positive orientable unit clauses  : 18
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 1
% 0.13/0.38  #    Non-unit-clauses                  : 21
% 0.13/0.38  # Current number of unprocessed clauses: 4
% 0.13/0.38  # ...number of literals in the above   : 7
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 10
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 66
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 62
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 0
% 0.13/0.38  # Unit Clause-clause subsumption calls : 13
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 36
% 0.13/0.38  # BW rewrite match successes           : 0
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 2040
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.028 s
% 0.13/0.38  # System time              : 0.006 s
% 0.13/0.38  # Total time               : 0.034 s
% 0.13/0.38  # Maximum resident set size: 1564 pages
%------------------------------------------------------------------------------
