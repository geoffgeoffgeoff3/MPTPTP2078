%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n011.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:00:31 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   52 ( 752 expanded)
%              Number of clauses        :   39 ( 287 expanded)
%              Number of leaves         :    6 ( 185 expanded)
%              Depth                    :   10
%              Number of atoms          :  309 (4963 expanded)
%              Number of equality atoms :  234 (3219 expanded)
%              Maximal formula depth    :   21 (   7 average)
%              Maximal clause size      :   42 (   4 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(d4_zfmisc_1,axiom,(
    ! [X1,X2,X3,X4] : k4_zfmisc_1(X1,X2,X3,X4) = k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_zfmisc_1)).

fof(d3_zfmisc_1,axiom,(
    ! [X1,X2,X3] : k3_zfmisc_1(X1,X2,X3) = k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_zfmisc_1)).

fof(t82_mcart_1,conjecture,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( m1_subset_1(X6,k4_zfmisc_1(X1,X2,X3,X4))
     => ( ! [X7] :
            ( m1_subset_1(X7,X1)
           => ! [X8] :
                ( m1_subset_1(X8,X2)
               => ! [X9] :
                    ( m1_subset_1(X9,X3)
                   => ! [X10] :
                        ( m1_subset_1(X10,X4)
                       => ( X6 = k4_mcart_1(X7,X8,X9,X10)
                         => X5 = X10 ) ) ) ) )
       => ( X1 = k1_xboole_0
          | X2 = k1_xboole_0
          | X3 = k1_xboole_0
          | X4 = k1_xboole_0
          | X5 = k11_mcart_1(X1,X2,X3,X4,X6) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t82_mcart_1)).

fof(t78_mcart_1,axiom,(
    ! [X1,X2,X3,X4,X5] :
      ( m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))
     => ~ ( X1 != k1_xboole_0
          & X2 != k1_xboole_0
          & X3 != k1_xboole_0
          & X4 != k1_xboole_0
          & ? [X6,X7,X8,X9] :
              ( X5 = k4_mcart_1(X6,X7,X8,X9)
              & ~ ( k8_mcart_1(X1,X2,X3,X4,X5) = X6
                  & k9_mcart_1(X1,X2,X3,X4,X5) = X7
                  & k10_mcart_1(X1,X2,X3,X4,X5) = X8
                  & k11_mcart_1(X1,X2,X3,X4,X5) = X9 ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t78_mcart_1)).

fof(t81_mcart_1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( m1_subset_1(X6,k4_zfmisc_1(X1,X2,X3,X4))
     => ( ! [X7] :
            ( m1_subset_1(X7,X1)
           => ! [X8] :
                ( m1_subset_1(X8,X2)
               => ! [X9] :
                    ( m1_subset_1(X9,X3)
                   => ! [X10] :
                        ( m1_subset_1(X10,X4)
                       => ( X6 = k4_mcart_1(X7,X8,X9,X10)
                         => X5 = X9 ) ) ) ) )
       => ( X1 = k1_xboole_0
          | X2 = k1_xboole_0
          | X3 = k1_xboole_0
          | X4 = k1_xboole_0
          | X5 = k10_mcart_1(X1,X2,X3,X4,X6) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t81_mcart_1)).

fof(t61_mcart_1,axiom,(
    ! [X1,X2,X3,X4] :
      ~ ( X1 != k1_xboole_0
        & X2 != k1_xboole_0
        & X3 != k1_xboole_0
        & X4 != k1_xboole_0
        & ~ ! [X5] :
              ( m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))
             => ( k8_mcart_1(X1,X2,X3,X4,X5) = k1_mcart_1(k1_mcart_1(k1_mcart_1(X5)))
                & k9_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(k1_mcart_1(k1_mcart_1(X5)))
                & k10_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(k1_mcart_1(X5))
                & k11_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(X5) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t61_mcart_1)).

fof(c_0_6,plain,(
    ! [X14,X15,X16,X17] : k4_zfmisc_1(X14,X15,X16,X17) = k2_zfmisc_1(k3_zfmisc_1(X14,X15,X16),X17) ),
    inference(variable_rename,[status(thm)],[d4_zfmisc_1])).

fof(c_0_7,plain,(
    ! [X11,X12,X13] : k3_zfmisc_1(X11,X12,X13) = k2_zfmisc_1(k2_zfmisc_1(X11,X12),X13) ),
    inference(variable_rename,[status(thm)],[d3_zfmisc_1])).

fof(c_0_8,negated_conjecture,(
    ~ ! [X1,X2,X3,X4,X5,X6] :
        ( m1_subset_1(X6,k4_zfmisc_1(X1,X2,X3,X4))
       => ( ! [X7] :
              ( m1_subset_1(X7,X1)
             => ! [X8] :
                  ( m1_subset_1(X8,X2)
                 => ! [X9] :
                      ( m1_subset_1(X9,X3)
                     => ! [X10] :
                          ( m1_subset_1(X10,X4)
                         => ( X6 = k4_mcart_1(X7,X8,X9,X10)
                           => X5 = X10 ) ) ) ) )
         => ( X1 = k1_xboole_0
            | X2 = k1_xboole_0
            | X3 = k1_xboole_0
            | X4 = k1_xboole_0
            | X5 = k11_mcart_1(X1,X2,X3,X4,X6) ) ) ) ),
    inference(assume_negation,[status(cth)],[t82_mcart_1])).

fof(c_0_9,plain,(
    ! [X23,X24,X25,X26,X27,X28,X29,X30,X31] :
      ( ( k8_mcart_1(X23,X24,X25,X26,X27) = X28
        | X27 != k4_mcart_1(X28,X29,X30,X31)
        | X23 = k1_xboole_0
        | X24 = k1_xboole_0
        | X25 = k1_xboole_0
        | X26 = k1_xboole_0
        | ~ m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26)) )
      & ( k9_mcart_1(X23,X24,X25,X26,X27) = X29
        | X27 != k4_mcart_1(X28,X29,X30,X31)
        | X23 = k1_xboole_0
        | X24 = k1_xboole_0
        | X25 = k1_xboole_0
        | X26 = k1_xboole_0
        | ~ m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26)) )
      & ( k10_mcart_1(X23,X24,X25,X26,X27) = X30
        | X27 != k4_mcart_1(X28,X29,X30,X31)
        | X23 = k1_xboole_0
        | X24 = k1_xboole_0
        | X25 = k1_xboole_0
        | X26 = k1_xboole_0
        | ~ m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26)) )
      & ( k11_mcart_1(X23,X24,X25,X26,X27) = X31
        | X27 != k4_mcart_1(X28,X29,X30,X31)
        | X23 = k1_xboole_0
        | X24 = k1_xboole_0
        | X25 = k1_xboole_0
        | X26 = k1_xboole_0
        | ~ m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26)) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t78_mcart_1])])])])).

cnf(c_0_10,plain,
    ( k4_zfmisc_1(X1,X2,X3,X4) = k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_11,plain,
    ( k3_zfmisc_1(X1,X2,X3) = k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

fof(c_0_12,plain,(
    ! [X32,X33,X34,X35,X36,X37] :
      ( ( m1_subset_1(esk1_6(X32,X33,X34,X35,X36,X37),X32)
        | X32 = k1_xboole_0
        | X33 = k1_xboole_0
        | X34 = k1_xboole_0
        | X35 = k1_xboole_0
        | X36 = k10_mcart_1(X32,X33,X34,X35,X37)
        | ~ m1_subset_1(X37,k4_zfmisc_1(X32,X33,X34,X35)) )
      & ( m1_subset_1(esk2_6(X32,X33,X34,X35,X36,X37),X33)
        | X32 = k1_xboole_0
        | X33 = k1_xboole_0
        | X34 = k1_xboole_0
        | X35 = k1_xboole_0
        | X36 = k10_mcart_1(X32,X33,X34,X35,X37)
        | ~ m1_subset_1(X37,k4_zfmisc_1(X32,X33,X34,X35)) )
      & ( m1_subset_1(esk3_6(X32,X33,X34,X35,X36,X37),X34)
        | X32 = k1_xboole_0
        | X33 = k1_xboole_0
        | X34 = k1_xboole_0
        | X35 = k1_xboole_0
        | X36 = k10_mcart_1(X32,X33,X34,X35,X37)
        | ~ m1_subset_1(X37,k4_zfmisc_1(X32,X33,X34,X35)) )
      & ( m1_subset_1(esk4_6(X32,X33,X34,X35,X36,X37),X35)
        | X32 = k1_xboole_0
        | X33 = k1_xboole_0
        | X34 = k1_xboole_0
        | X35 = k1_xboole_0
        | X36 = k10_mcart_1(X32,X33,X34,X35,X37)
        | ~ m1_subset_1(X37,k4_zfmisc_1(X32,X33,X34,X35)) )
      & ( X37 = k4_mcart_1(esk1_6(X32,X33,X34,X35,X36,X37),esk2_6(X32,X33,X34,X35,X36,X37),esk3_6(X32,X33,X34,X35,X36,X37),esk4_6(X32,X33,X34,X35,X36,X37))
        | X32 = k1_xboole_0
        | X33 = k1_xboole_0
        | X34 = k1_xboole_0
        | X35 = k1_xboole_0
        | X36 = k10_mcart_1(X32,X33,X34,X35,X37)
        | ~ m1_subset_1(X37,k4_zfmisc_1(X32,X33,X34,X35)) )
      & ( X36 != esk3_6(X32,X33,X34,X35,X36,X37)
        | X32 = k1_xboole_0
        | X33 = k1_xboole_0
        | X34 = k1_xboole_0
        | X35 = k1_xboole_0
        | X36 = k10_mcart_1(X32,X33,X34,X35,X37)
        | ~ m1_subset_1(X37,k4_zfmisc_1(X32,X33,X34,X35)) ) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t81_mcart_1])])])])).

fof(c_0_13,negated_conjecture,(
    ! [X48,X49,X50,X51] :
      ( m1_subset_1(esk10_0,k4_zfmisc_1(esk5_0,esk6_0,esk7_0,esk8_0))
      & ( ~ m1_subset_1(X48,esk5_0)
        | ~ m1_subset_1(X49,esk6_0)
        | ~ m1_subset_1(X50,esk7_0)
        | ~ m1_subset_1(X51,esk8_0)
        | esk10_0 != k4_mcart_1(X48,X49,X50,X51)
        | esk9_0 = X51 )
      & esk5_0 != k1_xboole_0
      & esk6_0 != k1_xboole_0
      & esk7_0 != k1_xboole_0
      & esk8_0 != k1_xboole_0
      & esk9_0 != k11_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0) ) ),
    inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_8])])])])).

cnf(c_0_14,plain,
    ( k11_mcart_1(X1,X2,X3,X4,X5) = X6
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k1_xboole_0
    | X5 != k4_mcart_1(X7,X8,X9,X6)
    | ~ m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,plain,
    ( k4_zfmisc_1(X1,X2,X3,X4) = k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4) ),
    inference(rw,[status(thm)],[c_0_10,c_0_11])).

cnf(c_0_16,plain,
    ( X1 = k4_mcart_1(esk1_6(X2,X3,X4,X5,X6,X1),esk2_6(X2,X3,X4,X5,X6,X1),esk3_6(X2,X3,X4,X5,X6,X1),esk4_6(X2,X3,X4,X5,X6,X1))
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k1_xboole_0
    | X5 = k1_xboole_0
    | X6 = k10_mcart_1(X2,X3,X4,X5,X1)
    | ~ m1_subset_1(X1,k4_zfmisc_1(X2,X3,X4,X5)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_17,negated_conjecture,
    ( m1_subset_1(esk10_0,k4_zfmisc_1(esk5_0,esk6_0,esk7_0,esk8_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_18,plain,(
    ! [X18,X19,X20,X21,X22] :
      ( ( k8_mcart_1(X18,X19,X20,X21,X22) = k1_mcart_1(k1_mcart_1(k1_mcart_1(X22)))
        | ~ m1_subset_1(X22,k4_zfmisc_1(X18,X19,X20,X21))
        | X18 = k1_xboole_0
        | X19 = k1_xboole_0
        | X20 = k1_xboole_0
        | X21 = k1_xboole_0 )
      & ( k9_mcart_1(X18,X19,X20,X21,X22) = k2_mcart_1(k1_mcart_1(k1_mcart_1(X22)))
        | ~ m1_subset_1(X22,k4_zfmisc_1(X18,X19,X20,X21))
        | X18 = k1_xboole_0
        | X19 = k1_xboole_0
        | X20 = k1_xboole_0
        | X21 = k1_xboole_0 )
      & ( k10_mcart_1(X18,X19,X20,X21,X22) = k2_mcart_1(k1_mcart_1(X22))
        | ~ m1_subset_1(X22,k4_zfmisc_1(X18,X19,X20,X21))
        | X18 = k1_xboole_0
        | X19 = k1_xboole_0
        | X20 = k1_xboole_0
        | X21 = k1_xboole_0 )
      & ( k11_mcart_1(X18,X19,X20,X21,X22) = k2_mcart_1(X22)
        | ~ m1_subset_1(X22,k4_zfmisc_1(X18,X19,X20,X21))
        | X18 = k1_xboole_0
        | X19 = k1_xboole_0
        | X20 = k1_xboole_0
        | X21 = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_mcart_1])])])])).

cnf(c_0_19,plain,
    ( m1_subset_1(esk1_6(X1,X2,X3,X4,X5,X6),X1)
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k1_xboole_0
    | X5 = k10_mcart_1(X1,X2,X3,X4,X6)
    | ~ m1_subset_1(X6,k4_zfmisc_1(X1,X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_20,plain,
    ( m1_subset_1(esk2_6(X1,X2,X3,X4,X5,X6),X2)
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k1_xboole_0
    | X5 = k10_mcart_1(X1,X2,X3,X4,X6)
    | ~ m1_subset_1(X6,k4_zfmisc_1(X1,X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_21,plain,
    ( m1_subset_1(esk3_6(X1,X2,X3,X4,X5,X6),X3)
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k1_xboole_0
    | X5 = k10_mcart_1(X1,X2,X3,X4,X6)
    | ~ m1_subset_1(X6,k4_zfmisc_1(X1,X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_22,plain,
    ( m1_subset_1(esk4_6(X1,X2,X3,X4,X5,X6),X4)
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k1_xboole_0
    | X5 = k10_mcart_1(X1,X2,X3,X4,X6)
    | ~ m1_subset_1(X6,k4_zfmisc_1(X1,X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_23,plain,
    ( X4 = k1_xboole_0
    | X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | k11_mcart_1(X1,X2,X3,X4,X5) = X6
    | X5 != k4_mcart_1(X7,X8,X9,X6)
    | ~ m1_subset_1(X5,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)) ),
    inference(rw,[status(thm)],[c_0_14,c_0_15])).

cnf(c_0_24,plain,
    ( X5 = k1_xboole_0
    | X4 = k1_xboole_0
    | X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X6 = k10_mcart_1(X2,X3,X4,X5,X1)
    | X1 = k4_mcart_1(esk1_6(X2,X3,X4,X5,X6,X1),esk2_6(X2,X3,X4,X5,X6,X1),esk3_6(X2,X3,X4,X5,X6,X1),esk4_6(X2,X3,X4,X5,X6,X1))
    | ~ m1_subset_1(X1,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X2,X3),X4),X5)) ),
    inference(rw,[status(thm)],[c_0_16,c_0_15])).

cnf(c_0_25,negated_conjecture,
    ( m1_subset_1(esk10_0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(esk5_0,esk6_0),esk7_0),esk8_0)) ),
    inference(rw,[status(thm)],[c_0_17,c_0_15])).

cnf(c_0_26,negated_conjecture,
    ( esk8_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_27,negated_conjecture,
    ( esk7_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_28,negated_conjecture,
    ( esk6_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_29,negated_conjecture,
    ( esk5_0 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_30,plain,
    ( k11_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(X5)
    | X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | X3 = k1_xboole_0
    | X4 = k1_xboole_0
    | ~ m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4)) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_31,plain,
    ( X4 = k1_xboole_0
    | X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | X5 = k10_mcart_1(X1,X2,X3,X4,X6)
    | m1_subset_1(esk1_6(X1,X2,X3,X4,X5,X6),X1)
    | ~ m1_subset_1(X6,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)) ),
    inference(rw,[status(thm)],[c_0_19,c_0_15])).

cnf(c_0_32,plain,
    ( X4 = k1_xboole_0
    | X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | X5 = k10_mcart_1(X1,X2,X3,X4,X6)
    | m1_subset_1(esk2_6(X1,X2,X3,X4,X5,X6),X2)
    | ~ m1_subset_1(X6,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)) ),
    inference(rw,[status(thm)],[c_0_20,c_0_15])).

cnf(c_0_33,plain,
    ( X4 = k1_xboole_0
    | X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | X5 = k10_mcart_1(X1,X2,X3,X4,X6)
    | m1_subset_1(esk3_6(X1,X2,X3,X4,X5,X6),X3)
    | ~ m1_subset_1(X6,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)) ),
    inference(rw,[status(thm)],[c_0_21,c_0_15])).

cnf(c_0_34,plain,
    ( X4 = k1_xboole_0
    | X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | X5 = k10_mcart_1(X1,X2,X3,X4,X6)
    | m1_subset_1(esk4_6(X1,X2,X3,X4,X5,X6),X4)
    | ~ m1_subset_1(X6,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)) ),
    inference(rw,[status(thm)],[c_0_22,c_0_15])).

cnf(c_0_35,plain,
    ( k11_mcart_1(X1,X2,X3,X4,k4_mcart_1(X5,X6,X7,X8)) = X8
    | X4 = k1_xboole_0
    | X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | ~ m1_subset_1(k4_mcart_1(X5,X6,X7,X8),k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)) ),
    inference(er,[status(thm)],[c_0_23])).

cnf(c_0_36,negated_conjecture,
    ( k4_mcart_1(esk1_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0),esk2_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0),esk3_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0),esk4_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0)) = esk10_0
    | X1 = k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_25]),c_0_26]),c_0_27]),c_0_28]),c_0_29])).

cnf(c_0_37,plain,
    ( X4 = k1_xboole_0
    | X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | k11_mcart_1(X1,X2,X3,X4,X5) = k2_mcart_1(X5)
    | ~ m1_subset_1(X5,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)) ),
    inference(rw,[status(thm)],[c_0_30,c_0_15])).

cnf(c_0_38,negated_conjecture,
    ( esk9_0 = X4
    | ~ m1_subset_1(X1,esk5_0)
    | ~ m1_subset_1(X2,esk6_0)
    | ~ m1_subset_1(X3,esk7_0)
    | ~ m1_subset_1(X4,esk8_0)
    | esk10_0 != k4_mcart_1(X1,X2,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_39,negated_conjecture,
    ( X1 = k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)
    | m1_subset_1(esk1_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0),esk5_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_25]),c_0_26]),c_0_27]),c_0_28]),c_0_29])).

cnf(c_0_40,negated_conjecture,
    ( X1 = k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)
    | m1_subset_1(esk2_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0),esk6_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_25]),c_0_26]),c_0_27]),c_0_28]),c_0_29])).

cnf(c_0_41,negated_conjecture,
    ( X1 = k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)
    | m1_subset_1(esk3_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0),esk7_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_25]),c_0_26]),c_0_27]),c_0_28]),c_0_29])).

cnf(c_0_42,negated_conjecture,
    ( X1 = k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)
    | m1_subset_1(esk4_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0),esk8_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_25]),c_0_26]),c_0_27]),c_0_28]),c_0_29])).

cnf(c_0_43,negated_conjecture,
    ( k11_mcart_1(X1,X2,X3,X4,esk10_0) = esk4_6(esk5_0,esk6_0,esk7_0,esk8_0,X5,esk10_0)
    | X5 = k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)
    | X4 = k1_xboole_0
    | X3 = k1_xboole_0
    | X2 = k1_xboole_0
    | X1 = k1_xboole_0
    | ~ m1_subset_1(esk10_0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_44,negated_conjecture,
    ( k11_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0) = k2_mcart_1(esk10_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_25]),c_0_26]),c_0_27]),c_0_28]),c_0_29])).

cnf(c_0_45,negated_conjecture,
    ( esk9_0 != k11_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_46,negated_conjecture,
    ( esk4_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0) = esk9_0
    | X1 = k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0) ),
    inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_36]),c_0_39]),c_0_40]),c_0_41]),c_0_42])).

cnf(c_0_47,negated_conjecture,
    ( esk4_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0) = k2_mcart_1(esk10_0)
    | X1 = k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_25]),c_0_44]),c_0_26]),c_0_27]),c_0_28]),c_0_29])).

cnf(c_0_48,negated_conjecture,
    ( k2_mcart_1(esk10_0) != esk9_0 ),
    inference(rw,[status(thm)],[c_0_45,c_0_44])).

cnf(c_0_49,negated_conjecture,
    ( X1 = k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_47]),c_0_48])).

cnf(c_0_50,negated_conjecture,
    ( X1 = X2 ),
    inference(spm,[status(thm)],[c_0_49,c_0_49])).

cnf(c_0_51,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[c_0_29,c_0_50]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.11  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n011.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 09:57:57 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.12/0.38  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.12/0.38  #
% 0.12/0.38  # Preprocessing time       : 0.028 s
% 0.12/0.38  # Presaturation interreduction done
% 0.12/0.38  
% 0.12/0.38  # Proof found!
% 0.12/0.38  # SZS status Theorem
% 0.12/0.38  # SZS output start CNFRefutation
% 0.12/0.38  fof(d4_zfmisc_1, axiom, ![X1, X2, X3, X4]:k4_zfmisc_1(X1,X2,X3,X4)=k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_zfmisc_1)).
% 0.12/0.38  fof(d3_zfmisc_1, axiom, ![X1, X2, X3]:k3_zfmisc_1(X1,X2,X3)=k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_zfmisc_1)).
% 0.12/0.38  fof(t82_mcart_1, conjecture, ![X1, X2, X3, X4, X5, X6]:(m1_subset_1(X6,k4_zfmisc_1(X1,X2,X3,X4))=>(![X7]:(m1_subset_1(X7,X1)=>![X8]:(m1_subset_1(X8,X2)=>![X9]:(m1_subset_1(X9,X3)=>![X10]:(m1_subset_1(X10,X4)=>(X6=k4_mcart_1(X7,X8,X9,X10)=>X5=X10)))))=>(X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|X5=k11_mcart_1(X1,X2,X3,X4,X6)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t82_mcart_1)).
% 0.12/0.38  fof(t78_mcart_1, axiom, ![X1, X2, X3, X4, X5]:(m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))=>~(((((X1!=k1_xboole_0&X2!=k1_xboole_0)&X3!=k1_xboole_0)&X4!=k1_xboole_0)&?[X6, X7, X8, X9]:(X5=k4_mcart_1(X6,X7,X8,X9)&~((((k8_mcart_1(X1,X2,X3,X4,X5)=X6&k9_mcart_1(X1,X2,X3,X4,X5)=X7)&k10_mcart_1(X1,X2,X3,X4,X5)=X8)&k11_mcart_1(X1,X2,X3,X4,X5)=X9)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t78_mcart_1)).
% 0.12/0.38  fof(t81_mcart_1, axiom, ![X1, X2, X3, X4, X5, X6]:(m1_subset_1(X6,k4_zfmisc_1(X1,X2,X3,X4))=>(![X7]:(m1_subset_1(X7,X1)=>![X8]:(m1_subset_1(X8,X2)=>![X9]:(m1_subset_1(X9,X3)=>![X10]:(m1_subset_1(X10,X4)=>(X6=k4_mcart_1(X7,X8,X9,X10)=>X5=X9)))))=>(X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|X5=k10_mcart_1(X1,X2,X3,X4,X6)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t81_mcart_1)).
% 0.12/0.38  fof(t61_mcart_1, axiom, ![X1, X2, X3, X4]:~(((((X1!=k1_xboole_0&X2!=k1_xboole_0)&X3!=k1_xboole_0)&X4!=k1_xboole_0)&~(![X5]:(m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))=>(((k8_mcart_1(X1,X2,X3,X4,X5)=k1_mcart_1(k1_mcart_1(k1_mcart_1(X5)))&k9_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(k1_mcart_1(k1_mcart_1(X5))))&k10_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(k1_mcart_1(X5)))&k11_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(X5)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t61_mcart_1)).
% 0.12/0.38  fof(c_0_6, plain, ![X14, X15, X16, X17]:k4_zfmisc_1(X14,X15,X16,X17)=k2_zfmisc_1(k3_zfmisc_1(X14,X15,X16),X17), inference(variable_rename,[status(thm)],[d4_zfmisc_1])).
% 0.12/0.38  fof(c_0_7, plain, ![X11, X12, X13]:k3_zfmisc_1(X11,X12,X13)=k2_zfmisc_1(k2_zfmisc_1(X11,X12),X13), inference(variable_rename,[status(thm)],[d3_zfmisc_1])).
% 0.12/0.38  fof(c_0_8, negated_conjecture, ~(![X1, X2, X3, X4, X5, X6]:(m1_subset_1(X6,k4_zfmisc_1(X1,X2,X3,X4))=>(![X7]:(m1_subset_1(X7,X1)=>![X8]:(m1_subset_1(X8,X2)=>![X9]:(m1_subset_1(X9,X3)=>![X10]:(m1_subset_1(X10,X4)=>(X6=k4_mcart_1(X7,X8,X9,X10)=>X5=X10)))))=>(X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|X5=k11_mcart_1(X1,X2,X3,X4,X6))))), inference(assume_negation,[status(cth)],[t82_mcart_1])).
% 0.12/0.38  fof(c_0_9, plain, ![X23, X24, X25, X26, X27, X28, X29, X30, X31]:((((k8_mcart_1(X23,X24,X25,X26,X27)=X28|X27!=k4_mcart_1(X28,X29,X30,X31)|(X23=k1_xboole_0|X24=k1_xboole_0|X25=k1_xboole_0|X26=k1_xboole_0)|~m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26)))&(k9_mcart_1(X23,X24,X25,X26,X27)=X29|X27!=k4_mcart_1(X28,X29,X30,X31)|(X23=k1_xboole_0|X24=k1_xboole_0|X25=k1_xboole_0|X26=k1_xboole_0)|~m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26))))&(k10_mcart_1(X23,X24,X25,X26,X27)=X30|X27!=k4_mcart_1(X28,X29,X30,X31)|(X23=k1_xboole_0|X24=k1_xboole_0|X25=k1_xboole_0|X26=k1_xboole_0)|~m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26))))&(k11_mcart_1(X23,X24,X25,X26,X27)=X31|X27!=k4_mcart_1(X28,X29,X30,X31)|(X23=k1_xboole_0|X24=k1_xboole_0|X25=k1_xboole_0|X26=k1_xboole_0)|~m1_subset_1(X27,k4_zfmisc_1(X23,X24,X25,X26)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t78_mcart_1])])])])).
% 0.12/0.38  cnf(c_0_10, plain, (k4_zfmisc_1(X1,X2,X3,X4)=k2_zfmisc_1(k3_zfmisc_1(X1,X2,X3),X4)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.12/0.38  cnf(c_0_11, plain, (k3_zfmisc_1(X1,X2,X3)=k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.12/0.38  fof(c_0_12, plain, ![X32, X33, X34, X35, X36, X37]:((m1_subset_1(esk1_6(X32,X33,X34,X35,X36,X37),X32)|(X32=k1_xboole_0|X33=k1_xboole_0|X34=k1_xboole_0|X35=k1_xboole_0|X36=k10_mcart_1(X32,X33,X34,X35,X37))|~m1_subset_1(X37,k4_zfmisc_1(X32,X33,X34,X35)))&((m1_subset_1(esk2_6(X32,X33,X34,X35,X36,X37),X33)|(X32=k1_xboole_0|X33=k1_xboole_0|X34=k1_xboole_0|X35=k1_xboole_0|X36=k10_mcart_1(X32,X33,X34,X35,X37))|~m1_subset_1(X37,k4_zfmisc_1(X32,X33,X34,X35)))&((m1_subset_1(esk3_6(X32,X33,X34,X35,X36,X37),X34)|(X32=k1_xboole_0|X33=k1_xboole_0|X34=k1_xboole_0|X35=k1_xboole_0|X36=k10_mcart_1(X32,X33,X34,X35,X37))|~m1_subset_1(X37,k4_zfmisc_1(X32,X33,X34,X35)))&((m1_subset_1(esk4_6(X32,X33,X34,X35,X36,X37),X35)|(X32=k1_xboole_0|X33=k1_xboole_0|X34=k1_xboole_0|X35=k1_xboole_0|X36=k10_mcart_1(X32,X33,X34,X35,X37))|~m1_subset_1(X37,k4_zfmisc_1(X32,X33,X34,X35)))&((X37=k4_mcart_1(esk1_6(X32,X33,X34,X35,X36,X37),esk2_6(X32,X33,X34,X35,X36,X37),esk3_6(X32,X33,X34,X35,X36,X37),esk4_6(X32,X33,X34,X35,X36,X37))|(X32=k1_xboole_0|X33=k1_xboole_0|X34=k1_xboole_0|X35=k1_xboole_0|X36=k10_mcart_1(X32,X33,X34,X35,X37))|~m1_subset_1(X37,k4_zfmisc_1(X32,X33,X34,X35)))&(X36!=esk3_6(X32,X33,X34,X35,X36,X37)|(X32=k1_xboole_0|X33=k1_xboole_0|X34=k1_xboole_0|X35=k1_xboole_0|X36=k10_mcart_1(X32,X33,X34,X35,X37))|~m1_subset_1(X37,k4_zfmisc_1(X32,X33,X34,X35)))))))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t81_mcart_1])])])])).
% 0.12/0.38  fof(c_0_13, negated_conjecture, ![X48, X49, X50, X51]:(m1_subset_1(esk10_0,k4_zfmisc_1(esk5_0,esk6_0,esk7_0,esk8_0))&((~m1_subset_1(X48,esk5_0)|(~m1_subset_1(X49,esk6_0)|(~m1_subset_1(X50,esk7_0)|(~m1_subset_1(X51,esk8_0)|(esk10_0!=k4_mcart_1(X48,X49,X50,X51)|esk9_0=X51)))))&((((esk5_0!=k1_xboole_0&esk6_0!=k1_xboole_0)&esk7_0!=k1_xboole_0)&esk8_0!=k1_xboole_0)&esk9_0!=k11_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)))), inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_8])])])])).
% 0.12/0.38  cnf(c_0_14, plain, (k11_mcart_1(X1,X2,X3,X4,X5)=X6|X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|X5!=k4_mcart_1(X7,X8,X9,X6)|~m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.38  cnf(c_0_15, plain, (k4_zfmisc_1(X1,X2,X3,X4)=k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4)), inference(rw,[status(thm)],[c_0_10, c_0_11])).
% 0.12/0.38  cnf(c_0_16, plain, (X1=k4_mcart_1(esk1_6(X2,X3,X4,X5,X6,X1),esk2_6(X2,X3,X4,X5,X6,X1),esk3_6(X2,X3,X4,X5,X6,X1),esk4_6(X2,X3,X4,X5,X6,X1))|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|X5=k1_xboole_0|X6=k10_mcart_1(X2,X3,X4,X5,X1)|~m1_subset_1(X1,k4_zfmisc_1(X2,X3,X4,X5))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.12/0.38  cnf(c_0_17, negated_conjecture, (m1_subset_1(esk10_0,k4_zfmisc_1(esk5_0,esk6_0,esk7_0,esk8_0))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.38  fof(c_0_18, plain, ![X18, X19, X20, X21, X22]:((((k8_mcart_1(X18,X19,X20,X21,X22)=k1_mcart_1(k1_mcart_1(k1_mcart_1(X22)))|~m1_subset_1(X22,k4_zfmisc_1(X18,X19,X20,X21))|(X18=k1_xboole_0|X19=k1_xboole_0|X20=k1_xboole_0|X21=k1_xboole_0))&(k9_mcart_1(X18,X19,X20,X21,X22)=k2_mcart_1(k1_mcart_1(k1_mcart_1(X22)))|~m1_subset_1(X22,k4_zfmisc_1(X18,X19,X20,X21))|(X18=k1_xboole_0|X19=k1_xboole_0|X20=k1_xboole_0|X21=k1_xboole_0)))&(k10_mcart_1(X18,X19,X20,X21,X22)=k2_mcart_1(k1_mcart_1(X22))|~m1_subset_1(X22,k4_zfmisc_1(X18,X19,X20,X21))|(X18=k1_xboole_0|X19=k1_xboole_0|X20=k1_xboole_0|X21=k1_xboole_0)))&(k11_mcart_1(X18,X19,X20,X21,X22)=k2_mcart_1(X22)|~m1_subset_1(X22,k4_zfmisc_1(X18,X19,X20,X21))|(X18=k1_xboole_0|X19=k1_xboole_0|X20=k1_xboole_0|X21=k1_xboole_0))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t61_mcart_1])])])])).
% 0.12/0.38  cnf(c_0_19, plain, (m1_subset_1(esk1_6(X1,X2,X3,X4,X5,X6),X1)|X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|X5=k10_mcart_1(X1,X2,X3,X4,X6)|~m1_subset_1(X6,k4_zfmisc_1(X1,X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.12/0.38  cnf(c_0_20, plain, (m1_subset_1(esk2_6(X1,X2,X3,X4,X5,X6),X2)|X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|X5=k10_mcart_1(X1,X2,X3,X4,X6)|~m1_subset_1(X6,k4_zfmisc_1(X1,X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.12/0.38  cnf(c_0_21, plain, (m1_subset_1(esk3_6(X1,X2,X3,X4,X5,X6),X3)|X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|X5=k10_mcart_1(X1,X2,X3,X4,X6)|~m1_subset_1(X6,k4_zfmisc_1(X1,X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.12/0.38  cnf(c_0_22, plain, (m1_subset_1(esk4_6(X1,X2,X3,X4,X5,X6),X4)|X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|X5=k10_mcart_1(X1,X2,X3,X4,X6)|~m1_subset_1(X6,k4_zfmisc_1(X1,X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.12/0.38  cnf(c_0_23, plain, (X4=k1_xboole_0|X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|k11_mcart_1(X1,X2,X3,X4,X5)=X6|X5!=k4_mcart_1(X7,X8,X9,X6)|~m1_subset_1(X5,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))), inference(rw,[status(thm)],[c_0_14, c_0_15])).
% 0.12/0.38  cnf(c_0_24, plain, (X5=k1_xboole_0|X4=k1_xboole_0|X3=k1_xboole_0|X2=k1_xboole_0|X6=k10_mcart_1(X2,X3,X4,X5,X1)|X1=k4_mcart_1(esk1_6(X2,X3,X4,X5,X6,X1),esk2_6(X2,X3,X4,X5,X6,X1),esk3_6(X2,X3,X4,X5,X6,X1),esk4_6(X2,X3,X4,X5,X6,X1))|~m1_subset_1(X1,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X2,X3),X4),X5))), inference(rw,[status(thm)],[c_0_16, c_0_15])).
% 0.12/0.38  cnf(c_0_25, negated_conjecture, (m1_subset_1(esk10_0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(esk5_0,esk6_0),esk7_0),esk8_0))), inference(rw,[status(thm)],[c_0_17, c_0_15])).
% 0.12/0.38  cnf(c_0_26, negated_conjecture, (esk8_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.38  cnf(c_0_27, negated_conjecture, (esk7_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.38  cnf(c_0_28, negated_conjecture, (esk6_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.38  cnf(c_0_29, negated_conjecture, (esk5_0!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.38  cnf(c_0_30, plain, (k11_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(X5)|X1=k1_xboole_0|X2=k1_xboole_0|X3=k1_xboole_0|X4=k1_xboole_0|~m1_subset_1(X5,k4_zfmisc_1(X1,X2,X3,X4))), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.12/0.38  cnf(c_0_31, plain, (X4=k1_xboole_0|X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|X5=k10_mcart_1(X1,X2,X3,X4,X6)|m1_subset_1(esk1_6(X1,X2,X3,X4,X5,X6),X1)|~m1_subset_1(X6,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))), inference(rw,[status(thm)],[c_0_19, c_0_15])).
% 0.12/0.38  cnf(c_0_32, plain, (X4=k1_xboole_0|X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|X5=k10_mcart_1(X1,X2,X3,X4,X6)|m1_subset_1(esk2_6(X1,X2,X3,X4,X5,X6),X2)|~m1_subset_1(X6,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))), inference(rw,[status(thm)],[c_0_20, c_0_15])).
% 0.12/0.38  cnf(c_0_33, plain, (X4=k1_xboole_0|X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|X5=k10_mcart_1(X1,X2,X3,X4,X6)|m1_subset_1(esk3_6(X1,X2,X3,X4,X5,X6),X3)|~m1_subset_1(X6,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))), inference(rw,[status(thm)],[c_0_21, c_0_15])).
% 0.12/0.38  cnf(c_0_34, plain, (X4=k1_xboole_0|X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|X5=k10_mcart_1(X1,X2,X3,X4,X6)|m1_subset_1(esk4_6(X1,X2,X3,X4,X5,X6),X4)|~m1_subset_1(X6,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))), inference(rw,[status(thm)],[c_0_22, c_0_15])).
% 0.12/0.38  cnf(c_0_35, plain, (k11_mcart_1(X1,X2,X3,X4,k4_mcart_1(X5,X6,X7,X8))=X8|X4=k1_xboole_0|X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|~m1_subset_1(k4_mcart_1(X5,X6,X7,X8),k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))), inference(er,[status(thm)],[c_0_23])).
% 0.12/0.38  cnf(c_0_36, negated_conjecture, (k4_mcart_1(esk1_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0),esk2_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0),esk3_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0),esk4_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0))=esk10_0|X1=k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_25]), c_0_26]), c_0_27]), c_0_28]), c_0_29])).
% 0.12/0.38  cnf(c_0_37, plain, (X4=k1_xboole_0|X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|k11_mcart_1(X1,X2,X3,X4,X5)=k2_mcart_1(X5)|~m1_subset_1(X5,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))), inference(rw,[status(thm)],[c_0_30, c_0_15])).
% 0.12/0.38  cnf(c_0_38, negated_conjecture, (esk9_0=X4|~m1_subset_1(X1,esk5_0)|~m1_subset_1(X2,esk6_0)|~m1_subset_1(X3,esk7_0)|~m1_subset_1(X4,esk8_0)|esk10_0!=k4_mcart_1(X1,X2,X3,X4)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.38  cnf(c_0_39, negated_conjecture, (X1=k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)|m1_subset_1(esk1_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0),esk5_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_25]), c_0_26]), c_0_27]), c_0_28]), c_0_29])).
% 0.12/0.38  cnf(c_0_40, negated_conjecture, (X1=k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)|m1_subset_1(esk2_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0),esk6_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_25]), c_0_26]), c_0_27]), c_0_28]), c_0_29])).
% 0.12/0.38  cnf(c_0_41, negated_conjecture, (X1=k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)|m1_subset_1(esk3_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0),esk7_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_25]), c_0_26]), c_0_27]), c_0_28]), c_0_29])).
% 0.12/0.38  cnf(c_0_42, negated_conjecture, (X1=k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)|m1_subset_1(esk4_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0),esk8_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_25]), c_0_26]), c_0_27]), c_0_28]), c_0_29])).
% 0.12/0.38  cnf(c_0_43, negated_conjecture, (k11_mcart_1(X1,X2,X3,X4,esk10_0)=esk4_6(esk5_0,esk6_0,esk7_0,esk8_0,X5,esk10_0)|X5=k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)|X4=k1_xboole_0|X3=k1_xboole_0|X2=k1_xboole_0|X1=k1_xboole_0|~m1_subset_1(esk10_0,k2_zfmisc_1(k2_zfmisc_1(k2_zfmisc_1(X1,X2),X3),X4))), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.12/0.38  cnf(c_0_44, negated_conjecture, (k11_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)=k2_mcart_1(esk10_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_25]), c_0_26]), c_0_27]), c_0_28]), c_0_29])).
% 0.12/0.38  cnf(c_0_45, negated_conjecture, (esk9_0!=k11_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.12/0.38  cnf(c_0_46, negated_conjecture, (esk4_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0)=esk9_0|X1=k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)), inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_36]), c_0_39]), c_0_40]), c_0_41]), c_0_42])).
% 0.12/0.38  cnf(c_0_47, negated_conjecture, (esk4_6(esk5_0,esk6_0,esk7_0,esk8_0,X1,esk10_0)=k2_mcart_1(esk10_0)|X1=k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_25]), c_0_44]), c_0_26]), c_0_27]), c_0_28]), c_0_29])).
% 0.12/0.38  cnf(c_0_48, negated_conjecture, (k2_mcart_1(esk10_0)!=esk9_0), inference(rw,[status(thm)],[c_0_45, c_0_44])).
% 0.12/0.38  cnf(c_0_49, negated_conjecture, (X1=k10_mcart_1(esk5_0,esk6_0,esk7_0,esk8_0,esk10_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_47]), c_0_48])).
% 0.12/0.38  cnf(c_0_50, negated_conjecture, (X1=X2), inference(spm,[status(thm)],[c_0_49, c_0_49])).
% 0.12/0.38  cnf(c_0_51, negated_conjecture, ($false), inference(sr,[status(thm)],[c_0_29, c_0_50]), ['proof']).
% 0.12/0.38  # SZS output end CNFRefutation
% 0.12/0.38  # Proof object total steps             : 52
% 0.12/0.38  # Proof object clause steps            : 39
% 0.12/0.38  # Proof object formula steps           : 13
% 0.12/0.38  # Proof object conjectures             : 24
% 0.12/0.38  # Proof object clause conjectures      : 21
% 0.12/0.38  # Proof object formula conjectures     : 3
% 0.12/0.38  # Proof object initial clauses used    : 16
% 0.12/0.38  # Proof object initial formulas used   : 6
% 0.12/0.38  # Proof object generating inferences   : 11
% 0.12/0.38  # Proof object simplifying inferences  : 46
% 0.12/0.38  # Training examples: 0 positive, 0 negative
% 0.12/0.38  # Parsed axioms                        : 6
% 0.12/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.38  # Initial clauses                      : 23
% 0.12/0.38  # Removed in clause preprocessing      : 2
% 0.12/0.38  # Initial clauses in saturation        : 21
% 0.12/0.38  # Processed clauses                    : 66
% 0.12/0.38  # ...of these trivial                  : 0
% 0.12/0.38  # ...subsumed                          : 0
% 0.12/0.38  # ...remaining for further processing  : 66
% 0.12/0.38  # Other redundant clauses eliminated   : 18
% 0.12/0.38  # Clauses deleted for lack of memory   : 0
% 0.12/0.38  # Backward-subsumed                    : 4
% 0.12/0.38  # Backward-rewritten                   : 30
% 0.12/0.38  # Generated clauses                    : 396
% 0.12/0.38  # ...of the previous two non-trivial   : 394
% 0.12/0.38  # Contextual simplify-reflections      : 4
% 0.12/0.38  # Paramodulations                      : 373
% 0.12/0.38  # Factorizations                       : 0
% 0.12/0.38  # Equation resolutions                 : 18
% 0.12/0.38  # Propositional unsat checks           : 0
% 0.12/0.38  #    Propositional check models        : 0
% 0.12/0.38  #    Propositional check unsatisfiable : 0
% 0.12/0.38  #    Propositional clauses             : 0
% 0.12/0.38  #    Propositional clauses after purity: 0
% 0.12/0.38  #    Propositional unsat core size     : 0
% 0.12/0.38  #    Propositional preprocessing time  : 0.000
% 0.12/0.38  #    Propositional encoding time       : 0.000
% 0.12/0.38  #    Propositional solver time         : 0.000
% 0.12/0.38  #    Success case prop preproc time    : 0.000
% 0.12/0.38  #    Success case prop encoding time   : 0.000
% 0.12/0.38  #    Success case prop solver time     : 0.000
% 0.12/0.38  # Current number of processed clauses  : 2
% 0.12/0.38  #    Positive orientable unit clauses  : 1
% 0.12/0.38  #    Positive unorientable unit clauses: 1
% 0.12/0.38  #    Negative unit clauses             : 0
% 0.12/0.38  #    Non-unit-clauses                  : 0
% 0.12/0.38  # Current number of unprocessed clauses: 255
% 0.12/0.38  # ...number of literals in the above   : 1456
% 0.12/0.38  # Current number of archived formulas  : 0
% 0.12/0.38  # Current number of archived clauses   : 62
% 0.12/0.38  # Clause-clause subsumption calls (NU) : 130
% 0.12/0.38  # Rec. Clause-clause subsumption calls : 29
% 0.12/0.38  # Non-unit clause-clause subsumptions  : 5
% 0.12/0.38  # Unit Clause-clause subsumption calls : 10
% 0.12/0.38  # Rewrite failures with RHS unbound    : 31
% 0.12/0.38  # BW rewrite match attempts            : 88
% 0.12/0.38  # BW rewrite match successes           : 83
% 0.12/0.38  # Condensation attempts                : 0
% 0.12/0.38  # Condensation successes               : 0
% 0.12/0.38  # Termbank termtop insertions          : 7425
% 0.12/0.38  
% 0.12/0.38  # -------------------------------------------------
% 0.12/0.38  # User time                : 0.032 s
% 0.12/0.38  # System time              : 0.009 s
% 0.12/0.38  # Total time               : 0.041 s
% 0.12/0.38  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
