%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n014.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 10:49:17 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   51 (  80 expanded)
%              Number of clauses        :   27 (  38 expanded)
%              Number of leaves         :   12 (  21 expanded)
%              Depth                    :   12
%              Number of atoms          :  140 ( 232 expanded)
%              Number of equality atoms :   99 ( 181 expanded)
%              Maximal formula depth    :   15 (   4 average)
%              Maximal clause size      :   32 (   2 average)
%              Maximal term depth       :    3 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t43_zfmisc_1,axiom,(
    ! [X1,X2,X3] :
      ~ ( k1_tarski(X1) = k2_xboole_0(X2,X3)
        & ~ ( X2 = k1_tarski(X1)
            & X3 = k1_tarski(X1) )
        & ~ ( X2 = k1_xboole_0
            & X3 = k1_tarski(X1) )
        & ~ ( X2 = k1_tarski(X1)
            & X3 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t43_zfmisc_1)).

fof(t22_xboole_1,axiom,(
    ! [X1,X2] : k2_xboole_0(X1,k3_xboole_0(X1,X2)) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t22_xboole_1)).

fof(t18_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k3_xboole_0(k1_tarski(X1),k1_tarski(X2)) = k1_tarski(X1)
     => X1 = X2 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t18_zfmisc_1)).

fof(d1_tarski,axiom,(
    ! [X1,X2] :
      ( X2 = k1_tarski(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> X3 = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_tarski)).

fof(t10_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => ~ ( X2 != k1_xboole_0
          & ! [X3] :
              ( m1_subset_1(X3,X1)
             => ~ r2_hidden(X3,X2) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t10_subset_1)).

fof(t61_setfam_1,axiom,(
    ! [X1] : m1_subset_1(k1_tarski(k1_xboole_0),k1_zfmisc_1(k1_zfmisc_1(X1))) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t61_setfam_1)).

fof(t63_relat_1,conjecture,(
    k3_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t63_relat_1)).

fof(d6_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => k3_relat_1(X1) = k2_xboole_0(k1_relat_1(X1),k2_relat_1(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d6_relat_1)).

fof(t1_boole,axiom,(
    ! [X1] : k2_xboole_0(X1,k1_xboole_0) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_boole)).

fof(cc2_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(X1))
         => v1_relat_1(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relat_1)).

fof(t60_relat_1,axiom,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0
    & k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t60_relat_1)).

fof(fc7_relat_1,axiom,(
    ! [X1,X2,X3,X4] : v1_relat_1(k2_tarski(k4_tarski(X1,X2),k4_tarski(X3,X4))) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc7_relat_1)).

fof(c_0_12,plain,(
    ! [X17,X18,X19] :
      ( ( X18 = k1_tarski(X17)
        | X18 = k1_xboole_0
        | X18 = k1_tarski(X17)
        | k1_tarski(X17) != k2_xboole_0(X18,X19) )
      & ( X19 = k1_xboole_0
        | X18 = k1_xboole_0
        | X18 = k1_tarski(X17)
        | k1_tarski(X17) != k2_xboole_0(X18,X19) )
      & ( X18 = k1_tarski(X17)
        | X19 = k1_tarski(X17)
        | X18 = k1_tarski(X17)
        | k1_tarski(X17) != k2_xboole_0(X18,X19) )
      & ( X19 = k1_xboole_0
        | X19 = k1_tarski(X17)
        | X18 = k1_tarski(X17)
        | k1_tarski(X17) != k2_xboole_0(X18,X19) )
      & ( X18 = k1_tarski(X17)
        | X18 = k1_xboole_0
        | X19 = k1_tarski(X17)
        | k1_tarski(X17) != k2_xboole_0(X18,X19) )
      & ( X19 = k1_xboole_0
        | X18 = k1_xboole_0
        | X19 = k1_tarski(X17)
        | k1_tarski(X17) != k2_xboole_0(X18,X19) )
      & ( X18 = k1_tarski(X17)
        | X19 = k1_tarski(X17)
        | X19 = k1_tarski(X17)
        | k1_tarski(X17) != k2_xboole_0(X18,X19) )
      & ( X19 = k1_xboole_0
        | X19 = k1_tarski(X17)
        | X19 = k1_tarski(X17)
        | k1_tarski(X17) != k2_xboole_0(X18,X19) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t43_zfmisc_1])])])).

cnf(c_0_13,plain,
    ( X1 = k1_xboole_0
    | X1 = k1_tarski(X2)
    | X1 = k1_tarski(X2)
    | k1_tarski(X2) != k2_xboole_0(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

fof(c_0_14,plain,(
    ! [X6,X7] : k2_xboole_0(X6,k3_xboole_0(X6,X7)) = X6 ),
    inference(variable_rename,[status(thm)],[t22_xboole_1])).

fof(c_0_15,plain,(
    ! [X15,X16] :
      ( k3_xboole_0(k1_tarski(X15),k1_tarski(X16)) != k1_tarski(X15)
      | X15 = X16 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t18_zfmisc_1])])).

cnf(c_0_16,plain,
    ( X1 = k1_xboole_0
    | X1 = k1_tarski(X2)
    | k1_tarski(X2) != k2_xboole_0(X3,X1) ),
    inference(cn,[status(thm)],[c_0_13])).

cnf(c_0_17,plain,
    ( k2_xboole_0(X1,k3_xboole_0(X1,X2)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_18,plain,(
    ! [X8,X9,X10,X11,X12,X13] :
      ( ( ~ r2_hidden(X10,X9)
        | X10 = X8
        | X9 != k1_tarski(X8) )
      & ( X11 != X8
        | r2_hidden(X11,X9)
        | X9 != k1_tarski(X8) )
      & ( ~ r2_hidden(esk1_2(X12,X13),X13)
        | esk1_2(X12,X13) != X12
        | X13 = k1_tarski(X12) )
      & ( r2_hidden(esk1_2(X12,X13),X13)
        | esk1_2(X12,X13) = X12
        | X13 = k1_tarski(X12) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).

fof(c_0_19,plain,(
    ! [X20,X21] :
      ( ( m1_subset_1(esk2_2(X20,X21),X20)
        | X21 = k1_xboole_0
        | ~ m1_subset_1(X21,k1_zfmisc_1(X20)) )
      & ( r2_hidden(esk2_2(X20,X21),X21)
        | X21 = k1_xboole_0
        | ~ m1_subset_1(X21,k1_zfmisc_1(X20)) ) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t10_subset_1])])])])])).

fof(c_0_20,plain,(
    ! [X23] : m1_subset_1(k1_tarski(k1_xboole_0),k1_zfmisc_1(k1_zfmisc_1(X23))) ),
    inference(variable_rename,[status(thm)],[t61_setfam_1])).

cnf(c_0_21,plain,
    ( X1 = X2
    | k3_xboole_0(k1_tarski(X1),k1_tarski(X2)) != k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,plain,
    ( k3_xboole_0(k1_tarski(X1),X2) = k1_tarski(X1)
    | k3_xboole_0(k1_tarski(X1),X2) = k1_xboole_0 ),
    inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17])])).

cnf(c_0_23,plain,
    ( X1 = X3
    | ~ r2_hidden(X1,X2)
    | X2 != k1_tarski(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_24,plain,
    ( r2_hidden(esk2_2(X1,X2),X2)
    | X2 = k1_xboole_0
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_25,plain,
    ( m1_subset_1(k1_tarski(k1_xboole_0),k1_zfmisc_1(k1_zfmisc_1(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_26,plain,
    ( k3_xboole_0(k1_tarski(X1),k1_tarski(X2)) = k1_xboole_0
    | X1 = X2 ),
    inference(spm,[status(thm)],[c_0_21,c_0_22])).

fof(c_0_27,negated_conjecture,(
    k3_relat_1(k1_xboole_0) != k1_xboole_0 ),
    inference(assume_negation,[status(cth)],[t63_relat_1])).

cnf(c_0_28,plain,
    ( X1 = X2
    | ~ r2_hidden(X1,k1_tarski(X2)) ),
    inference(er,[status(thm)],[c_0_23])).

cnf(c_0_29,plain,
    ( k1_tarski(k1_xboole_0) = k1_xboole_0
    | r2_hidden(esk2_2(k1_zfmisc_1(X1),k1_tarski(k1_xboole_0)),k1_tarski(k1_xboole_0)) ),
    inference(spm,[status(thm)],[c_0_24,c_0_25])).

cnf(c_0_30,plain,
    ( X1 = X2
    | k1_tarski(X1) != k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_21,c_0_26])).

fof(c_0_31,plain,(
    ! [X26] :
      ( ~ v1_relat_1(X26)
      | k3_relat_1(X26) = k2_xboole_0(k1_relat_1(X26),k2_relat_1(X26)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d6_relat_1])])).

fof(c_0_32,plain,(
    ! [X5] : k2_xboole_0(X5,k1_xboole_0) = X5 ),
    inference(variable_rename,[status(thm)],[t1_boole])).

fof(c_0_33,negated_conjecture,(
    k3_relat_1(k1_xboole_0) != k1_xboole_0 ),
    inference(fof_simplification,[status(thm)],[c_0_27])).

fof(c_0_34,plain,(
    ! [X24,X25] :
      ( ~ v1_relat_1(X24)
      | ~ m1_subset_1(X25,k1_zfmisc_1(X24))
      | v1_relat_1(X25) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).

cnf(c_0_35,plain,
    ( m1_subset_1(esk2_2(X1,X2),X1)
    | X2 = k1_xboole_0
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_36,plain,
    ( esk2_2(k1_zfmisc_1(X1),k1_tarski(k1_xboole_0)) = k1_xboole_0 ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_29]),c_0_30])).

cnf(c_0_37,plain,
    ( k3_relat_1(X1) = k2_xboole_0(k1_relat_1(X1),k2_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_38,plain,
    ( k2_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t60_relat_1])).

cnf(c_0_39,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[t60_relat_1])).

cnf(c_0_40,plain,
    ( k2_xboole_0(X1,k1_xboole_0) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_41,negated_conjecture,
    ( k3_relat_1(k1_xboole_0) != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_42,plain,
    ( v1_relat_1(X2)
    | ~ v1_relat_1(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_43,plain,
    ( k1_tarski(k1_xboole_0) = k1_xboole_0
    | m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_36]),c_0_25])])).

cnf(c_0_44,plain,
    ( ~ v1_relat_1(k1_xboole_0) ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_38]),c_0_39]),c_0_40]),c_0_41])).

fof(c_0_45,plain,(
    ! [X27,X28,X29,X30] : v1_relat_1(k2_tarski(k4_tarski(X27,X28),k4_tarski(X29,X30))) ),
    inference(variable_rename,[status(thm)],[fc7_relat_1])).

cnf(c_0_46,plain,
    ( k1_tarski(k1_xboole_0) = k1_xboole_0
    | ~ v1_relat_1(X1) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_42,c_0_43]),c_0_44])).

cnf(c_0_47,plain,
    ( v1_relat_1(k2_tarski(k4_tarski(X1,X2),k4_tarski(X3,X4))) ),
    inference(split_conjunct,[status(thm)],[c_0_45])).

cnf(c_0_48,plain,
    ( k1_tarski(k1_xboole_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_46,c_0_47])).

cnf(c_0_49,plain,
    ( k1_xboole_0 = X1 ),
    inference(spm,[status(thm)],[c_0_30,c_0_48])).

cnf(c_0_50,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_41,c_0_49])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n014.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:07:37 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S015I
% 0.20/0.37  # and selection function PSelectOptimalLit.
% 0.20/0.37  #
% 0.20/0.37  # Preprocessing time       : 0.028 s
% 0.20/0.37  # Presaturation interreduction done
% 0.20/0.37  
% 0.20/0.37  # Proof found!
% 0.20/0.37  # SZS status Theorem
% 0.20/0.37  # SZS output start CNFRefutation
% 0.20/0.37  fof(t43_zfmisc_1, axiom, ![X1, X2, X3]:~((((k1_tarski(X1)=k2_xboole_0(X2,X3)&~((X2=k1_tarski(X1)&X3=k1_tarski(X1))))&~((X2=k1_xboole_0&X3=k1_tarski(X1))))&~((X2=k1_tarski(X1)&X3=k1_xboole_0)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t43_zfmisc_1)).
% 0.20/0.37  fof(t22_xboole_1, axiom, ![X1, X2]:k2_xboole_0(X1,k3_xboole_0(X1,X2))=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t22_xboole_1)).
% 0.20/0.37  fof(t18_zfmisc_1, axiom, ![X1, X2]:(k3_xboole_0(k1_tarski(X1),k1_tarski(X2))=k1_tarski(X1)=>X1=X2), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t18_zfmisc_1)).
% 0.20/0.37  fof(d1_tarski, axiom, ![X1, X2]:(X2=k1_tarski(X1)<=>![X3]:(r2_hidden(X3,X2)<=>X3=X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_tarski)).
% 0.20/0.37  fof(t10_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>~((X2!=k1_xboole_0&![X3]:(m1_subset_1(X3,X1)=>~(r2_hidden(X3,X2)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t10_subset_1)).
% 0.20/0.37  fof(t61_setfam_1, axiom, ![X1]:m1_subset_1(k1_tarski(k1_xboole_0),k1_zfmisc_1(k1_zfmisc_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t61_setfam_1)).
% 0.20/0.37  fof(t63_relat_1, conjecture, k3_relat_1(k1_xboole_0)=k1_xboole_0, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t63_relat_1)).
% 0.20/0.37  fof(d6_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>k3_relat_1(X1)=k2_xboole_0(k1_relat_1(X1),k2_relat_1(X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d6_relat_1)).
% 0.20/0.37  fof(t1_boole, axiom, ![X1]:k2_xboole_0(X1,k1_xboole_0)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_boole)).
% 0.20/0.37  fof(cc2_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>v1_relat_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relat_1)).
% 0.20/0.37  fof(t60_relat_1, axiom, (k1_relat_1(k1_xboole_0)=k1_xboole_0&k2_relat_1(k1_xboole_0)=k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t60_relat_1)).
% 0.20/0.37  fof(fc7_relat_1, axiom, ![X1, X2, X3, X4]:v1_relat_1(k2_tarski(k4_tarski(X1,X2),k4_tarski(X3,X4))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc7_relat_1)).
% 0.20/0.37  fof(c_0_12, plain, ![X17, X18, X19]:((((X18=k1_tarski(X17)|(X18=k1_xboole_0|(X18=k1_tarski(X17)|k1_tarski(X17)!=k2_xboole_0(X18,X19))))&(X19=k1_xboole_0|(X18=k1_xboole_0|(X18=k1_tarski(X17)|k1_tarski(X17)!=k2_xboole_0(X18,X19)))))&((X18=k1_tarski(X17)|(X19=k1_tarski(X17)|(X18=k1_tarski(X17)|k1_tarski(X17)!=k2_xboole_0(X18,X19))))&(X19=k1_xboole_0|(X19=k1_tarski(X17)|(X18=k1_tarski(X17)|k1_tarski(X17)!=k2_xboole_0(X18,X19))))))&(((X18=k1_tarski(X17)|(X18=k1_xboole_0|(X19=k1_tarski(X17)|k1_tarski(X17)!=k2_xboole_0(X18,X19))))&(X19=k1_xboole_0|(X18=k1_xboole_0|(X19=k1_tarski(X17)|k1_tarski(X17)!=k2_xboole_0(X18,X19)))))&((X18=k1_tarski(X17)|(X19=k1_tarski(X17)|(X19=k1_tarski(X17)|k1_tarski(X17)!=k2_xboole_0(X18,X19))))&(X19=k1_xboole_0|(X19=k1_tarski(X17)|(X19=k1_tarski(X17)|k1_tarski(X17)!=k2_xboole_0(X18,X19))))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t43_zfmisc_1])])])).
% 0.20/0.37  cnf(c_0_13, plain, (X1=k1_xboole_0|X1=k1_tarski(X2)|X1=k1_tarski(X2)|k1_tarski(X2)!=k2_xboole_0(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.20/0.37  fof(c_0_14, plain, ![X6, X7]:k2_xboole_0(X6,k3_xboole_0(X6,X7))=X6, inference(variable_rename,[status(thm)],[t22_xboole_1])).
% 0.20/0.37  fof(c_0_15, plain, ![X15, X16]:(k3_xboole_0(k1_tarski(X15),k1_tarski(X16))!=k1_tarski(X15)|X15=X16), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t18_zfmisc_1])])).
% 0.20/0.37  cnf(c_0_16, plain, (X1=k1_xboole_0|X1=k1_tarski(X2)|k1_tarski(X2)!=k2_xboole_0(X3,X1)), inference(cn,[status(thm)],[c_0_13])).
% 0.20/0.37  cnf(c_0_17, plain, (k2_xboole_0(X1,k3_xboole_0(X1,X2))=X1), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.20/0.37  fof(c_0_18, plain, ![X8, X9, X10, X11, X12, X13]:(((~r2_hidden(X10,X9)|X10=X8|X9!=k1_tarski(X8))&(X11!=X8|r2_hidden(X11,X9)|X9!=k1_tarski(X8)))&((~r2_hidden(esk1_2(X12,X13),X13)|esk1_2(X12,X13)!=X12|X13=k1_tarski(X12))&(r2_hidden(esk1_2(X12,X13),X13)|esk1_2(X12,X13)=X12|X13=k1_tarski(X12)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_tarski])])])])])])).
% 0.20/0.37  fof(c_0_19, plain, ![X20, X21]:((m1_subset_1(esk2_2(X20,X21),X20)|X21=k1_xboole_0|~m1_subset_1(X21,k1_zfmisc_1(X20)))&(r2_hidden(esk2_2(X20,X21),X21)|X21=k1_xboole_0|~m1_subset_1(X21,k1_zfmisc_1(X20)))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t10_subset_1])])])])])).
% 0.20/0.37  fof(c_0_20, plain, ![X23]:m1_subset_1(k1_tarski(k1_xboole_0),k1_zfmisc_1(k1_zfmisc_1(X23))), inference(variable_rename,[status(thm)],[t61_setfam_1])).
% 0.20/0.37  cnf(c_0_21, plain, (X1=X2|k3_xboole_0(k1_tarski(X1),k1_tarski(X2))!=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.20/0.37  cnf(c_0_22, plain, (k3_xboole_0(k1_tarski(X1),X2)=k1_tarski(X1)|k3_xboole_0(k1_tarski(X1),X2)=k1_xboole_0), inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_17])])).
% 0.20/0.37  cnf(c_0_23, plain, (X1=X3|~r2_hidden(X1,X2)|X2!=k1_tarski(X3)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.37  cnf(c_0_24, plain, (r2_hidden(esk2_2(X1,X2),X2)|X2=k1_xboole_0|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.37  cnf(c_0_25, plain, (m1_subset_1(k1_tarski(k1_xboole_0),k1_zfmisc_1(k1_zfmisc_1(X1)))), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.20/0.37  cnf(c_0_26, plain, (k3_xboole_0(k1_tarski(X1),k1_tarski(X2))=k1_xboole_0|X1=X2), inference(spm,[status(thm)],[c_0_21, c_0_22])).
% 0.20/0.37  fof(c_0_27, negated_conjecture, ~(k3_relat_1(k1_xboole_0)=k1_xboole_0), inference(assume_negation,[status(cth)],[t63_relat_1])).
% 0.20/0.37  cnf(c_0_28, plain, (X1=X2|~r2_hidden(X1,k1_tarski(X2))), inference(er,[status(thm)],[c_0_23])).
% 0.20/0.37  cnf(c_0_29, plain, (k1_tarski(k1_xboole_0)=k1_xboole_0|r2_hidden(esk2_2(k1_zfmisc_1(X1),k1_tarski(k1_xboole_0)),k1_tarski(k1_xboole_0))), inference(spm,[status(thm)],[c_0_24, c_0_25])).
% 0.20/0.37  cnf(c_0_30, plain, (X1=X2|k1_tarski(X1)!=k1_xboole_0), inference(spm,[status(thm)],[c_0_21, c_0_26])).
% 0.20/0.37  fof(c_0_31, plain, ![X26]:(~v1_relat_1(X26)|k3_relat_1(X26)=k2_xboole_0(k1_relat_1(X26),k2_relat_1(X26))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d6_relat_1])])).
% 0.20/0.37  fof(c_0_32, plain, ![X5]:k2_xboole_0(X5,k1_xboole_0)=X5, inference(variable_rename,[status(thm)],[t1_boole])).
% 0.20/0.37  fof(c_0_33, negated_conjecture, k3_relat_1(k1_xboole_0)!=k1_xboole_0, inference(fof_simplification,[status(thm)],[c_0_27])).
% 0.20/0.37  fof(c_0_34, plain, ![X24, X25]:(~v1_relat_1(X24)|(~m1_subset_1(X25,k1_zfmisc_1(X24))|v1_relat_1(X25))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relat_1])])])).
% 0.20/0.37  cnf(c_0_35, plain, (m1_subset_1(esk2_2(X1,X2),X1)|X2=k1_xboole_0|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.37  cnf(c_0_36, plain, (esk2_2(k1_zfmisc_1(X1),k1_tarski(k1_xboole_0))=k1_xboole_0), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_29]), c_0_30])).
% 0.20/0.37  cnf(c_0_37, plain, (k3_relat_1(X1)=k2_xboole_0(k1_relat_1(X1),k2_relat_1(X1))|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.20/0.37  cnf(c_0_38, plain, (k2_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t60_relat_1])).
% 0.20/0.37  cnf(c_0_39, plain, (k1_relat_1(k1_xboole_0)=k1_xboole_0), inference(split_conjunct,[status(thm)],[t60_relat_1])).
% 0.20/0.37  cnf(c_0_40, plain, (k2_xboole_0(X1,k1_xboole_0)=X1), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.20/0.37  cnf(c_0_41, negated_conjecture, (k3_relat_1(k1_xboole_0)!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.20/0.37  cnf(c_0_42, plain, (v1_relat_1(X2)|~v1_relat_1(X1)|~m1_subset_1(X2,k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.37  cnf(c_0_43, plain, (k1_tarski(k1_xboole_0)=k1_xboole_0|m1_subset_1(k1_xboole_0,k1_zfmisc_1(X1))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_36]), c_0_25])])).
% 0.20/0.37  cnf(c_0_44, plain, (~v1_relat_1(k1_xboole_0)), inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_38]), c_0_39]), c_0_40]), c_0_41])).
% 0.20/0.37  fof(c_0_45, plain, ![X27, X28, X29, X30]:v1_relat_1(k2_tarski(k4_tarski(X27,X28),k4_tarski(X29,X30))), inference(variable_rename,[status(thm)],[fc7_relat_1])).
% 0.20/0.37  cnf(c_0_46, plain, (k1_tarski(k1_xboole_0)=k1_xboole_0|~v1_relat_1(X1)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_42, c_0_43]), c_0_44])).
% 0.20/0.37  cnf(c_0_47, plain, (v1_relat_1(k2_tarski(k4_tarski(X1,X2),k4_tarski(X3,X4)))), inference(split_conjunct,[status(thm)],[c_0_45])).
% 0.20/0.37  cnf(c_0_48, plain, (k1_tarski(k1_xboole_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_46, c_0_47])).
% 0.20/0.37  cnf(c_0_49, plain, (k1_xboole_0=X1), inference(spm,[status(thm)],[c_0_30, c_0_48])).
% 0.20/0.37  cnf(c_0_50, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_41, c_0_49])]), ['proof']).
% 0.20/0.37  # SZS output end CNFRefutation
% 0.20/0.37  # Proof object total steps             : 51
% 0.20/0.37  # Proof object clause steps            : 27
% 0.20/0.37  # Proof object formula steps           : 24
% 0.20/0.37  # Proof object conjectures             : 5
% 0.20/0.37  # Proof object clause conjectures      : 2
% 0.20/0.37  # Proof object formula conjectures     : 3
% 0.20/0.37  # Proof object initial clauses used    : 14
% 0.20/0.37  # Proof object initial formulas used   : 12
% 0.20/0.37  # Proof object generating inferences   : 10
% 0.20/0.37  # Proof object simplifying inferences  : 12
% 0.20/0.37  # Training examples: 0 positive, 0 negative
% 0.20/0.37  # Parsed axioms                        : 12
% 0.20/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.37  # Initial clauses                      : 24
% 0.20/0.37  # Removed in clause preprocessing      : 0
% 0.20/0.37  # Initial clauses in saturation        : 24
% 0.20/0.37  # Processed clauses                    : 67
% 0.20/0.37  # ...of these trivial                  : 0
% 0.20/0.37  # ...subsumed                          : 10
% 0.20/0.37  # ...remaining for further processing  : 57
% 0.20/0.37  # Other redundant clauses eliminated   : 9
% 0.20/0.37  # Clauses deleted for lack of memory   : 0
% 0.20/0.37  # Backward-subsumed                    : 1
% 0.20/0.37  # Backward-rewritten                   : 33
% 0.20/0.37  # Generated clauses                    : 71
% 0.20/0.37  # ...of the previous two non-trivial   : 61
% 0.20/0.37  # Contextual simplify-reflections      : 1
% 0.20/0.37  # Paramodulations                      : 50
% 0.20/0.37  # Factorizations                       : 13
% 0.20/0.37  # Equation resolutions                 : 9
% 0.20/0.37  # Propositional unsat checks           : 0
% 0.20/0.37  #    Propositional check models        : 0
% 0.20/0.37  #    Propositional check unsatisfiable : 0
% 0.20/0.37  #    Propositional clauses             : 0
% 0.20/0.37  #    Propositional clauses after purity: 0
% 0.20/0.37  #    Propositional unsat core size     : 0
% 0.20/0.37  #    Propositional preprocessing time  : 0.000
% 0.20/0.37  #    Propositional encoding time       : 0.000
% 0.20/0.37  #    Propositional solver time         : 0.000
% 0.20/0.37  #    Success case prop preproc time    : 0.000
% 0.20/0.37  #    Success case prop encoding time   : 0.000
% 0.20/0.37  #    Success case prop solver time     : 0.000
% 0.20/0.37  # Current number of processed clauses  : 2
% 0.20/0.37  #    Positive orientable unit clauses  : 0
% 0.20/0.37  #    Positive unorientable unit clauses: 1
% 0.20/0.37  #    Negative unit clauses             : 1
% 0.20/0.37  #    Non-unit-clauses                  : 0
% 0.20/0.37  # Current number of unprocessed clauses: 23
% 0.20/0.37  # ...number of literals in the above   : 49
% 0.20/0.37  # Current number of archived formulas  : 0
% 0.20/0.37  # Current number of archived clauses   : 53
% 0.20/0.37  # Clause-clause subsumption calls (NU) : 81
% 0.20/0.37  # Rec. Clause-clause subsumption calls : 76
% 0.20/0.37  # Non-unit clause-clause subsumptions  : 10
% 0.20/0.37  # Unit Clause-clause subsumption calls : 5
% 0.20/0.37  # Rewrite failures with RHS unbound    : 5
% 0.20/0.37  # BW rewrite match attempts            : 37
% 0.20/0.37  # BW rewrite match successes           : 34
% 0.20/0.37  # Condensation attempts                : 0
% 0.20/0.37  # Condensation successes               : 0
% 0.20/0.37  # Termbank termtop insertions          : 1898
% 0.20/0.37  
% 0.20/0.37  # -------------------------------------------------
% 0.20/0.37  # User time                : 0.031 s
% 0.20/0.37  # System time              : 0.004 s
% 0.20/0.37  # Total time               : 0.034 s
% 0.20/0.37  # Maximum resident set size: 1572 pages
%------------------------------------------------------------------------------
