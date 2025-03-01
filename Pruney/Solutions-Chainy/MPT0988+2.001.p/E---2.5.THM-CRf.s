%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n005.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:02:57 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   89 (14977 expanded)
%              Number of clauses        :   76 (5245 expanded)
%              Number of leaves         :    6 (3639 expanded)
%              Depth                    :   19
%              Number of atoms          :  493 (194665 expanded)
%              Number of equality atoms :  203 (81212 expanded)
%              Maximal formula depth    :   31 (   5 average)
%              Maximal clause size      :  130 (   3 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t34_funct_2,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ! [X4] :
          ( ( v1_funct_1(X4)
            & v1_funct_2(X4,X2,X1)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) )
         => ( ( k2_relset_1(X1,X2,X3) = X2
              & v2_funct_1(X3)
              & ! [X5,X6] :
                  ( ( ( r2_hidden(X5,X2)
                      & k1_funct_1(X4,X5) = X6 )
                   => ( r2_hidden(X6,X1)
                      & k1_funct_1(X3,X6) = X5 ) )
                  & ( ( r2_hidden(X6,X1)
                      & k1_funct_1(X3,X6) = X5 )
                   => ( r2_hidden(X5,X2)
                      & k1_funct_1(X4,X5) = X6 ) ) ) )
           => ( X1 = k1_xboole_0
              | X2 = k1_xboole_0
              | X4 = k2_funct_1(X3) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t34_funct_2)).

fof(redefinition_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k2_relset_1(X1,X2,X3) = k2_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relset_1)).

fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(t54_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ! [X2] :
            ( ( v1_relat_1(X2)
              & v1_funct_1(X2) )
           => ( X2 = k2_funct_1(X1)
            <=> ( k1_relat_1(X2) = k2_relat_1(X1)
                & ! [X3,X4] :
                    ( ( ( r2_hidden(X3,k2_relat_1(X1))
                        & X4 = k1_funct_1(X2,X3) )
                     => ( r2_hidden(X4,k1_relat_1(X1))
                        & X3 = k1_funct_1(X1,X4) ) )
                    & ( ( r2_hidden(X4,k1_relat_1(X1))
                        & X3 = k1_funct_1(X1,X4) )
                     => ( r2_hidden(X3,k2_relat_1(X1))
                        & X4 = k1_funct_1(X2,X3) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t54_funct_1)).

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

fof(c_0_6,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_funct_1(X3)
          & v1_funct_2(X3,X1,X2)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
       => ! [X4] :
            ( ( v1_funct_1(X4)
              & v1_funct_2(X4,X2,X1)
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) )
           => ( ( k2_relset_1(X1,X2,X3) = X2
                & v2_funct_1(X3)
                & ! [X5,X6] :
                    ( ( ( r2_hidden(X5,X2)
                        & k1_funct_1(X4,X5) = X6 )
                     => ( r2_hidden(X6,X1)
                        & k1_funct_1(X3,X6) = X5 ) )
                    & ( ( r2_hidden(X6,X1)
                        & k1_funct_1(X3,X6) = X5 )
                     => ( r2_hidden(X5,X2)
                        & k1_funct_1(X4,X5) = X6 ) ) ) )
             => ( X1 = k1_xboole_0
                | X2 = k1_xboole_0
                | X4 = k2_funct_1(X3) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t34_funct_2])).

fof(c_0_7,plain,(
    ! [X23,X24,X25] :
      ( ~ m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))
      | k2_relset_1(X23,X24,X25) = k2_relat_1(X25) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).

fof(c_0_8,negated_conjecture,(
    ! [X33,X34] :
      ( v1_funct_1(esk7_0)
      & v1_funct_2(esk7_0,esk5_0,esk6_0)
      & m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk5_0,esk6_0)))
      & v1_funct_1(esk8_0)
      & v1_funct_2(esk8_0,esk6_0,esk5_0)
      & m1_subset_1(esk8_0,k1_zfmisc_1(k2_zfmisc_1(esk6_0,esk5_0)))
      & k2_relset_1(esk5_0,esk6_0,esk7_0) = esk6_0
      & v2_funct_1(esk7_0)
      & ( r2_hidden(X34,esk5_0)
        | ~ r2_hidden(X33,esk6_0)
        | k1_funct_1(esk8_0,X33) != X34 )
      & ( k1_funct_1(esk7_0,X34) = X33
        | ~ r2_hidden(X33,esk6_0)
        | k1_funct_1(esk8_0,X33) != X34 )
      & ( r2_hidden(X33,esk6_0)
        | ~ r2_hidden(X34,esk5_0)
        | k1_funct_1(esk7_0,X34) != X33 )
      & ( k1_funct_1(esk8_0,X33) = X34
        | ~ r2_hidden(X34,esk5_0)
        | k1_funct_1(esk7_0,X34) != X33 )
      & esk5_0 != k1_xboole_0
      & esk6_0 != k1_xboole_0
      & esk8_0 != k2_funct_1(esk7_0) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])])])).

fof(c_0_9,plain,(
    ! [X17,X18,X19] :
      ( ~ m1_subset_1(X19,k1_zfmisc_1(k2_zfmisc_1(X17,X18)))
      | v1_relat_1(X19) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

fof(c_0_10,plain,(
    ! [X20,X21,X22] :
      ( ~ m1_subset_1(X22,k1_zfmisc_1(k2_zfmisc_1(X20,X21)))
      | k1_relset_1(X20,X21,X22) = k1_relat_1(X22) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

fof(c_0_11,plain,(
    ! [X7,X8,X9,X10,X11,X12] :
      ( ( k1_relat_1(X8) = k2_relat_1(X7)
        | X8 != k2_funct_1(X7)
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X7)
        | ~ v1_relat_1(X7)
        | ~ v1_funct_1(X7) )
      & ( r2_hidden(X10,k1_relat_1(X7))
        | ~ r2_hidden(X9,k2_relat_1(X7))
        | X10 != k1_funct_1(X8,X9)
        | X8 != k2_funct_1(X7)
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X7)
        | ~ v1_relat_1(X7)
        | ~ v1_funct_1(X7) )
      & ( X9 = k1_funct_1(X7,X10)
        | ~ r2_hidden(X9,k2_relat_1(X7))
        | X10 != k1_funct_1(X8,X9)
        | X8 != k2_funct_1(X7)
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X7)
        | ~ v1_relat_1(X7)
        | ~ v1_funct_1(X7) )
      & ( r2_hidden(X11,k2_relat_1(X7))
        | ~ r2_hidden(X12,k1_relat_1(X7))
        | X11 != k1_funct_1(X7,X12)
        | X8 != k2_funct_1(X7)
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X7)
        | ~ v1_relat_1(X7)
        | ~ v1_funct_1(X7) )
      & ( X12 = k1_funct_1(X8,X11)
        | ~ r2_hidden(X12,k1_relat_1(X7))
        | X11 != k1_funct_1(X7,X12)
        | X8 != k2_funct_1(X7)
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X7)
        | ~ v1_relat_1(X7)
        | ~ v1_funct_1(X7) )
      & ( r2_hidden(esk4_2(X7,X8),k1_relat_1(X7))
        | r2_hidden(esk1_2(X7,X8),k2_relat_1(X7))
        | k1_relat_1(X8) != k2_relat_1(X7)
        | X8 = k2_funct_1(X7)
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X7)
        | ~ v1_relat_1(X7)
        | ~ v1_funct_1(X7) )
      & ( esk3_2(X7,X8) = k1_funct_1(X7,esk4_2(X7,X8))
        | r2_hidden(esk1_2(X7,X8),k2_relat_1(X7))
        | k1_relat_1(X8) != k2_relat_1(X7)
        | X8 = k2_funct_1(X7)
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X7)
        | ~ v1_relat_1(X7)
        | ~ v1_funct_1(X7) )
      & ( ~ r2_hidden(esk3_2(X7,X8),k2_relat_1(X7))
        | esk4_2(X7,X8) != k1_funct_1(X8,esk3_2(X7,X8))
        | r2_hidden(esk1_2(X7,X8),k2_relat_1(X7))
        | k1_relat_1(X8) != k2_relat_1(X7)
        | X8 = k2_funct_1(X7)
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X7)
        | ~ v1_relat_1(X7)
        | ~ v1_funct_1(X7) )
      & ( r2_hidden(esk4_2(X7,X8),k1_relat_1(X7))
        | esk2_2(X7,X8) = k1_funct_1(X8,esk1_2(X7,X8))
        | k1_relat_1(X8) != k2_relat_1(X7)
        | X8 = k2_funct_1(X7)
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X7)
        | ~ v1_relat_1(X7)
        | ~ v1_funct_1(X7) )
      & ( esk3_2(X7,X8) = k1_funct_1(X7,esk4_2(X7,X8))
        | esk2_2(X7,X8) = k1_funct_1(X8,esk1_2(X7,X8))
        | k1_relat_1(X8) != k2_relat_1(X7)
        | X8 = k2_funct_1(X7)
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X7)
        | ~ v1_relat_1(X7)
        | ~ v1_funct_1(X7) )
      & ( ~ r2_hidden(esk3_2(X7,X8),k2_relat_1(X7))
        | esk4_2(X7,X8) != k1_funct_1(X8,esk3_2(X7,X8))
        | esk2_2(X7,X8) = k1_funct_1(X8,esk1_2(X7,X8))
        | k1_relat_1(X8) != k2_relat_1(X7)
        | X8 = k2_funct_1(X7)
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X7)
        | ~ v1_relat_1(X7)
        | ~ v1_funct_1(X7) )
      & ( r2_hidden(esk4_2(X7,X8),k1_relat_1(X7))
        | ~ r2_hidden(esk2_2(X7,X8),k1_relat_1(X7))
        | esk1_2(X7,X8) != k1_funct_1(X7,esk2_2(X7,X8))
        | k1_relat_1(X8) != k2_relat_1(X7)
        | X8 = k2_funct_1(X7)
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X7)
        | ~ v1_relat_1(X7)
        | ~ v1_funct_1(X7) )
      & ( esk3_2(X7,X8) = k1_funct_1(X7,esk4_2(X7,X8))
        | ~ r2_hidden(esk2_2(X7,X8),k1_relat_1(X7))
        | esk1_2(X7,X8) != k1_funct_1(X7,esk2_2(X7,X8))
        | k1_relat_1(X8) != k2_relat_1(X7)
        | X8 = k2_funct_1(X7)
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X7)
        | ~ v1_relat_1(X7)
        | ~ v1_funct_1(X7) )
      & ( ~ r2_hidden(esk3_2(X7,X8),k2_relat_1(X7))
        | esk4_2(X7,X8) != k1_funct_1(X8,esk3_2(X7,X8))
        | ~ r2_hidden(esk2_2(X7,X8),k1_relat_1(X7))
        | esk1_2(X7,X8) != k1_funct_1(X7,esk2_2(X7,X8))
        | k1_relat_1(X8) != k2_relat_1(X7)
        | X8 = k2_funct_1(X7)
        | ~ v1_relat_1(X8)
        | ~ v1_funct_1(X8)
        | ~ v2_funct_1(X7)
        | ~ v1_relat_1(X7)
        | ~ v1_funct_1(X7) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[t54_funct_1])])])])])])).

cnf(c_0_12,plain,
    ( k2_relset_1(X2,X3,X1) = k2_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_13,negated_conjecture,
    ( m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk5_0,esk6_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_14,negated_conjecture,
    ( k2_relset_1(esk5_0,esk6_0,esk7_0) = esk6_0 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_15,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_16,plain,(
    ! [X26,X27,X28] :
      ( ( ~ v1_funct_2(X28,X26,X27)
        | X26 = k1_relset_1(X26,X27,X28)
        | X27 = k1_xboole_0
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) )
      & ( X26 != k1_relset_1(X26,X27,X28)
        | v1_funct_2(X28,X26,X27)
        | X27 = k1_xboole_0
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) )
      & ( ~ v1_funct_2(X28,X26,X27)
        | X26 = k1_relset_1(X26,X27,X28)
        | X26 != k1_xboole_0
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) )
      & ( X26 != k1_relset_1(X26,X27,X28)
        | v1_funct_2(X28,X26,X27)
        | X26 != k1_xboole_0
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) )
      & ( ~ v1_funct_2(X28,X26,X27)
        | X28 = k1_xboole_0
        | X26 = k1_xboole_0
        | X27 != k1_xboole_0
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) )
      & ( X28 != k1_xboole_0
        | v1_funct_2(X28,X26,X27)
        | X26 = k1_xboole_0
        | X27 != k1_xboole_0
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_17,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_18,negated_conjecture,
    ( m1_subset_1(esk8_0,k1_zfmisc_1(k2_zfmisc_1(esk6_0,esk5_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_19,plain,
    ( esk3_2(X1,X2) = k1_funct_1(X1,esk4_2(X1,X2))
    | r2_hidden(esk1_2(X1,X2),k2_relat_1(X1))
    | X2 = k2_funct_1(X1)
    | k1_relat_1(X2) != k2_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_20,negated_conjecture,
    ( v2_funct_1(esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_21,negated_conjecture,
    ( k2_relat_1(esk7_0) = esk6_0 ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_12,c_0_13]),c_0_14])).

cnf(c_0_22,negated_conjecture,
    ( v1_funct_1(esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_23,negated_conjecture,
    ( v1_relat_1(esk7_0) ),
    inference(spm,[status(thm)],[c_0_15,c_0_13])).

cnf(c_0_24,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_25,negated_conjecture,
    ( k1_relset_1(esk6_0,esk5_0,esk8_0) = k1_relat_1(esk8_0) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_26,negated_conjecture,
    ( v1_funct_2(esk8_0,esk6_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_27,negated_conjecture,
    ( esk5_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_28,negated_conjecture,
    ( r2_hidden(X1,esk5_0)
    | ~ r2_hidden(X2,esk6_0)
    | k1_funct_1(esk8_0,X2) != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_29,negated_conjecture,
    ( k1_funct_1(esk7_0,esk4_2(esk7_0,X1)) = esk3_2(esk7_0,X1)
    | X1 = k2_funct_1(esk7_0)
    | r2_hidden(esk1_2(esk7_0,X1),esk6_0)
    | k1_relat_1(X1) != esk6_0
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_21]),c_0_21]),c_0_22]),c_0_23])])).

cnf(c_0_30,negated_conjecture,
    ( k1_relat_1(esk8_0) = esk6_0 ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_18]),c_0_25]),c_0_26])]),c_0_27])).

cnf(c_0_31,negated_conjecture,
    ( v1_funct_1(esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_32,negated_conjecture,
    ( v1_relat_1(esk8_0) ),
    inference(spm,[status(thm)],[c_0_15,c_0_18])).

cnf(c_0_33,negated_conjecture,
    ( esk8_0 != k2_funct_1(esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_34,plain,
    ( esk3_2(X1,X2) = k1_funct_1(X1,esk4_2(X1,X2))
    | esk2_2(X1,X2) = k1_funct_1(X2,esk1_2(X1,X2))
    | X2 = k2_funct_1(X1)
    | k1_relat_1(X2) != k2_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_35,negated_conjecture,
    ( k1_relset_1(esk5_0,esk6_0,esk7_0) = k1_relat_1(esk7_0) ),
    inference(spm,[status(thm)],[c_0_17,c_0_13])).

cnf(c_0_36,negated_conjecture,
    ( v1_funct_2(esk7_0,esk5_0,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_37,negated_conjecture,
    ( esk6_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_38,negated_conjecture,
    ( r2_hidden(k1_funct_1(esk8_0,X1),esk5_0)
    | ~ r2_hidden(X1,esk6_0) ),
    inference(er,[status(thm)],[c_0_28])).

cnf(c_0_39,negated_conjecture,
    ( k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0)) = esk3_2(esk7_0,esk8_0)
    | r2_hidden(esk1_2(esk7_0,esk8_0),esk6_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_31]),c_0_32])]),c_0_33])).

cnf(c_0_40,negated_conjecture,
    ( k1_funct_1(esk7_0,esk4_2(esk7_0,X1)) = esk3_2(esk7_0,X1)
    | k1_funct_1(X1,esk1_2(esk7_0,X1)) = esk2_2(esk7_0,X1)
    | X1 = k2_funct_1(esk7_0)
    | k1_relat_1(X1) != esk6_0
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_20]),c_0_21]),c_0_22]),c_0_23])])).

cnf(c_0_41,plain,
    ( r2_hidden(esk4_2(X1,X2),k1_relat_1(X1))
    | r2_hidden(esk1_2(X1,X2),k2_relat_1(X1))
    | X2 = k2_funct_1(X1)
    | k1_relat_1(X2) != k2_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_42,negated_conjecture,
    ( k1_relat_1(esk7_0) = esk5_0 ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_13]),c_0_35]),c_0_36])]),c_0_37])).

cnf(c_0_43,negated_conjecture,
    ( k1_funct_1(esk7_0,X1) = X2
    | ~ r2_hidden(X2,esk6_0)
    | k1_funct_1(esk8_0,X2) != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_44,plain,
    ( esk3_2(X1,X2) = k1_funct_1(X1,esk4_2(X1,X2))
    | X2 = k2_funct_1(X1)
    | ~ r2_hidden(esk2_2(X1,X2),k1_relat_1(X1))
    | esk1_2(X1,X2) != k1_funct_1(X1,esk2_2(X1,X2))
    | k1_relat_1(X2) != k2_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_45,negated_conjecture,
    ( k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0)) = esk3_2(esk7_0,esk8_0)
    | r2_hidden(k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0)),esk5_0) ),
    inference(spm,[status(thm)],[c_0_38,c_0_39])).

cnf(c_0_46,negated_conjecture,
    ( k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0)) = esk2_2(esk7_0,esk8_0)
    | k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0)) = esk3_2(esk7_0,esk8_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_30]),c_0_31]),c_0_32])]),c_0_33])).

cnf(c_0_47,negated_conjecture,
    ( r2_hidden(X1,esk6_0)
    | ~ r2_hidden(X2,esk5_0)
    | k1_funct_1(esk7_0,X2) != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_48,negated_conjecture,
    ( X1 = k2_funct_1(esk7_0)
    | r2_hidden(esk4_2(esk7_0,X1),esk5_0)
    | r2_hidden(esk1_2(esk7_0,X1),esk6_0)
    | k1_relat_1(X1) != esk6_0
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_20]),c_0_21]),c_0_42]),c_0_21]),c_0_22]),c_0_23])])).

cnf(c_0_49,negated_conjecture,
    ( k1_funct_1(esk7_0,k1_funct_1(esk8_0,X1)) = X1
    | ~ r2_hidden(X1,esk6_0) ),
    inference(er,[status(thm)],[c_0_43])).

cnf(c_0_50,negated_conjecture,
    ( k1_funct_1(esk7_0,esk4_2(esk7_0,X1)) = esk3_2(esk7_0,X1)
    | X1 = k2_funct_1(esk7_0)
    | k1_funct_1(esk7_0,esk2_2(esk7_0,X1)) != esk1_2(esk7_0,X1)
    | k1_relat_1(X1) != esk6_0
    | ~ r2_hidden(esk2_2(esk7_0,X1),esk5_0)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_42]),c_0_21]),c_0_20]),c_0_22]),c_0_23])])).

cnf(c_0_51,negated_conjecture,
    ( k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0)) = esk3_2(esk7_0,esk8_0)
    | r2_hidden(esk2_2(esk7_0,esk8_0),esk5_0) ),
    inference(spm,[status(thm)],[c_0_45,c_0_46])).

cnf(c_0_52,plain,
    ( r2_hidden(esk4_2(X1,X2),k1_relat_1(X1))
    | esk2_2(X1,X2) = k1_funct_1(X2,esk1_2(X1,X2))
    | X2 = k2_funct_1(X1)
    | k1_relat_1(X2) != k2_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_53,negated_conjecture,
    ( r2_hidden(k1_funct_1(esk7_0,X1),esk6_0)
    | ~ r2_hidden(X1,esk5_0) ),
    inference(er,[status(thm)],[c_0_47])).

cnf(c_0_54,negated_conjecture,
    ( r2_hidden(esk1_2(esk7_0,esk8_0),esk6_0)
    | r2_hidden(esk4_2(esk7_0,esk8_0),esk5_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_30]),c_0_31]),c_0_32])]),c_0_33])).

cnf(c_0_55,negated_conjecture,
    ( k1_funct_1(esk7_0,k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0))) = esk1_2(esk7_0,esk8_0)
    | k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0)) = esk3_2(esk7_0,esk8_0) ),
    inference(spm,[status(thm)],[c_0_49,c_0_39])).

cnf(c_0_56,negated_conjecture,
    ( k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0)) = esk3_2(esk7_0,esk8_0)
    | k1_funct_1(esk7_0,esk2_2(esk7_0,esk8_0)) != esk1_2(esk7_0,esk8_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_30]),c_0_31]),c_0_32])]),c_0_33])).

cnf(c_0_57,negated_conjecture,
    ( k1_funct_1(X1,esk1_2(esk7_0,X1)) = esk2_2(esk7_0,X1)
    | X1 = k2_funct_1(esk7_0)
    | r2_hidden(esk4_2(esk7_0,X1),esk5_0)
    | k1_relat_1(X1) != esk6_0
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_20]),c_0_42]),c_0_21]),c_0_22]),c_0_23])])).

cnf(c_0_58,negated_conjecture,
    ( k1_funct_1(esk8_0,X1) = X2
    | ~ r2_hidden(X2,esk5_0)
    | k1_funct_1(esk7_0,X2) != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_59,plain,
    ( r2_hidden(esk1_2(X1,X2),k2_relat_1(X1))
    | X2 = k2_funct_1(X1)
    | ~ r2_hidden(esk3_2(X1,X2),k2_relat_1(X1))
    | esk4_2(X1,X2) != k1_funct_1(X2,esk3_2(X1,X2))
    | k1_relat_1(X2) != k2_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_60,negated_conjecture,
    ( r2_hidden(k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0)),esk6_0)
    | r2_hidden(esk1_2(esk7_0,esk8_0),esk6_0) ),
    inference(spm,[status(thm)],[c_0_53,c_0_54])).

cnf(c_0_61,negated_conjecture,
    ( k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0)) = esk3_2(esk7_0,esk8_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_46]),c_0_56])).

cnf(c_0_62,negated_conjecture,
    ( k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0)) = esk2_2(esk7_0,esk8_0)
    | r2_hidden(esk4_2(esk7_0,esk8_0),esk5_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_30]),c_0_31]),c_0_32])]),c_0_33])).

cnf(c_0_63,negated_conjecture,
    ( k1_funct_1(esk8_0,k1_funct_1(esk7_0,X1)) = X1
    | ~ r2_hidden(X1,esk5_0) ),
    inference(er,[status(thm)],[c_0_58])).

cnf(c_0_64,negated_conjecture,
    ( X1 = k2_funct_1(esk7_0)
    | r2_hidden(esk1_2(esk7_0,X1),esk6_0)
    | k1_funct_1(X1,esk3_2(esk7_0,X1)) != esk4_2(esk7_0,X1)
    | k1_relat_1(X1) != esk6_0
    | ~ r2_hidden(esk3_2(esk7_0,X1),esk6_0)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_21]),c_0_20]),c_0_22]),c_0_23])])).

cnf(c_0_65,negated_conjecture,
    ( r2_hidden(esk1_2(esk7_0,esk8_0),esk6_0)
    | r2_hidden(esk3_2(esk7_0,esk8_0),esk6_0) ),
    inference(rw,[status(thm)],[c_0_60,c_0_61])).

cnf(c_0_66,plain,
    ( esk2_2(X1,X2) = k1_funct_1(X2,esk1_2(X1,X2))
    | X2 = k2_funct_1(X1)
    | ~ r2_hidden(esk3_2(X1,X2),k2_relat_1(X1))
    | esk4_2(X1,X2) != k1_funct_1(X2,esk3_2(X1,X2))
    | k1_relat_1(X2) != k2_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_67,negated_conjecture,
    ( k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0)) = esk2_2(esk7_0,esk8_0)
    | r2_hidden(k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0)),esk6_0) ),
    inference(spm,[status(thm)],[c_0_53,c_0_62])).

cnf(c_0_68,negated_conjecture,
    ( k1_funct_1(esk8_0,k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0))) = esk4_2(esk7_0,esk8_0)
    | r2_hidden(esk1_2(esk7_0,esk8_0),esk6_0) ),
    inference(spm,[status(thm)],[c_0_63,c_0_54])).

cnf(c_0_69,negated_conjecture,
    ( r2_hidden(esk1_2(esk7_0,esk8_0),esk6_0)
    | k1_funct_1(esk8_0,esk3_2(esk7_0,esk8_0)) != esk4_2(esk7_0,esk8_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64,c_0_65]),c_0_30]),c_0_31]),c_0_32])]),c_0_33])).

cnf(c_0_70,negated_conjecture,
    ( k1_funct_1(X1,esk1_2(esk7_0,X1)) = esk2_2(esk7_0,X1)
    | X1 = k2_funct_1(esk7_0)
    | k1_funct_1(X1,esk3_2(esk7_0,X1)) != esk4_2(esk7_0,X1)
    | k1_relat_1(X1) != esk6_0
    | ~ r2_hidden(esk3_2(esk7_0,X1),esk6_0)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66,c_0_21]),c_0_20]),c_0_22]),c_0_23])])).

cnf(c_0_71,negated_conjecture,
    ( k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0)) = esk2_2(esk7_0,esk8_0)
    | r2_hidden(esk3_2(esk7_0,esk8_0),esk6_0) ),
    inference(rw,[status(thm)],[c_0_67,c_0_61])).

cnf(c_0_72,negated_conjecture,
    ( r2_hidden(esk1_2(esk7_0,esk8_0),esk6_0) ),
    inference(csr,[status(thm)],[inference(rw,[status(thm)],[c_0_68,c_0_61]),c_0_69])).

cnf(c_0_73,negated_conjecture,
    ( k1_funct_1(esk8_0,k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0))) = esk4_2(esk7_0,esk8_0)
    | k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0)) = esk2_2(esk7_0,esk8_0) ),
    inference(spm,[status(thm)],[c_0_63,c_0_62])).

cnf(c_0_74,negated_conjecture,
    ( k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0)) = esk2_2(esk7_0,esk8_0)
    | k1_funct_1(esk8_0,esk3_2(esk7_0,esk8_0)) != esk4_2(esk7_0,esk8_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70,c_0_71]),c_0_30]),c_0_31]),c_0_32])]),c_0_33])).

cnf(c_0_75,plain,
    ( r2_hidden(esk4_2(X1,X2),k1_relat_1(X1))
    | X2 = k2_funct_1(X1)
    | ~ r2_hidden(esk2_2(X1,X2),k1_relat_1(X1))
    | esk1_2(X1,X2) != k1_funct_1(X1,esk2_2(X1,X2))
    | k1_relat_1(X2) != k2_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_76,negated_conjecture,
    ( r2_hidden(k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0)),esk5_0) ),
    inference(spm,[status(thm)],[c_0_38,c_0_72])).

cnf(c_0_77,negated_conjecture,
    ( k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0)) = esk2_2(esk7_0,esk8_0) ),
    inference(csr,[status(thm)],[inference(rw,[status(thm)],[c_0_73,c_0_61]),c_0_74])).

cnf(c_0_78,negated_conjecture,
    ( X1 = k2_funct_1(esk7_0)
    | r2_hidden(esk4_2(esk7_0,X1),esk5_0)
    | k1_funct_1(esk7_0,esk2_2(esk7_0,X1)) != esk1_2(esk7_0,X1)
    | k1_relat_1(X1) != esk6_0
    | ~ r2_hidden(esk2_2(esk7_0,X1),esk5_0)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_42]),c_0_21]),c_0_20]),c_0_22]),c_0_23])])).

cnf(c_0_79,negated_conjecture,
    ( r2_hidden(esk2_2(esk7_0,esk8_0),esk5_0) ),
    inference(rw,[status(thm)],[c_0_76,c_0_77])).

cnf(c_0_80,negated_conjecture,
    ( k1_funct_1(esk7_0,k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0))) = esk1_2(esk7_0,esk8_0) ),
    inference(spm,[status(thm)],[c_0_49,c_0_72])).

cnf(c_0_81,negated_conjecture,
    ( r2_hidden(esk4_2(esk7_0,esk8_0),esk5_0)
    | k1_funct_1(esk7_0,esk2_2(esk7_0,esk8_0)) != esk1_2(esk7_0,esk8_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_78,c_0_79]),c_0_30]),c_0_31]),c_0_32])]),c_0_33])).

cnf(c_0_82,negated_conjecture,
    ( k1_funct_1(esk7_0,esk2_2(esk7_0,esk8_0)) = esk1_2(esk7_0,esk8_0) ),
    inference(rw,[status(thm)],[c_0_80,c_0_77])).

cnf(c_0_83,plain,
    ( X2 = k2_funct_1(X1)
    | ~ r2_hidden(esk3_2(X1,X2),k2_relat_1(X1))
    | esk4_2(X1,X2) != k1_funct_1(X2,esk3_2(X1,X2))
    | ~ r2_hidden(esk2_2(X1,X2),k1_relat_1(X1))
    | esk1_2(X1,X2) != k1_funct_1(X1,esk2_2(X1,X2))
    | k1_relat_1(X2) != k2_relat_1(X1)
    | ~ v1_relat_1(X2)
    | ~ v1_funct_1(X2)
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_84,negated_conjecture,
    ( r2_hidden(esk4_2(esk7_0,esk8_0),esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_81,c_0_82])])).

cnf(c_0_85,negated_conjecture,
    ( X1 = k2_funct_1(esk7_0)
    | k1_funct_1(esk7_0,esk2_2(esk7_0,X1)) != esk1_2(esk7_0,X1)
    | k1_funct_1(X1,esk3_2(esk7_0,X1)) != esk4_2(esk7_0,X1)
    | k1_relat_1(X1) != esk6_0
    | ~ r2_hidden(esk2_2(esk7_0,X1),esk5_0)
    | ~ r2_hidden(esk3_2(esk7_0,X1),esk6_0)
    | ~ v1_funct_1(X1)
    | ~ v1_relat_1(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83,c_0_42]),c_0_21]),c_0_21]),c_0_20]),c_0_22]),c_0_23])])).

cnf(c_0_86,negated_conjecture,
    ( k1_funct_1(esk8_0,esk3_2(esk7_0,esk8_0)) = esk4_2(esk7_0,esk8_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63,c_0_84]),c_0_61])).

cnf(c_0_87,negated_conjecture,
    ( r2_hidden(esk3_2(esk7_0,esk8_0),esk6_0) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_84]),c_0_61])).

cnf(c_0_88,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85,c_0_79]),c_0_30]),c_0_31]),c_0_32])]),c_0_33]),c_0_82]),c_0_86]),c_0_87])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n005.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 19:26:47 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18_F1_SE_CS_SP_PS_S064I
% 0.20/0.39  # and selection function SelectComplexG.
% 0.20/0.39  #
% 0.20/0.39  # Preprocessing time       : 0.029 s
% 0.20/0.39  # Presaturation interreduction done
% 0.20/0.39  
% 0.20/0.39  # Proof found!
% 0.20/0.39  # SZS status Theorem
% 0.20/0.39  # SZS output start CNFRefutation
% 0.20/0.39  fof(t34_funct_2, conjecture, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X2,X1))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))))=>(((k2_relset_1(X1,X2,X3)=X2&v2_funct_1(X3))&![X5, X6]:(((r2_hidden(X5,X2)&k1_funct_1(X4,X5)=X6)=>(r2_hidden(X6,X1)&k1_funct_1(X3,X6)=X5))&((r2_hidden(X6,X1)&k1_funct_1(X3,X6)=X5)=>(r2_hidden(X5,X2)&k1_funct_1(X4,X5)=X6))))=>(X1=k1_xboole_0|X2=k1_xboole_0|X4=k2_funct_1(X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t34_funct_2)).
% 0.20/0.39  fof(redefinition_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k2_relset_1(X1,X2,X3)=k2_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 0.20/0.39  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.20/0.39  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.20/0.39  fof(t54_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>![X2]:((v1_relat_1(X2)&v1_funct_1(X2))=>(X2=k2_funct_1(X1)<=>(k1_relat_1(X2)=k2_relat_1(X1)&![X3, X4]:(((r2_hidden(X3,k2_relat_1(X1))&X4=k1_funct_1(X2,X3))=>(r2_hidden(X4,k1_relat_1(X1))&X3=k1_funct_1(X1,X4)))&((r2_hidden(X4,k1_relat_1(X1))&X3=k1_funct_1(X1,X4))=>(r2_hidden(X3,k2_relat_1(X1))&X4=k1_funct_1(X2,X3))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t54_funct_1)).
% 0.20/0.39  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_funct_2)).
% 0.20/0.39  fof(c_0_6, negated_conjecture, ~(![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X2,X1))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))))=>(((k2_relset_1(X1,X2,X3)=X2&v2_funct_1(X3))&![X5, X6]:(((r2_hidden(X5,X2)&k1_funct_1(X4,X5)=X6)=>(r2_hidden(X6,X1)&k1_funct_1(X3,X6)=X5))&((r2_hidden(X6,X1)&k1_funct_1(X3,X6)=X5)=>(r2_hidden(X5,X2)&k1_funct_1(X4,X5)=X6))))=>(X1=k1_xboole_0|X2=k1_xboole_0|X4=k2_funct_1(X3)))))), inference(assume_negation,[status(cth)],[t34_funct_2])).
% 0.20/0.39  fof(c_0_7, plain, ![X23, X24, X25]:(~m1_subset_1(X25,k1_zfmisc_1(k2_zfmisc_1(X23,X24)))|k2_relset_1(X23,X24,X25)=k2_relat_1(X25)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).
% 0.20/0.39  fof(c_0_8, negated_conjecture, ![X33, X34]:(((v1_funct_1(esk7_0)&v1_funct_2(esk7_0,esk5_0,esk6_0))&m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk5_0,esk6_0))))&(((v1_funct_1(esk8_0)&v1_funct_2(esk8_0,esk6_0,esk5_0))&m1_subset_1(esk8_0,k1_zfmisc_1(k2_zfmisc_1(esk6_0,esk5_0))))&(((k2_relset_1(esk5_0,esk6_0,esk7_0)=esk6_0&v2_funct_1(esk7_0))&(((r2_hidden(X34,esk5_0)|(~r2_hidden(X33,esk6_0)|k1_funct_1(esk8_0,X33)!=X34))&(k1_funct_1(esk7_0,X34)=X33|(~r2_hidden(X33,esk6_0)|k1_funct_1(esk8_0,X33)!=X34)))&((r2_hidden(X33,esk6_0)|(~r2_hidden(X34,esk5_0)|k1_funct_1(esk7_0,X34)!=X33))&(k1_funct_1(esk8_0,X33)=X34|(~r2_hidden(X34,esk5_0)|k1_funct_1(esk7_0,X34)!=X33)))))&((esk5_0!=k1_xboole_0&esk6_0!=k1_xboole_0)&esk8_0!=k2_funct_1(esk7_0))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])])])).
% 0.20/0.39  fof(c_0_9, plain, ![X17, X18, X19]:(~m1_subset_1(X19,k1_zfmisc_1(k2_zfmisc_1(X17,X18)))|v1_relat_1(X19)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.20/0.39  fof(c_0_10, plain, ![X20, X21, X22]:(~m1_subset_1(X22,k1_zfmisc_1(k2_zfmisc_1(X20,X21)))|k1_relset_1(X20,X21,X22)=k1_relat_1(X22)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.20/0.39  fof(c_0_11, plain, ![X7, X8, X9, X10, X11, X12]:(((k1_relat_1(X8)=k2_relat_1(X7)|X8!=k2_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8))|~v2_funct_1(X7)|(~v1_relat_1(X7)|~v1_funct_1(X7)))&(((r2_hidden(X10,k1_relat_1(X7))|(~r2_hidden(X9,k2_relat_1(X7))|X10!=k1_funct_1(X8,X9))|X8!=k2_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8))|~v2_funct_1(X7)|(~v1_relat_1(X7)|~v1_funct_1(X7)))&(X9=k1_funct_1(X7,X10)|(~r2_hidden(X9,k2_relat_1(X7))|X10!=k1_funct_1(X8,X9))|X8!=k2_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8))|~v2_funct_1(X7)|(~v1_relat_1(X7)|~v1_funct_1(X7))))&((r2_hidden(X11,k2_relat_1(X7))|(~r2_hidden(X12,k1_relat_1(X7))|X11!=k1_funct_1(X7,X12))|X8!=k2_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8))|~v2_funct_1(X7)|(~v1_relat_1(X7)|~v1_funct_1(X7)))&(X12=k1_funct_1(X8,X11)|(~r2_hidden(X12,k1_relat_1(X7))|X11!=k1_funct_1(X7,X12))|X8!=k2_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8))|~v2_funct_1(X7)|(~v1_relat_1(X7)|~v1_funct_1(X7))))))&(((((r2_hidden(esk4_2(X7,X8),k1_relat_1(X7))|r2_hidden(esk1_2(X7,X8),k2_relat_1(X7))|k1_relat_1(X8)!=k2_relat_1(X7)|X8=k2_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8))|~v2_funct_1(X7)|(~v1_relat_1(X7)|~v1_funct_1(X7)))&(esk3_2(X7,X8)=k1_funct_1(X7,esk4_2(X7,X8))|r2_hidden(esk1_2(X7,X8),k2_relat_1(X7))|k1_relat_1(X8)!=k2_relat_1(X7)|X8=k2_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8))|~v2_funct_1(X7)|(~v1_relat_1(X7)|~v1_funct_1(X7))))&(~r2_hidden(esk3_2(X7,X8),k2_relat_1(X7))|esk4_2(X7,X8)!=k1_funct_1(X8,esk3_2(X7,X8))|r2_hidden(esk1_2(X7,X8),k2_relat_1(X7))|k1_relat_1(X8)!=k2_relat_1(X7)|X8=k2_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8))|~v2_funct_1(X7)|(~v1_relat_1(X7)|~v1_funct_1(X7))))&(((r2_hidden(esk4_2(X7,X8),k1_relat_1(X7))|esk2_2(X7,X8)=k1_funct_1(X8,esk1_2(X7,X8))|k1_relat_1(X8)!=k2_relat_1(X7)|X8=k2_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8))|~v2_funct_1(X7)|(~v1_relat_1(X7)|~v1_funct_1(X7)))&(esk3_2(X7,X8)=k1_funct_1(X7,esk4_2(X7,X8))|esk2_2(X7,X8)=k1_funct_1(X8,esk1_2(X7,X8))|k1_relat_1(X8)!=k2_relat_1(X7)|X8=k2_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8))|~v2_funct_1(X7)|(~v1_relat_1(X7)|~v1_funct_1(X7))))&(~r2_hidden(esk3_2(X7,X8),k2_relat_1(X7))|esk4_2(X7,X8)!=k1_funct_1(X8,esk3_2(X7,X8))|esk2_2(X7,X8)=k1_funct_1(X8,esk1_2(X7,X8))|k1_relat_1(X8)!=k2_relat_1(X7)|X8=k2_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8))|~v2_funct_1(X7)|(~v1_relat_1(X7)|~v1_funct_1(X7)))))&(((r2_hidden(esk4_2(X7,X8),k1_relat_1(X7))|(~r2_hidden(esk2_2(X7,X8),k1_relat_1(X7))|esk1_2(X7,X8)!=k1_funct_1(X7,esk2_2(X7,X8)))|k1_relat_1(X8)!=k2_relat_1(X7)|X8=k2_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8))|~v2_funct_1(X7)|(~v1_relat_1(X7)|~v1_funct_1(X7)))&(esk3_2(X7,X8)=k1_funct_1(X7,esk4_2(X7,X8))|(~r2_hidden(esk2_2(X7,X8),k1_relat_1(X7))|esk1_2(X7,X8)!=k1_funct_1(X7,esk2_2(X7,X8)))|k1_relat_1(X8)!=k2_relat_1(X7)|X8=k2_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8))|~v2_funct_1(X7)|(~v1_relat_1(X7)|~v1_funct_1(X7))))&(~r2_hidden(esk3_2(X7,X8),k2_relat_1(X7))|esk4_2(X7,X8)!=k1_funct_1(X8,esk3_2(X7,X8))|(~r2_hidden(esk2_2(X7,X8),k1_relat_1(X7))|esk1_2(X7,X8)!=k1_funct_1(X7,esk2_2(X7,X8)))|k1_relat_1(X8)!=k2_relat_1(X7)|X8=k2_funct_1(X7)|(~v1_relat_1(X8)|~v1_funct_1(X8))|~v2_funct_1(X7)|(~v1_relat_1(X7)|~v1_funct_1(X7)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[t54_funct_1])])])])])])).
% 0.20/0.39  cnf(c_0_12, plain, (k2_relset_1(X2,X3,X1)=k2_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.20/0.39  cnf(c_0_13, negated_conjecture, (m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk5_0,esk6_0)))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.39  cnf(c_0_14, negated_conjecture, (k2_relset_1(esk5_0,esk6_0,esk7_0)=esk6_0), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.39  cnf(c_0_15, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.20/0.39  fof(c_0_16, plain, ![X26, X27, X28]:((((~v1_funct_2(X28,X26,X27)|X26=k1_relset_1(X26,X27,X28)|X27=k1_xboole_0|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))&(X26!=k1_relset_1(X26,X27,X28)|v1_funct_2(X28,X26,X27)|X27=k1_xboole_0|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27)))))&((~v1_funct_2(X28,X26,X27)|X26=k1_relset_1(X26,X27,X28)|X26!=k1_xboole_0|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))&(X26!=k1_relset_1(X26,X27,X28)|v1_funct_2(X28,X26,X27)|X26!=k1_xboole_0|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))))&((~v1_funct_2(X28,X26,X27)|X28=k1_xboole_0|X26=k1_xboole_0|X27!=k1_xboole_0|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27))))&(X28!=k1_xboole_0|v1_funct_2(X28,X26,X27)|X26=k1_xboole_0|X27!=k1_xboole_0|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(X26,X27)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.20/0.39  cnf(c_0_17, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.20/0.39  cnf(c_0_18, negated_conjecture, (m1_subset_1(esk8_0,k1_zfmisc_1(k2_zfmisc_1(esk6_0,esk5_0)))), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.39  cnf(c_0_19, plain, (esk3_2(X1,X2)=k1_funct_1(X1,esk4_2(X1,X2))|r2_hidden(esk1_2(X1,X2),k2_relat_1(X1))|X2=k2_funct_1(X1)|k1_relat_1(X2)!=k2_relat_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.39  cnf(c_0_20, negated_conjecture, (v2_funct_1(esk7_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.39  cnf(c_0_21, negated_conjecture, (k2_relat_1(esk7_0)=esk6_0), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_12, c_0_13]), c_0_14])).
% 0.20/0.39  cnf(c_0_22, negated_conjecture, (v1_funct_1(esk7_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.39  cnf(c_0_23, negated_conjecture, (v1_relat_1(esk7_0)), inference(spm,[status(thm)],[c_0_15, c_0_13])).
% 0.20/0.39  cnf(c_0_24, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.20/0.39  cnf(c_0_25, negated_conjecture, (k1_relset_1(esk6_0,esk5_0,esk8_0)=k1_relat_1(esk8_0)), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.20/0.39  cnf(c_0_26, negated_conjecture, (v1_funct_2(esk8_0,esk6_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.39  cnf(c_0_27, negated_conjecture, (esk5_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.39  cnf(c_0_28, negated_conjecture, (r2_hidden(X1,esk5_0)|~r2_hidden(X2,esk6_0)|k1_funct_1(esk8_0,X2)!=X1), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.39  cnf(c_0_29, negated_conjecture, (k1_funct_1(esk7_0,esk4_2(esk7_0,X1))=esk3_2(esk7_0,X1)|X1=k2_funct_1(esk7_0)|r2_hidden(esk1_2(esk7_0,X1),esk6_0)|k1_relat_1(X1)!=esk6_0|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_21]), c_0_21]), c_0_22]), c_0_23])])).
% 0.20/0.39  cnf(c_0_30, negated_conjecture, (k1_relat_1(esk8_0)=esk6_0), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_18]), c_0_25]), c_0_26])]), c_0_27])).
% 0.20/0.39  cnf(c_0_31, negated_conjecture, (v1_funct_1(esk8_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.39  cnf(c_0_32, negated_conjecture, (v1_relat_1(esk8_0)), inference(spm,[status(thm)],[c_0_15, c_0_18])).
% 0.20/0.39  cnf(c_0_33, negated_conjecture, (esk8_0!=k2_funct_1(esk7_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.39  cnf(c_0_34, plain, (esk3_2(X1,X2)=k1_funct_1(X1,esk4_2(X1,X2))|esk2_2(X1,X2)=k1_funct_1(X2,esk1_2(X1,X2))|X2=k2_funct_1(X1)|k1_relat_1(X2)!=k2_relat_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.39  cnf(c_0_35, negated_conjecture, (k1_relset_1(esk5_0,esk6_0,esk7_0)=k1_relat_1(esk7_0)), inference(spm,[status(thm)],[c_0_17, c_0_13])).
% 0.20/0.39  cnf(c_0_36, negated_conjecture, (v1_funct_2(esk7_0,esk5_0,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.39  cnf(c_0_37, negated_conjecture, (esk6_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.39  cnf(c_0_38, negated_conjecture, (r2_hidden(k1_funct_1(esk8_0,X1),esk5_0)|~r2_hidden(X1,esk6_0)), inference(er,[status(thm)],[c_0_28])).
% 0.20/0.39  cnf(c_0_39, negated_conjecture, (k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0))=esk3_2(esk7_0,esk8_0)|r2_hidden(esk1_2(esk7_0,esk8_0),esk6_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_31]), c_0_32])]), c_0_33])).
% 0.20/0.39  cnf(c_0_40, negated_conjecture, (k1_funct_1(esk7_0,esk4_2(esk7_0,X1))=esk3_2(esk7_0,X1)|k1_funct_1(X1,esk1_2(esk7_0,X1))=esk2_2(esk7_0,X1)|X1=k2_funct_1(esk7_0)|k1_relat_1(X1)!=esk6_0|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_20]), c_0_21]), c_0_22]), c_0_23])])).
% 0.20/0.39  cnf(c_0_41, plain, (r2_hidden(esk4_2(X1,X2),k1_relat_1(X1))|r2_hidden(esk1_2(X1,X2),k2_relat_1(X1))|X2=k2_funct_1(X1)|k1_relat_1(X2)!=k2_relat_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.39  cnf(c_0_42, negated_conjecture, (k1_relat_1(esk7_0)=esk5_0), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_13]), c_0_35]), c_0_36])]), c_0_37])).
% 0.20/0.39  cnf(c_0_43, negated_conjecture, (k1_funct_1(esk7_0,X1)=X2|~r2_hidden(X2,esk6_0)|k1_funct_1(esk8_0,X2)!=X1), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.39  cnf(c_0_44, plain, (esk3_2(X1,X2)=k1_funct_1(X1,esk4_2(X1,X2))|X2=k2_funct_1(X1)|~r2_hidden(esk2_2(X1,X2),k1_relat_1(X1))|esk1_2(X1,X2)!=k1_funct_1(X1,esk2_2(X1,X2))|k1_relat_1(X2)!=k2_relat_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.39  cnf(c_0_45, negated_conjecture, (k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0))=esk3_2(esk7_0,esk8_0)|r2_hidden(k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0)),esk5_0)), inference(spm,[status(thm)],[c_0_38, c_0_39])).
% 0.20/0.39  cnf(c_0_46, negated_conjecture, (k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0))=esk2_2(esk7_0,esk8_0)|k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0))=esk3_2(esk7_0,esk8_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_30]), c_0_31]), c_0_32])]), c_0_33])).
% 0.20/0.39  cnf(c_0_47, negated_conjecture, (r2_hidden(X1,esk6_0)|~r2_hidden(X2,esk5_0)|k1_funct_1(esk7_0,X2)!=X1), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.39  cnf(c_0_48, negated_conjecture, (X1=k2_funct_1(esk7_0)|r2_hidden(esk4_2(esk7_0,X1),esk5_0)|r2_hidden(esk1_2(esk7_0,X1),esk6_0)|k1_relat_1(X1)!=esk6_0|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_20]), c_0_21]), c_0_42]), c_0_21]), c_0_22]), c_0_23])])).
% 0.20/0.39  cnf(c_0_49, negated_conjecture, (k1_funct_1(esk7_0,k1_funct_1(esk8_0,X1))=X1|~r2_hidden(X1,esk6_0)), inference(er,[status(thm)],[c_0_43])).
% 0.20/0.39  cnf(c_0_50, negated_conjecture, (k1_funct_1(esk7_0,esk4_2(esk7_0,X1))=esk3_2(esk7_0,X1)|X1=k2_funct_1(esk7_0)|k1_funct_1(esk7_0,esk2_2(esk7_0,X1))!=esk1_2(esk7_0,X1)|k1_relat_1(X1)!=esk6_0|~r2_hidden(esk2_2(esk7_0,X1),esk5_0)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_42]), c_0_21]), c_0_20]), c_0_22]), c_0_23])])).
% 0.20/0.39  cnf(c_0_51, negated_conjecture, (k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0))=esk3_2(esk7_0,esk8_0)|r2_hidden(esk2_2(esk7_0,esk8_0),esk5_0)), inference(spm,[status(thm)],[c_0_45, c_0_46])).
% 0.20/0.39  cnf(c_0_52, plain, (r2_hidden(esk4_2(X1,X2),k1_relat_1(X1))|esk2_2(X1,X2)=k1_funct_1(X2,esk1_2(X1,X2))|X2=k2_funct_1(X1)|k1_relat_1(X2)!=k2_relat_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.39  cnf(c_0_53, negated_conjecture, (r2_hidden(k1_funct_1(esk7_0,X1),esk6_0)|~r2_hidden(X1,esk5_0)), inference(er,[status(thm)],[c_0_47])).
% 0.20/0.39  cnf(c_0_54, negated_conjecture, (r2_hidden(esk1_2(esk7_0,esk8_0),esk6_0)|r2_hidden(esk4_2(esk7_0,esk8_0),esk5_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_30]), c_0_31]), c_0_32])]), c_0_33])).
% 0.20/0.39  cnf(c_0_55, negated_conjecture, (k1_funct_1(esk7_0,k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0)))=esk1_2(esk7_0,esk8_0)|k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0))=esk3_2(esk7_0,esk8_0)), inference(spm,[status(thm)],[c_0_49, c_0_39])).
% 0.20/0.39  cnf(c_0_56, negated_conjecture, (k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0))=esk3_2(esk7_0,esk8_0)|k1_funct_1(esk7_0,esk2_2(esk7_0,esk8_0))!=esk1_2(esk7_0,esk8_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_51]), c_0_30]), c_0_31]), c_0_32])]), c_0_33])).
% 0.20/0.39  cnf(c_0_57, negated_conjecture, (k1_funct_1(X1,esk1_2(esk7_0,X1))=esk2_2(esk7_0,X1)|X1=k2_funct_1(esk7_0)|r2_hidden(esk4_2(esk7_0,X1),esk5_0)|k1_relat_1(X1)!=esk6_0|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_20]), c_0_42]), c_0_21]), c_0_22]), c_0_23])])).
% 0.20/0.39  cnf(c_0_58, negated_conjecture, (k1_funct_1(esk8_0,X1)=X2|~r2_hidden(X2,esk5_0)|k1_funct_1(esk7_0,X2)!=X1), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.20/0.39  cnf(c_0_59, plain, (r2_hidden(esk1_2(X1,X2),k2_relat_1(X1))|X2=k2_funct_1(X1)|~r2_hidden(esk3_2(X1,X2),k2_relat_1(X1))|esk4_2(X1,X2)!=k1_funct_1(X2,esk3_2(X1,X2))|k1_relat_1(X2)!=k2_relat_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.39  cnf(c_0_60, negated_conjecture, (r2_hidden(k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0)),esk6_0)|r2_hidden(esk1_2(esk7_0,esk8_0),esk6_0)), inference(spm,[status(thm)],[c_0_53, c_0_54])).
% 0.20/0.39  cnf(c_0_61, negated_conjecture, (k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0))=esk3_2(esk7_0,esk8_0)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_46]), c_0_56])).
% 0.20/0.39  cnf(c_0_62, negated_conjecture, (k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0))=esk2_2(esk7_0,esk8_0)|r2_hidden(esk4_2(esk7_0,esk8_0),esk5_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_30]), c_0_31]), c_0_32])]), c_0_33])).
% 0.20/0.39  cnf(c_0_63, negated_conjecture, (k1_funct_1(esk8_0,k1_funct_1(esk7_0,X1))=X1|~r2_hidden(X1,esk5_0)), inference(er,[status(thm)],[c_0_58])).
% 0.20/0.39  cnf(c_0_64, negated_conjecture, (X1=k2_funct_1(esk7_0)|r2_hidden(esk1_2(esk7_0,X1),esk6_0)|k1_funct_1(X1,esk3_2(esk7_0,X1))!=esk4_2(esk7_0,X1)|k1_relat_1(X1)!=esk6_0|~r2_hidden(esk3_2(esk7_0,X1),esk6_0)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_21]), c_0_20]), c_0_22]), c_0_23])])).
% 0.20/0.39  cnf(c_0_65, negated_conjecture, (r2_hidden(esk1_2(esk7_0,esk8_0),esk6_0)|r2_hidden(esk3_2(esk7_0,esk8_0),esk6_0)), inference(rw,[status(thm)],[c_0_60, c_0_61])).
% 0.20/0.39  cnf(c_0_66, plain, (esk2_2(X1,X2)=k1_funct_1(X2,esk1_2(X1,X2))|X2=k2_funct_1(X1)|~r2_hidden(esk3_2(X1,X2),k2_relat_1(X1))|esk4_2(X1,X2)!=k1_funct_1(X2,esk3_2(X1,X2))|k1_relat_1(X2)!=k2_relat_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.39  cnf(c_0_67, negated_conjecture, (k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0))=esk2_2(esk7_0,esk8_0)|r2_hidden(k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0)),esk6_0)), inference(spm,[status(thm)],[c_0_53, c_0_62])).
% 0.20/0.39  cnf(c_0_68, negated_conjecture, (k1_funct_1(esk8_0,k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0)))=esk4_2(esk7_0,esk8_0)|r2_hidden(esk1_2(esk7_0,esk8_0),esk6_0)), inference(spm,[status(thm)],[c_0_63, c_0_54])).
% 0.20/0.39  cnf(c_0_69, negated_conjecture, (r2_hidden(esk1_2(esk7_0,esk8_0),esk6_0)|k1_funct_1(esk8_0,esk3_2(esk7_0,esk8_0))!=esk4_2(esk7_0,esk8_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_64, c_0_65]), c_0_30]), c_0_31]), c_0_32])]), c_0_33])).
% 0.20/0.39  cnf(c_0_70, negated_conjecture, (k1_funct_1(X1,esk1_2(esk7_0,X1))=esk2_2(esk7_0,X1)|X1=k2_funct_1(esk7_0)|k1_funct_1(X1,esk3_2(esk7_0,X1))!=esk4_2(esk7_0,X1)|k1_relat_1(X1)!=esk6_0|~r2_hidden(esk3_2(esk7_0,X1),esk6_0)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_66, c_0_21]), c_0_20]), c_0_22]), c_0_23])])).
% 0.20/0.39  cnf(c_0_71, negated_conjecture, (k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0))=esk2_2(esk7_0,esk8_0)|r2_hidden(esk3_2(esk7_0,esk8_0),esk6_0)), inference(rw,[status(thm)],[c_0_67, c_0_61])).
% 0.20/0.39  cnf(c_0_72, negated_conjecture, (r2_hidden(esk1_2(esk7_0,esk8_0),esk6_0)), inference(csr,[status(thm)],[inference(rw,[status(thm)],[c_0_68, c_0_61]), c_0_69])).
% 0.20/0.39  cnf(c_0_73, negated_conjecture, (k1_funct_1(esk8_0,k1_funct_1(esk7_0,esk4_2(esk7_0,esk8_0)))=esk4_2(esk7_0,esk8_0)|k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0))=esk2_2(esk7_0,esk8_0)), inference(spm,[status(thm)],[c_0_63, c_0_62])).
% 0.20/0.39  cnf(c_0_74, negated_conjecture, (k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0))=esk2_2(esk7_0,esk8_0)|k1_funct_1(esk8_0,esk3_2(esk7_0,esk8_0))!=esk4_2(esk7_0,esk8_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_70, c_0_71]), c_0_30]), c_0_31]), c_0_32])]), c_0_33])).
% 0.20/0.39  cnf(c_0_75, plain, (r2_hidden(esk4_2(X1,X2),k1_relat_1(X1))|X2=k2_funct_1(X1)|~r2_hidden(esk2_2(X1,X2),k1_relat_1(X1))|esk1_2(X1,X2)!=k1_funct_1(X1,esk2_2(X1,X2))|k1_relat_1(X2)!=k2_relat_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.39  cnf(c_0_76, negated_conjecture, (r2_hidden(k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0)),esk5_0)), inference(spm,[status(thm)],[c_0_38, c_0_72])).
% 0.20/0.39  cnf(c_0_77, negated_conjecture, (k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0))=esk2_2(esk7_0,esk8_0)), inference(csr,[status(thm)],[inference(rw,[status(thm)],[c_0_73, c_0_61]), c_0_74])).
% 0.20/0.39  cnf(c_0_78, negated_conjecture, (X1=k2_funct_1(esk7_0)|r2_hidden(esk4_2(esk7_0,X1),esk5_0)|k1_funct_1(esk7_0,esk2_2(esk7_0,X1))!=esk1_2(esk7_0,X1)|k1_relat_1(X1)!=esk6_0|~r2_hidden(esk2_2(esk7_0,X1),esk5_0)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_42]), c_0_21]), c_0_20]), c_0_22]), c_0_23])])).
% 0.20/0.39  cnf(c_0_79, negated_conjecture, (r2_hidden(esk2_2(esk7_0,esk8_0),esk5_0)), inference(rw,[status(thm)],[c_0_76, c_0_77])).
% 0.20/0.39  cnf(c_0_80, negated_conjecture, (k1_funct_1(esk7_0,k1_funct_1(esk8_0,esk1_2(esk7_0,esk8_0)))=esk1_2(esk7_0,esk8_0)), inference(spm,[status(thm)],[c_0_49, c_0_72])).
% 0.20/0.39  cnf(c_0_81, negated_conjecture, (r2_hidden(esk4_2(esk7_0,esk8_0),esk5_0)|k1_funct_1(esk7_0,esk2_2(esk7_0,esk8_0))!=esk1_2(esk7_0,esk8_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_78, c_0_79]), c_0_30]), c_0_31]), c_0_32])]), c_0_33])).
% 0.20/0.39  cnf(c_0_82, negated_conjecture, (k1_funct_1(esk7_0,esk2_2(esk7_0,esk8_0))=esk1_2(esk7_0,esk8_0)), inference(rw,[status(thm)],[c_0_80, c_0_77])).
% 0.20/0.39  cnf(c_0_83, plain, (X2=k2_funct_1(X1)|~r2_hidden(esk3_2(X1,X2),k2_relat_1(X1))|esk4_2(X1,X2)!=k1_funct_1(X2,esk3_2(X1,X2))|~r2_hidden(esk2_2(X1,X2),k1_relat_1(X1))|esk1_2(X1,X2)!=k1_funct_1(X1,esk2_2(X1,X2))|k1_relat_1(X2)!=k2_relat_1(X1)|~v1_relat_1(X2)|~v1_funct_1(X2)|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.20/0.39  cnf(c_0_84, negated_conjecture, (r2_hidden(esk4_2(esk7_0,esk8_0),esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_81, c_0_82])])).
% 0.20/0.39  cnf(c_0_85, negated_conjecture, (X1=k2_funct_1(esk7_0)|k1_funct_1(esk7_0,esk2_2(esk7_0,X1))!=esk1_2(esk7_0,X1)|k1_funct_1(X1,esk3_2(esk7_0,X1))!=esk4_2(esk7_0,X1)|k1_relat_1(X1)!=esk6_0|~r2_hidden(esk2_2(esk7_0,X1),esk5_0)|~r2_hidden(esk3_2(esk7_0,X1),esk6_0)|~v1_funct_1(X1)|~v1_relat_1(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83, c_0_42]), c_0_21]), c_0_21]), c_0_20]), c_0_22]), c_0_23])])).
% 0.20/0.39  cnf(c_0_86, negated_conjecture, (k1_funct_1(esk8_0,esk3_2(esk7_0,esk8_0))=esk4_2(esk7_0,esk8_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_63, c_0_84]), c_0_61])).
% 0.20/0.39  cnf(c_0_87, negated_conjecture, (r2_hidden(esk3_2(esk7_0,esk8_0),esk6_0)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_84]), c_0_61])).
% 0.20/0.39  cnf(c_0_88, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_85, c_0_79]), c_0_30]), c_0_31]), c_0_32])]), c_0_33]), c_0_82]), c_0_86]), c_0_87])]), ['proof']).
% 0.20/0.39  # SZS output end CNFRefutation
% 0.20/0.39  # Proof object total steps             : 89
% 0.20/0.39  # Proof object clause steps            : 76
% 0.20/0.39  # Proof object formula steps           : 13
% 0.20/0.39  # Proof object conjectures             : 66
% 0.20/0.39  # Proof object clause conjectures      : 63
% 0.20/0.39  # Proof object formula conjectures     : 3
% 0.20/0.39  # Proof object initial clauses used    : 28
% 0.20/0.39  # Proof object initial formulas used   : 6
% 0.20/0.39  # Proof object generating inferences   : 37
% 0.20/0.39  # Proof object simplifying inferences  : 115
% 0.20/0.39  # Training examples: 0 positive, 0 negative
% 0.20/0.39  # Parsed axioms                        : 6
% 0.20/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.39  # Initial clauses                      : 38
% 0.20/0.39  # Removed in clause preprocessing      : 0
% 0.20/0.39  # Initial clauses in saturation        : 38
% 0.20/0.39  # Processed clauses                    : 338
% 0.20/0.39  # ...of these trivial                  : 8
% 0.20/0.39  # ...subsumed                          : 112
% 0.20/0.39  # ...remaining for further processing  : 217
% 0.20/0.39  # Other redundant clauses eliminated   : 18
% 0.20/0.39  # Clauses deleted for lack of memory   : 0
% 0.20/0.39  # Backward-subsumed                    : 0
% 0.20/0.39  # Backward-rewritten                   : 92
% 0.20/0.39  # Generated clauses                    : 485
% 0.20/0.39  # ...of the previous two non-trivial   : 544
% 0.20/0.39  # Contextual simplify-reflections      : 3
% 0.20/0.39  # Paramodulations                      : 472
% 0.20/0.39  # Factorizations                       : 0
% 0.20/0.39  # Equation resolutions                 : 18
% 0.20/0.39  # Propositional unsat checks           : 0
% 0.20/0.39  #    Propositional check models        : 0
% 0.20/0.39  #    Propositional check unsatisfiable : 0
% 0.20/0.39  #    Propositional clauses             : 0
% 0.20/0.39  #    Propositional clauses after purity: 0
% 0.20/0.39  #    Propositional unsat core size     : 0
% 0.20/0.39  #    Propositional preprocessing time  : 0.000
% 0.20/0.39  #    Propositional encoding time       : 0.000
% 0.20/0.39  #    Propositional solver time         : 0.000
% 0.20/0.39  #    Success case prop preproc time    : 0.000
% 0.20/0.39  #    Success case prop encoding time   : 0.000
% 0.20/0.39  #    Success case prop solver time     : 0.000
% 0.20/0.39  # Current number of processed clauses  : 74
% 0.20/0.39  #    Positive orientable unit clauses  : 24
% 0.20/0.39  #    Positive unorientable unit clauses: 0
% 0.20/0.39  #    Negative unit clauses             : 3
% 0.20/0.39  #    Non-unit-clauses                  : 47
% 0.20/0.39  # Current number of unprocessed clauses: 278
% 0.20/0.39  # ...number of literals in the above   : 717
% 0.20/0.39  # Current number of archived formulas  : 0
% 0.20/0.39  # Current number of archived clauses   : 130
% 0.20/0.39  # Clause-clause subsumption calls (NU) : 4195
% 0.20/0.39  # Rec. Clause-clause subsumption calls : 2801
% 0.20/0.39  # Non-unit clause-clause subsumptions  : 115
% 0.20/0.39  # Unit Clause-clause subsumption calls : 119
% 0.20/0.39  # Rewrite failures with RHS unbound    : 0
% 0.20/0.39  # BW rewrite match attempts            : 8
% 0.20/0.39  # BW rewrite match successes           : 8
% 0.20/0.39  # Condensation attempts                : 0
% 0.20/0.39  # Condensation successes               : 0
% 0.20/0.39  # Termbank termtop insertions          : 16427
% 0.20/0.39  
% 0.20/0.39  # -------------------------------------------------
% 0.20/0.39  # User time                : 0.050 s
% 0.20/0.39  # System time              : 0.006 s
% 0.20/0.39  # Total time               : 0.055 s
% 0.20/0.39  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
