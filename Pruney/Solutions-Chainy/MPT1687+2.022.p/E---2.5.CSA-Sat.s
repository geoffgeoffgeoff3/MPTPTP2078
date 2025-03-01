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
% DateTime   : Thu Dec  3 11:16:32 EST 2020

% Result     : CounterSatisfiable 0.13s
% Output     : Saturation 0.13s
% Verified   : 
% Statistics : Number of formulae       :  129 ( 934 expanded)
%              Number of clauses        :  104 ( 387 expanded)
%              Number of leaves         :   12 ( 240 expanded)
%              Depth                    :    7
%              Number of atoms          :  737 (7648 expanded)
%              Number of equality atoms :  256 (1620 expanded)
%              Maximal formula depth    :   17 (   7 average)
%              Maximal clause size      :   26 (   6 average)
%              Maximal term depth       :    7 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(redefinition_k1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k1_relset_1(X1,X2,X3) = k1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',redefinition_k1_relset_1)).

fof(t31_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( ( v2_funct_1(X3)
          & k2_relset_1(X1,X2,X3) = X2 )
       => ( v1_funct_1(k2_funct_1(X3))
          & v1_funct_2(k2_funct_1(X3),X2,X1)
          & m1_subset_1(k2_funct_1(X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t31_funct_2)).

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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_funct_2)).

fof(t67_waybel_0,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & l1_orders_2(X2) )
         => ! [X3] :
              ( ( v1_funct_1(X3)
                & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))) )
             => ( v23_waybel_0(X3,X1,X2)
               => ( v1_funct_1(k2_funct_1(X3))
                  & v1_funct_2(k2_funct_1(X3),u1_struct_0(X2),u1_struct_0(X1))
                  & m1_subset_1(k2_funct_1(X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                  & k2_relat_1(k2_funct_1(X3)) = u1_struct_0(X1) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t67_waybel_0)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',cc1_relset_1)).

fof(existence_m1_subset_1,axiom,(
    ! [X1] :
    ? [X2] : m1_subset_1(X2,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',existence_m1_subset_1)).

fof(t7_ordinal1,axiom,(
    ! [X1,X2] :
      ~ ( r2_hidden(X1,X2)
        & r1_tarski(X2,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t7_ordinal1)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_subset)).

fof(t2_xboole_1,axiom,(
    ! [X1] : r1_tarski(k1_xboole_0,X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_xboole_1)).

fof(t55_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
       => ( k2_relat_1(X1) = k1_relat_1(k2_funct_1(X1))
          & k1_relat_1(X1) = k2_relat_1(k2_funct_1(X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t55_funct_1)).

fof(fc2_struct_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ~ v1_xboole_0(u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc2_struct_0)).

fof(dt_l1_orders_2,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => l1_struct_0(X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_l1_orders_2)).

fof(c_0_12,plain,(
    ! [X15,X16,X17] :
      ( ~ m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X15,X16)))
      | k1_relset_1(X15,X16,X17) = k1_relat_1(X17) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).

fof(c_0_13,plain,(
    ! [X21,X22,X23] :
      ( ( v1_funct_1(k2_funct_1(X23))
        | ~ v2_funct_1(X23)
        | k2_relset_1(X21,X22,X23) != X22
        | ~ v1_funct_1(X23)
        | ~ v1_funct_2(X23,X21,X22)
        | ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))) )
      & ( v1_funct_2(k2_funct_1(X23),X22,X21)
        | ~ v2_funct_1(X23)
        | k2_relset_1(X21,X22,X23) != X22
        | ~ v1_funct_1(X23)
        | ~ v1_funct_2(X23,X21,X22)
        | ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))) )
      & ( m1_subset_1(k2_funct_1(X23),k1_zfmisc_1(k2_zfmisc_1(X22,X21)))
        | ~ v2_funct_1(X23)
        | k2_relset_1(X21,X22,X23) != X22
        | ~ v1_funct_1(X23)
        | ~ v1_funct_2(X23,X21,X22)
        | ~ m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t31_funct_2])])])).

fof(c_0_14,plain,(
    ! [X18,X19,X20] :
      ( ( ~ v1_funct_2(X20,X18,X19)
        | X18 = k1_relset_1(X18,X19,X20)
        | X19 = k1_xboole_0
        | ~ m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19))) )
      & ( X18 != k1_relset_1(X18,X19,X20)
        | v1_funct_2(X20,X18,X19)
        | X19 = k1_xboole_0
        | ~ m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19))) )
      & ( ~ v1_funct_2(X20,X18,X19)
        | X18 = k1_relset_1(X18,X19,X20)
        | X18 != k1_xboole_0
        | ~ m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19))) )
      & ( X18 != k1_relset_1(X18,X19,X20)
        | v1_funct_2(X20,X18,X19)
        | X18 != k1_xboole_0
        | ~ m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19))) )
      & ( ~ v1_funct_2(X20,X18,X19)
        | X20 = k1_xboole_0
        | X18 = k1_xboole_0
        | X19 != k1_xboole_0
        | ~ m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19))) )
      & ( X20 != k1_xboole_0
        | v1_funct_2(X20,X18,X19)
        | X18 = k1_xboole_0
        | X19 != k1_xboole_0
        | ~ m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).

cnf(c_0_15,plain,
    ( k1_relset_1(X2,X3,X1) = k1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_12]),
    [final]).

cnf(c_0_16,plain,
    ( m1_subset_1(k2_funct_1(X1),k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v2_funct_1(X1)
    | k2_relset_1(X3,X2,X1) != X2
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X3,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_13]),
    [final]).

cnf(c_0_17,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | ~ v1_funct_2(X1,X2,X3)
    | X2 != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_14]),
    [final]).

cnf(c_0_18,plain,
    ( X2 = k1_relset_1(X2,X3,X1)
    | X3 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_14]),
    [final]).

fof(c_0_19,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & l1_orders_2(X1) )
       => ! [X2] :
            ( ( ~ v2_struct_0(X2)
              & l1_orders_2(X2) )
           => ! [X3] :
                ( ( v1_funct_1(X3)
                  & v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))) )
               => ( v23_waybel_0(X3,X1,X2)
                 => ( v1_funct_1(k2_funct_1(X3))
                    & v1_funct_2(k2_funct_1(X3),u1_struct_0(X2),u1_struct_0(X1))
                    & m1_subset_1(k2_funct_1(X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
                    & k2_relat_1(k2_funct_1(X3)) = u1_struct_0(X1) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t67_waybel_0])).

cnf(c_0_20,plain,
    ( k1_relset_1(X1,X2,k2_funct_1(X3)) = k1_relat_1(k2_funct_1(X3))
    | k2_relset_1(X2,X1,X3) != X1
    | ~ v1_funct_2(X3,X2,X1)
    | ~ v2_funct_1(X3)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(pm,[status(thm)],[c_0_15,c_0_16]),
    [final]).

cnf(c_0_21,plain,
    ( k1_relset_1(X1,X2,k2_funct_1(X3)) = X1
    | k2_relset_1(X2,X1,X3) != X1
    | X1 != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(X3),X1,X2)
    | ~ v1_funct_2(X3,X2,X1)
    | ~ v2_funct_1(X3)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(pm,[status(thm)],[c_0_17,c_0_16]),
    [final]).

cnf(c_0_22,plain,
    ( X1 = k1_xboole_0
    | X2 = k1_xboole_0
    | ~ v1_funct_2(X1,X2,X3)
    | X3 != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_14]),
    [final]).

cnf(c_0_23,plain,
    ( k1_relset_1(X1,X2,k2_funct_1(X3)) = X1
    | X2 = k1_xboole_0
    | k2_relset_1(X2,X1,X3) != X1
    | ~ v1_funct_2(k2_funct_1(X3),X1,X2)
    | ~ v1_funct_2(X3,X2,X1)
    | ~ v2_funct_1(X3)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) ),
    inference(pm,[status(thm)],[c_0_18,c_0_16]),
    [final]).

fof(c_0_24,plain,(
    ! [X12,X13,X14] :
      ( ~ m1_subset_1(X14,k1_zfmisc_1(k2_zfmisc_1(X12,X13)))
      | v1_relat_1(X14) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

fof(c_0_25,plain,(
    ! [X5] : m1_subset_1(esk1_1(X5),X5) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[existence_m1_subset_1])])).

fof(c_0_26,negated_conjecture,
    ( ~ v2_struct_0(esk2_0)
    & l1_orders_2(esk2_0)
    & ~ v2_struct_0(esk3_0)
    & l1_orders_2(esk3_0)
    & v1_funct_1(esk4_0)
    & v1_funct_2(esk4_0,u1_struct_0(esk2_0),u1_struct_0(esk3_0))
    & m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0))))
    & v23_waybel_0(esk4_0,esk2_0,esk3_0)
    & ( ~ v1_funct_1(k2_funct_1(esk4_0))
      | ~ v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))
      | ~ m1_subset_1(k2_funct_1(esk4_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0))))
      | k2_relat_1(k2_funct_1(esk4_0)) != u1_struct_0(esk2_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_19])])])])).

fof(c_0_27,plain,(
    ! [X10,X11] :
      ( ~ r2_hidden(X10,X11)
      | ~ r1_tarski(X11,X10) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).

fof(c_0_28,plain,(
    ! [X7,X8] :
      ( ~ m1_subset_1(X7,X8)
      | v1_xboole_0(X8)
      | r2_hidden(X7,X8) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

cnf(c_0_29,plain,
    ( k1_relset_1(X1,X2,k2_funct_1(k2_funct_1(X3))) = k1_relat_1(k2_funct_1(k2_funct_1(X3)))
    | k2_relset_1(X2,X1,k2_funct_1(X3)) != X1
    | k2_relset_1(X1,X2,X3) != X2
    | ~ v1_funct_2(k2_funct_1(X3),X2,X1)
    | ~ v1_funct_2(X3,X1,X2)
    | ~ v2_funct_1(k2_funct_1(X3))
    | ~ v2_funct_1(X3)
    | ~ v1_funct_1(k2_funct_1(X3))
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(pm,[status(thm)],[c_0_20,c_0_16]),
    [final]).

cnf(c_0_30,plain,
    ( k1_relset_1(X1,X2,k2_funct_1(k2_funct_1(X3))) = X1
    | k2_relset_1(X2,X1,k2_funct_1(X3)) != X1
    | k2_relset_1(X1,X2,X3) != X2
    | X1 != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(k2_funct_1(X3)),X1,X2)
    | ~ v1_funct_2(k2_funct_1(X3),X2,X1)
    | ~ v1_funct_2(X3,X1,X2)
    | ~ v2_funct_1(k2_funct_1(X3))
    | ~ v2_funct_1(X3)
    | ~ v1_funct_1(k2_funct_1(X3))
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(pm,[status(thm)],[c_0_21,c_0_16]),
    [final]).

cnf(c_0_31,plain,
    ( v1_funct_2(k2_funct_1(X1),X2,X3)
    | ~ v2_funct_1(X1)
    | k2_relset_1(X3,X2,X1) != X2
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X3,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_13]),
    [final]).

cnf(c_0_32,plain,
    ( k2_funct_1(X1) = k1_xboole_0
    | X2 = k1_xboole_0
    | k2_relset_1(X3,X2,X1) != X2
    | X3 != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(X1),X2,X3)
    | ~ v1_funct_2(X1,X3,X2)
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(pm,[status(thm)],[c_0_22,c_0_16]),
    [final]).

cnf(c_0_33,plain,
    ( k1_relset_1(X1,X2,k2_funct_1(k2_funct_1(X3))) = X1
    | X2 = k1_xboole_0
    | k2_relset_1(X2,X1,k2_funct_1(X3)) != X1
    | k2_relset_1(X1,X2,X3) != X2
    | ~ v1_funct_2(k2_funct_1(k2_funct_1(X3)),X1,X2)
    | ~ v1_funct_2(k2_funct_1(X3),X2,X1)
    | ~ v1_funct_2(X3,X1,X2)
    | ~ v2_funct_1(k2_funct_1(X3))
    | ~ v2_funct_1(X3)
    | ~ v1_funct_1(k2_funct_1(X3))
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(pm,[status(thm)],[c_0_23,c_0_16]),
    [final]).

cnf(c_0_34,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_24]),
    [final]).

cnf(c_0_35,plain,
    ( m1_subset_1(esk1_1(X1),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_25]),
    [final]).

cnf(c_0_36,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_26]),
    [final]).

cnf(c_0_37,negated_conjecture,
    ( v1_funct_2(esk4_0,u1_struct_0(esk2_0),u1_struct_0(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_26]),
    [final]).

cnf(c_0_38,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_26]),
    [final]).

cnf(c_0_39,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_27]),
    [final]).

cnf(c_0_40,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_28]),
    [final]).

cnf(c_0_41,plain,
    ( X1 = k1_relat_1(k2_funct_1(k2_funct_1(X2)))
    | k2_relset_1(X3,X1,k2_funct_1(X2)) != X1
    | k2_relset_1(X1,X3,X2) != X3
    | X1 != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(k2_funct_1(X2)),X1,X3)
    | ~ v1_funct_2(k2_funct_1(X2),X3,X1)
    | ~ v1_funct_2(X2,X1,X3)
    | ~ v2_funct_1(k2_funct_1(X2))
    | ~ v2_funct_1(X2)
    | ~ v1_funct_1(k2_funct_1(X2))
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) ),
    inference(pm,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_42,plain,
    ( v1_funct_2(k2_funct_1(k2_funct_1(X1)),X2,X3)
    | k2_relset_1(X3,X2,k2_funct_1(X1)) != X2
    | k2_relset_1(X2,X3,X1) != X3
    | ~ v1_funct_2(k2_funct_1(X1),X3,X2)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ v2_funct_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(k2_funct_1(X1))
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(pm,[status(thm)],[c_0_31,c_0_16]),
    [final]).

cnf(c_0_43,plain,
    ( k2_funct_1(k2_funct_1(X1)) = k1_xboole_0
    | X2 = k1_xboole_0
    | k2_relset_1(X3,X2,k2_funct_1(X1)) != X2
    | k2_relset_1(X2,X3,X1) != X3
    | X3 != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(k2_funct_1(X1)),X2,X3)
    | ~ v1_funct_2(k2_funct_1(X1),X3,X2)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ v2_funct_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(k2_funct_1(X1))
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(pm,[status(thm)],[c_0_32,c_0_16])).

cnf(c_0_44,plain,
    ( X1 = k1_relat_1(k2_funct_1(k2_funct_1(X2)))
    | X3 = k1_xboole_0
    | k2_relset_1(X3,X1,k2_funct_1(X2)) != X1
    | k2_relset_1(X1,X3,X2) != X3
    | ~ v1_funct_2(k2_funct_1(k2_funct_1(X2)),X1,X3)
    | ~ v1_funct_2(k2_funct_1(X2),X3,X1)
    | ~ v1_funct_2(X2,X1,X3)
    | ~ v2_funct_1(k2_funct_1(X2))
    | ~ v2_funct_1(X2)
    | ~ v1_funct_1(k2_funct_1(X2))
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) ),
    inference(pm,[status(thm)],[c_0_29,c_0_33])).

cnf(c_0_45,plain,
    ( v1_relat_1(k2_funct_1(X1))
    | k2_relset_1(X2,X3,X1) != X3
    | ~ v1_funct_2(X1,X2,X3)
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(pm,[status(thm)],[c_0_34,c_0_16]),
    [final]).

cnf(c_0_46,plain,
    ( v1_funct_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | k2_relset_1(X2,X3,X1) != X3
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_13]),
    [final]).

cnf(c_0_47,plain,
    ( k1_relset_1(X1,X2,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))) = k1_relat_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))))
    | k2_relset_1(X2,X1,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))) != X1
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))),X2,X1)
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))) ),
    inference(pm,[status(thm)],[c_0_20,c_0_35]),
    [final]).

cnf(c_0_48,plain,
    ( k1_relset_1(X1,X2,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))) = X1
    | k2_relset_1(X2,X1,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))) != X1
    | X1 != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))),X1,X2)
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))),X2,X1)
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))) ),
    inference(pm,[status(thm)],[c_0_21,c_0_35]),
    [final]).

cnf(c_0_49,plain,
    ( k1_relset_1(X1,X2,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))) = X1
    | X2 = k1_xboole_0
    | k2_relset_1(X2,X1,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))) != X1
    | ~ v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))),X1,X2)
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))),X2,X1)
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))) ),
    inference(pm,[status(thm)],[c_0_23,c_0_35]),
    [final]).

cnf(c_0_50,negated_conjecture,
    ( k1_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0)) = k1_relat_1(k2_funct_1(esk4_0))
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | ~ v2_funct_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_20,c_0_36]),c_0_37]),c_0_38])]),
    [final]).

cnf(c_0_51,negated_conjecture,
    ( k1_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0)) = u1_struct_0(esk3_0)
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | u1_struct_0(esk3_0) != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))
    | ~ v2_funct_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_21,c_0_36]),c_0_37]),c_0_38])]),
    [final]).

cnf(c_0_52,negated_conjecture,
    ( k1_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0)) = u1_struct_0(esk3_0)
    | u1_struct_0(esk2_0) = k1_xboole_0
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | ~ v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))
    | ~ v2_funct_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_23,c_0_36]),c_0_37]),c_0_38])]),
    [final]).

cnf(c_0_53,negated_conjecture,
    ( ~ v1_funct_1(k2_funct_1(esk4_0))
    | ~ v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))
    | ~ m1_subset_1(k2_funct_1(esk4_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0))))
    | k2_relat_1(k2_funct_1(esk4_0)) != u1_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_26]),
    [final]).

cnf(c_0_54,plain,
    ( v1_xboole_0(X1)
    | ~ m1_subset_1(X2,X1)
    | ~ r1_tarski(X1,X2) ),
    inference(pm,[status(thm)],[c_0_39,c_0_40]),
    [final]).

fof(c_0_55,plain,(
    ! [X4] : r1_tarski(k1_xboole_0,X4) ),
    inference(variable_rename,[status(thm)],[t2_xboole_1])).

cnf(c_0_56,plain,
    ( X1 = k1_relat_1(k2_funct_1(k2_funct_1(X2)))
    | k2_relset_1(X3,X1,k2_funct_1(X2)) != X1
    | k2_relset_1(X1,X3,X2) != X3
    | X1 != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(X2),X3,X1)
    | ~ v1_funct_2(X2,X1,X3)
    | ~ v2_funct_1(k2_funct_1(X2))
    | ~ v2_funct_1(X2)
    | ~ v1_funct_1(k2_funct_1(X2))
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) ),
    inference(pm,[status(thm)],[c_0_41,c_0_42]),
    [final]).

cnf(c_0_57,plain,
    ( k2_funct_1(k2_funct_1(X1)) = k1_xboole_0
    | X2 = k1_xboole_0
    | k2_relset_1(X3,X2,k2_funct_1(X1)) != X2
    | k2_relset_1(X2,X3,X1) != X3
    | X3 != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(X1),X3,X2)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ v2_funct_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(k2_funct_1(X1))
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(pm,[status(thm)],[c_0_43,c_0_42]),
    [final]).

cnf(c_0_58,plain,
    ( X1 = k1_relat_1(k2_funct_1(k2_funct_1(X2)))
    | X3 = k1_xboole_0
    | k2_relset_1(X3,X1,k2_funct_1(X2)) != X1
    | k2_relset_1(X1,X3,X2) != X3
    | ~ v1_funct_2(k2_funct_1(X2),X3,X1)
    | ~ v1_funct_2(X2,X1,X3)
    | ~ v2_funct_1(k2_funct_1(X2))
    | ~ v2_funct_1(X2)
    | ~ v1_funct_1(k2_funct_1(X2))
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3))) ),
    inference(pm,[status(thm)],[c_0_44,c_0_42]),
    [final]).

cnf(c_0_59,plain,
    ( v1_relat_1(k2_funct_1(k2_funct_1(X1)))
    | k2_relset_1(X2,X3,k2_funct_1(X1)) != X3
    | k2_relset_1(X3,X2,X1) != X2
    | ~ v1_funct_2(k2_funct_1(X1),X2,X3)
    | ~ v1_funct_2(X1,X3,X2)
    | ~ v2_funct_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(k2_funct_1(X1))
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(pm,[status(thm)],[c_0_45,c_0_16]),
    [final]).

cnf(c_0_60,plain,
    ( v1_funct_1(k2_funct_1(k2_funct_1(X1)))
    | k2_relset_1(X2,X3,k2_funct_1(X1)) != X3
    | k2_relset_1(X3,X2,X1) != X2
    | ~ v1_funct_2(k2_funct_1(X1),X2,X3)
    | ~ v1_funct_2(X1,X3,X2)
    | ~ v2_funct_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(k2_funct_1(X1))
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(pm,[status(thm)],[c_0_46,c_0_16]),
    [final]).

cnf(c_0_61,plain,
    ( k1_relat_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))) = X2
    | k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) != X2
    | X2 != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_47,c_0_48])).

cnf(c_0_62,plain,
    ( v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)
    | k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) != X2
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_31,c_0_35]),
    [final]).

cnf(c_0_63,plain,
    ( k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) = k1_xboole_0
    | X2 = k1_xboole_0
    | k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) != X2
    | X1 != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_32,c_0_35])).

cnf(c_0_64,plain,
    ( k1_relat_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))) = X2
    | X1 = k1_xboole_0
    | k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) != X2
    | ~ v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_47,c_0_49])).

cnf(c_0_65,negated_conjecture,
    ( k1_relat_1(k2_funct_1(esk4_0)) = u1_struct_0(esk3_0)
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | u1_struct_0(esk3_0) != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))
    | ~ v2_funct_1(esk4_0) ),
    inference(pm,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_66,negated_conjecture,
    ( v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | ~ v2_funct_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_31,c_0_36]),c_0_37]),c_0_38])]),
    [final]).

cnf(c_0_67,negated_conjecture,
    ( k1_relat_1(k2_funct_1(esk4_0)) = u1_struct_0(esk3_0)
    | u1_struct_0(esk2_0) = k1_xboole_0
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | ~ v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))
    | ~ v2_funct_1(esk4_0) ),
    inference(pm,[status(thm)],[c_0_50,c_0_52])).

cnf(c_0_68,negated_conjecture,
    ( k2_funct_1(esk4_0) = k1_xboole_0
    | u1_struct_0(esk3_0) = k1_xboole_0
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | u1_struct_0(esk2_0) != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))
    | ~ v2_funct_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_32,c_0_36]),c_0_37]),c_0_38])])).

cnf(c_0_69,negated_conjecture,
    ( k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | k2_relat_1(k2_funct_1(esk4_0)) != u1_struct_0(esk2_0)
    | ~ v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))
    | ~ v2_funct_1(esk4_0)
    | ~ v1_funct_1(k2_funct_1(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_53,c_0_16]),c_0_37]),c_0_38]),c_0_36])])).

cnf(c_0_70,plain,
    ( v1_funct_2(X3,X1,X2)
    | X1 != k1_relset_1(X1,X2,X3)
    | X1 != k1_xboole_0
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_14]),
    [final]).

cnf(c_0_71,plain,
    ( k1_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) = k1_relat_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_15,c_0_35]),
    [final]).

cnf(c_0_72,negated_conjecture,
    ( k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) = k1_relat_1(esk4_0) ),
    inference(pm,[status(thm)],[c_0_15,c_0_36]),
    [final]).

cnf(c_0_73,plain,
    ( v1_funct_2(X3,X1,X2)
    | X2 = k1_xboole_0
    | X1 != k1_relset_1(X1,X2,X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_14]),
    [final]).

cnf(c_0_74,plain,
    ( v1_funct_2(X1,X2,X3)
    | X2 = k1_xboole_0
    | X1 != k1_xboole_0
    | X3 != k1_xboole_0
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_14]),
    [final]).

fof(c_0_75,plain,(
    ! [X9] :
      ( ( k2_relat_1(X9) = k1_relat_1(k2_funct_1(X9))
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) )
      & ( k1_relat_1(X9) = k2_relat_1(k2_funct_1(X9))
        | ~ v2_funct_1(X9)
        | ~ v1_relat_1(X9)
        | ~ v1_funct_1(X9) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_funct_1])])])).

fof(c_0_76,plain,(
    ! [X24] :
      ( v2_struct_0(X24)
      | ~ l1_struct_0(X24)
      | ~ v1_xboole_0(u1_struct_0(X24)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).

fof(c_0_77,plain,(
    ! [X25] :
      ( ~ l1_orders_2(X25)
      | l1_struct_0(X25) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_orders_2])])).

cnf(c_0_78,plain,
    ( v1_xboole_0(X1)
    | ~ r1_tarski(X1,esk1_1(X1)) ),
    inference(pm,[status(thm)],[c_0_54,c_0_35]),
    [final]).

cnf(c_0_79,plain,
    ( r1_tarski(k1_xboole_0,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_55]),
    [final]).

cnf(c_0_80,plain,
    ( k1_relat_1(k2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))) = X1
    | k2_relset_1(X2,X1,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))) != X1
    | k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) != X2
    | X1 != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | ~ v2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))
    | ~ v1_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_56,c_0_35]),
    [final]).

cnf(c_0_81,plain,
    ( k2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))) = k1_xboole_0
    | X1 = k1_xboole_0
    | k2_relset_1(X2,X1,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))) != X1
    | k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) != X2
    | X2 != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | ~ v2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))
    | ~ v1_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_57,c_0_35]),
    [final]).

cnf(c_0_82,plain,
    ( k1_relat_1(k2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))) = X1
    | X2 = k1_xboole_0
    | k2_relset_1(X2,X1,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))) != X1
    | k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) != X2
    | ~ v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | ~ v2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))
    | ~ v1_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_58,c_0_35]),
    [final]).

cnf(c_0_83,plain,
    ( v1_relat_1(k2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))))
    | k2_relset_1(X2,X1,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))) != X1
    | k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) != X2
    | ~ v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | ~ v2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))
    | ~ v1_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_59,c_0_35]),
    [final]).

cnf(c_0_84,plain,
    ( v1_funct_1(k2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))))
    | k2_relset_1(X2,X1,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))) != X1
    | k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) != X2
    | ~ v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | ~ v2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))
    | ~ v1_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_60,c_0_35]),
    [final]).

cnf(c_0_85,plain,
    ( k2_funct_1(k2_funct_1(k2_funct_1(X1))) = k1_xboole_0
    | X2 = k1_xboole_0
    | k2_relset_1(X3,X2,k2_funct_1(k2_funct_1(X1))) != X2
    | k2_relset_1(X2,X3,k2_funct_1(X1)) != X3
    | k2_relset_1(X3,X2,X1) != X2
    | X3 != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(k2_funct_1(X1)),X3,X2)
    | ~ v1_funct_2(k2_funct_1(X1),X2,X3)
    | ~ v1_funct_2(X1,X3,X2)
    | ~ v2_funct_1(k2_funct_1(k2_funct_1(X1)))
    | ~ v2_funct_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(k2_funct_1(k2_funct_1(X1)))
    | ~ v1_funct_1(k2_funct_1(X1))
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(pm,[status(thm)],[c_0_57,c_0_16]),
    [final]).

cnf(c_0_86,plain,
    ( X1 = k1_relat_1(k2_funct_1(k2_funct_1(k2_funct_1(X2))))
    | k2_relset_1(X3,X1,k2_funct_1(k2_funct_1(X2))) != X1
    | k2_relset_1(X1,X3,k2_funct_1(X2)) != X3
    | k2_relset_1(X3,X1,X2) != X1
    | X1 != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(k2_funct_1(X2)),X3,X1)
    | ~ v1_funct_2(k2_funct_1(X2),X1,X3)
    | ~ v1_funct_2(X2,X3,X1)
    | ~ v2_funct_1(k2_funct_1(k2_funct_1(X2)))
    | ~ v2_funct_1(k2_funct_1(X2))
    | ~ v2_funct_1(X2)
    | ~ v1_funct_1(k2_funct_1(k2_funct_1(X2)))
    | ~ v1_funct_1(k2_funct_1(X2))
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) ),
    inference(pm,[status(thm)],[c_0_56,c_0_16]),
    [final]).

cnf(c_0_87,plain,
    ( X1 = k1_relat_1(k2_funct_1(k2_funct_1(k2_funct_1(X2))))
    | X3 = k1_xboole_0
    | k2_relset_1(X3,X1,k2_funct_1(k2_funct_1(X2))) != X1
    | k2_relset_1(X1,X3,k2_funct_1(X2)) != X3
    | k2_relset_1(X3,X1,X2) != X1
    | ~ v1_funct_2(k2_funct_1(k2_funct_1(X2)),X3,X1)
    | ~ v1_funct_2(k2_funct_1(X2),X1,X3)
    | ~ v1_funct_2(X2,X3,X1)
    | ~ v2_funct_1(k2_funct_1(k2_funct_1(X2)))
    | ~ v2_funct_1(k2_funct_1(X2))
    | ~ v2_funct_1(X2)
    | ~ v1_funct_1(k2_funct_1(k2_funct_1(X2)))
    | ~ v1_funct_1(k2_funct_1(X2))
    | ~ v1_funct_1(X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1))) ),
    inference(pm,[status(thm)],[c_0_58,c_0_16]),
    [final]).

cnf(c_0_88,plain,
    ( v1_relat_1(k2_funct_1(k2_funct_1(k2_funct_1(X1))))
    | k2_relset_1(X2,X3,k2_funct_1(k2_funct_1(X1))) != X3
    | k2_relset_1(X3,X2,k2_funct_1(X1)) != X2
    | k2_relset_1(X2,X3,X1) != X3
    | ~ v1_funct_2(k2_funct_1(k2_funct_1(X1)),X2,X3)
    | ~ v1_funct_2(k2_funct_1(X1),X3,X2)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ v2_funct_1(k2_funct_1(k2_funct_1(X1)))
    | ~ v2_funct_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(k2_funct_1(k2_funct_1(X1)))
    | ~ v1_funct_1(k2_funct_1(X1))
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(pm,[status(thm)],[c_0_59,c_0_16]),
    [final]).

cnf(c_0_89,plain,
    ( v1_funct_1(k2_funct_1(k2_funct_1(k2_funct_1(X1))))
    | k2_relset_1(X2,X3,k2_funct_1(k2_funct_1(X1))) != X3
    | k2_relset_1(X3,X2,k2_funct_1(X1)) != X2
    | k2_relset_1(X2,X3,X1) != X3
    | ~ v1_funct_2(k2_funct_1(k2_funct_1(X1)),X2,X3)
    | ~ v1_funct_2(k2_funct_1(X1),X3,X2)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ v2_funct_1(k2_funct_1(k2_funct_1(X1)))
    | ~ v2_funct_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_funct_1(k2_funct_1(k2_funct_1(X1)))
    | ~ v1_funct_1(k2_funct_1(X1))
    | ~ v1_funct_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(pm,[status(thm)],[c_0_60,c_0_16]),
    [final]).

cnf(c_0_90,negated_conjecture,
    ( k1_relat_1(k2_funct_1(k2_funct_1(esk4_0))) = u1_struct_0(esk2_0)
    | k2_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0)) != u1_struct_0(esk2_0)
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | u1_struct_0(esk2_0) != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))
    | ~ v2_funct_1(k2_funct_1(esk4_0))
    | ~ v2_funct_1(esk4_0)
    | ~ v1_funct_1(k2_funct_1(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_56,c_0_36]),c_0_37]),c_0_38])]),
    [final]).

cnf(c_0_91,negated_conjecture,
    ( k1_relat_1(k2_funct_1(k2_funct_1(esk4_0))) = u1_struct_0(esk2_0)
    | u1_struct_0(esk3_0) = k1_xboole_0
    | k2_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0)) != u1_struct_0(esk2_0)
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | ~ v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))
    | ~ v2_funct_1(k2_funct_1(esk4_0))
    | ~ v2_funct_1(esk4_0)
    | ~ v1_funct_1(k2_funct_1(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_58,c_0_36]),c_0_37]),c_0_38])]),
    [final]).

cnf(c_0_92,plain,
    ( k1_relat_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))) = X2
    | k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) != X2
    | X2 != k1_xboole_0
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_61,c_0_62]),
    [final]).

cnf(c_0_93,negated_conjecture,
    ( k2_funct_1(k2_funct_1(esk4_0)) = k1_xboole_0
    | u1_struct_0(esk2_0) = k1_xboole_0
    | k2_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0)) != u1_struct_0(esk2_0)
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | u1_struct_0(esk3_0) != k1_xboole_0
    | ~ v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))
    | ~ v2_funct_1(k2_funct_1(esk4_0))
    | ~ v2_funct_1(esk4_0)
    | ~ v1_funct_1(k2_funct_1(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_57,c_0_36]),c_0_37]),c_0_38])]),
    [final]).

cnf(c_0_94,plain,
    ( k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) = k1_xboole_0
    | X2 = k1_xboole_0
    | k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) != X2
    | X1 != k1_xboole_0
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_63,c_0_62]),
    [final]).

cnf(c_0_95,plain,
    ( k1_relat_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))) = X2
    | X1 = k1_xboole_0
    | k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) != X2
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_64,c_0_62]),
    [final]).

cnf(c_0_96,plain,
    ( v1_relat_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))
    | k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) != X2
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_45,c_0_35]),
    [final]).

cnf(c_0_97,negated_conjecture,
    ( v1_relat_1(k2_funct_1(k2_funct_1(esk4_0)))
    | k2_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0)) != u1_struct_0(esk2_0)
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | ~ v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))
    | ~ v2_funct_1(k2_funct_1(esk4_0))
    | ~ v2_funct_1(esk4_0)
    | ~ v1_funct_1(k2_funct_1(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_59,c_0_36]),c_0_37]),c_0_38])]),
    [final]).

cnf(c_0_98,negated_conjecture,
    ( v1_funct_1(k2_funct_1(k2_funct_1(esk4_0)))
    | k2_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0)) != u1_struct_0(esk2_0)
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | ~ v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))
    | ~ v2_funct_1(k2_funct_1(esk4_0))
    | ~ v2_funct_1(esk4_0)
    | ~ v1_funct_1(k2_funct_1(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_60,c_0_36]),c_0_37]),c_0_38])]),
    [final]).

cnf(c_0_99,negated_conjecture,
    ( k1_relat_1(k2_funct_1(esk4_0)) = u1_struct_0(esk3_0)
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | u1_struct_0(esk3_0) != k1_xboole_0
    | ~ v2_funct_1(esk4_0) ),
    inference(pm,[status(thm)],[c_0_65,c_0_66]),
    [final]).

cnf(c_0_100,negated_conjecture,
    ( k1_relat_1(k2_funct_1(esk4_0)) = u1_struct_0(esk3_0)
    | u1_struct_0(esk2_0) = k1_xboole_0
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | ~ v2_funct_1(esk4_0) ),
    inference(pm,[status(thm)],[c_0_67,c_0_66]),
    [final]).

cnf(c_0_101,negated_conjecture,
    ( k2_funct_1(esk4_0) = k1_xboole_0
    | u1_struct_0(esk3_0) = k1_xboole_0
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | u1_struct_0(esk2_0) != k1_xboole_0
    | ~ v2_funct_1(esk4_0) ),
    inference(pm,[status(thm)],[c_0_68,c_0_66]),
    [final]).

cnf(c_0_102,plain,
    ( v1_xboole_0(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | k2_relset_1(X2,X1,X3) != X1
    | ~ v1_funct_2(X3,X2,X1)
    | ~ v2_funct_1(X3)
    | ~ v1_funct_1(X3)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))
    | ~ r1_tarski(k1_zfmisc_1(k2_zfmisc_1(X1,X2)),k2_funct_1(X3)) ),
    inference(pm,[status(thm)],[c_0_54,c_0_16]),
    [final]).

cnf(c_0_103,negated_conjecture,
    ( v1_relat_1(k2_funct_1(esk4_0))
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | ~ v2_funct_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_45,c_0_36]),c_0_37]),c_0_38])]),
    [final]).

cnf(c_0_104,negated_conjecture,
    ( k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | k2_relat_1(k2_funct_1(esk4_0)) != u1_struct_0(esk2_0)
    | ~ v2_funct_1(esk4_0)
    | ~ v1_funct_1(k2_funct_1(esk4_0)) ),
    inference(pm,[status(thm)],[c_0_69,c_0_66]),
    [final]).

cnf(c_0_105,plain,
    ( v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | k1_relat_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) != X1
    | X1 != k1_xboole_0 ),
    inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_70,c_0_35]),c_0_71]),
    [final]).

cnf(c_0_106,plain,
    ( k1_relat_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) = X1
    | X1 != k1_xboole_0
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2) ),
    inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_17,c_0_35]),c_0_71]),
    [final]).

cnf(c_0_107,plain,
    ( v1_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))
    | k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) != X2
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | ~ v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))
    | ~ v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_46,c_0_35]),
    [final]).

cnf(c_0_108,negated_conjecture,
    ( k1_relat_1(esk4_0) = u1_struct_0(esk2_0)
    | u1_struct_0(esk2_0) != k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_17,c_0_36]),c_0_72]),c_0_37])]),
    [final]).

cnf(c_0_109,plain,
    ( esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))) = k1_xboole_0
    | X1 = k1_xboole_0
    | X2 != k1_xboole_0
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2) ),
    inference(pm,[status(thm)],[c_0_22,c_0_35]),
    [final]).

cnf(c_0_110,plain,
    ( X1 = k1_xboole_0
    | v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))),X2,X1)
    | k1_relat_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))) != X2 ),
    inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_73,c_0_35]),c_0_71]),
    [final]).

cnf(c_0_111,plain,
    ( X1 = k1_xboole_0
    | v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)
    | esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))) != k1_xboole_0
    | X2 != k1_xboole_0 ),
    inference(pm,[status(thm)],[c_0_74,c_0_35]),
    [final]).

cnf(c_0_112,plain,
    ( k1_relat_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) = X1
    | X2 = k1_xboole_0
    | ~ v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2) ),
    inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_18,c_0_35]),c_0_71]),
    [final]).

cnf(c_0_113,negated_conjecture,
    ( u1_struct_0(esk2_0) = k1_xboole_0
    | esk4_0 = k1_xboole_0
    | u1_struct_0(esk3_0) != k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_22,c_0_36]),c_0_37])]),
    [final]).

cnf(c_0_114,negated_conjecture,
    ( k1_relat_1(esk4_0) = u1_struct_0(esk2_0)
    | u1_struct_0(esk3_0) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_18,c_0_36]),c_0_72]),c_0_37])]),
    [final]).

cnf(c_0_115,negated_conjecture,
    ( v1_funct_1(k2_funct_1(esk4_0))
    | k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0) != u1_struct_0(esk3_0)
    | ~ v2_funct_1(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_46,c_0_36]),c_0_37]),c_0_38])]),
    [final]).

cnf(c_0_116,negated_conjecture,
    ( v1_xboole_0(k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0))))
    | ~ r1_tarski(k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0))),esk4_0) ),
    inference(pm,[status(thm)],[c_0_54,c_0_36]),
    [final]).

cnf(c_0_117,plain,
    ( k2_relat_1(X1) = k1_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_75]),
    [final]).

cnf(c_0_118,plain,
    ( k1_relat_1(X1) = k2_relat_1(k2_funct_1(X1))
    | ~ v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_75]),
    [final]).

cnf(c_0_119,plain,
    ( v2_struct_0(X1)
    | ~ l1_struct_0(X1)
    | ~ v1_xboole_0(u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_76]),
    [final]).

cnf(c_0_120,plain,
    ( l1_struct_0(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_77]),
    [final]).

cnf(c_0_121,negated_conjecture,
    ( ~ v2_struct_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_26]),
    [final]).

cnf(c_0_122,negated_conjecture,
    ( ~ v2_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_26]),
    [final]).

cnf(c_0_123,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(pm,[status(thm)],[c_0_78,c_0_79]),
    [final]).

cnf(c_0_124,plain,
    ( v1_relat_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))) ),
    inference(pm,[status(thm)],[c_0_34,c_0_35]),
    [final]).

cnf(c_0_125,negated_conjecture,
    ( v1_relat_1(esk4_0) ),
    inference(pm,[status(thm)],[c_0_34,c_0_36]),
    [final]).

cnf(c_0_126,negated_conjecture,
    ( v23_waybel_0(esk4_0,esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_26]),
    [final]).

cnf(c_0_127,negated_conjecture,
    ( l1_orders_2(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_26]),
    [final]).

cnf(c_0_128,negated_conjecture,
    ( l1_orders_2(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_26]),
    [final]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n001.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 21:09:45 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___300_C01_S00
% 0.13/0.38  # and selection function NoSelection.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.028 s
% 0.13/0.38  
% 0.13/0.38  # No proof found!
% 0.13/0.38  # SZS status CounterSatisfiable
% 0.13/0.38  # SZS output start Saturation
% 0.13/0.38  fof(redefinition_k1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k1_relset_1(X1,X2,X3)=k1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', redefinition_k1_relset_1)).
% 0.13/0.38  fof(t31_funct_2, axiom, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>((v2_funct_1(X3)&k2_relset_1(X1,X2,X3)=X2)=>((v1_funct_1(k2_funct_1(X3))&v1_funct_2(k2_funct_1(X3),X2,X1))&m1_subset_1(k2_funct_1(X3),k1_zfmisc_1(k2_zfmisc_1(X2,X1)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t31_funct_2)).
% 0.13/0.38  fof(d1_funct_2, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(((X2=k1_xboole_0=>X1=k1_xboole_0)=>(v1_funct_2(X3,X1,X2)<=>X1=k1_relset_1(X1,X2,X3)))&(X2=k1_xboole_0=>(X1=k1_xboole_0|(v1_funct_2(X3,X1,X2)<=>X3=k1_xboole_0))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_funct_2)).
% 0.13/0.38  fof(t67_waybel_0, conjecture, ![X1]:((~(v2_struct_0(X1))&l1_orders_2(X1))=>![X2]:((~(v2_struct_0(X2))&l1_orders_2(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))))=>(v23_waybel_0(X3,X1,X2)=>(((v1_funct_1(k2_funct_1(X3))&v1_funct_2(k2_funct_1(X3),u1_struct_0(X2),u1_struct_0(X1)))&m1_subset_1(k2_funct_1(X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))))&k2_relat_1(k2_funct_1(X3))=u1_struct_0(X1)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t67_waybel_0)).
% 0.13/0.38  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.13/0.38  fof(existence_m1_subset_1, axiom, ![X1]:?[X2]:m1_subset_1(X2,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', existence_m1_subset_1)).
% 0.13/0.38  fof(t7_ordinal1, axiom, ![X1, X2]:~((r2_hidden(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t7_ordinal1)).
% 0.13/0.38  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_subset)).
% 0.13/0.38  fof(t2_xboole_1, axiom, ![X1]:r1_tarski(k1_xboole_0,X1), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_xboole_1)).
% 0.13/0.38  fof(t55_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)=>(k2_relat_1(X1)=k1_relat_1(k2_funct_1(X1))&k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t55_funct_1)).
% 0.13/0.38  fof(fc2_struct_0, axiom, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>~(v1_xboole_0(u1_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc2_struct_0)).
% 0.13/0.38  fof(dt_l1_orders_2, axiom, ![X1]:(l1_orders_2(X1)=>l1_struct_0(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_l1_orders_2)).
% 0.13/0.38  fof(c_0_12, plain, ![X15, X16, X17]:(~m1_subset_1(X17,k1_zfmisc_1(k2_zfmisc_1(X15,X16)))|k1_relset_1(X15,X16,X17)=k1_relat_1(X17)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k1_relset_1])])).
% 0.13/0.38  fof(c_0_13, plain, ![X21, X22, X23]:(((v1_funct_1(k2_funct_1(X23))|(~v2_funct_1(X23)|k2_relset_1(X21,X22,X23)!=X22)|(~v1_funct_1(X23)|~v1_funct_2(X23,X21,X22)|~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))))&(v1_funct_2(k2_funct_1(X23),X22,X21)|(~v2_funct_1(X23)|k2_relset_1(X21,X22,X23)!=X22)|(~v1_funct_1(X23)|~v1_funct_2(X23,X21,X22)|~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22))))))&(m1_subset_1(k2_funct_1(X23),k1_zfmisc_1(k2_zfmisc_1(X22,X21)))|(~v2_funct_1(X23)|k2_relset_1(X21,X22,X23)!=X22)|(~v1_funct_1(X23)|~v1_funct_2(X23,X21,X22)|~m1_subset_1(X23,k1_zfmisc_1(k2_zfmisc_1(X21,X22)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t31_funct_2])])])).
% 0.13/0.38  fof(c_0_14, plain, ![X18, X19, X20]:((((~v1_funct_2(X20,X18,X19)|X18=k1_relset_1(X18,X19,X20)|X19=k1_xboole_0|~m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19))))&(X18!=k1_relset_1(X18,X19,X20)|v1_funct_2(X20,X18,X19)|X19=k1_xboole_0|~m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19)))))&((~v1_funct_2(X20,X18,X19)|X18=k1_relset_1(X18,X19,X20)|X18!=k1_xboole_0|~m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19))))&(X18!=k1_relset_1(X18,X19,X20)|v1_funct_2(X20,X18,X19)|X18!=k1_xboole_0|~m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19))))))&((~v1_funct_2(X20,X18,X19)|X20=k1_xboole_0|X18=k1_xboole_0|X19!=k1_xboole_0|~m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19))))&(X20!=k1_xboole_0|v1_funct_2(X20,X18,X19)|X18=k1_xboole_0|X19!=k1_xboole_0|~m1_subset_1(X20,k1_zfmisc_1(k2_zfmisc_1(X18,X19)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_funct_2])])])).
% 0.13/0.38  cnf(c_0_15, plain, (k1_relset_1(X2,X3,X1)=k1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_12]), ['final']).
% 0.13/0.38  cnf(c_0_16, plain, (m1_subset_1(k2_funct_1(X1),k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v2_funct_1(X1)|k2_relset_1(X3,X2,X1)!=X2|~v1_funct_1(X1)|~v1_funct_2(X1,X3,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_17, plain, (X2=k1_relset_1(X2,X3,X1)|~v1_funct_2(X1,X2,X3)|X2!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_14]), ['final']).
% 0.13/0.38  cnf(c_0_18, plain, (X2=k1_relset_1(X2,X3,X1)|X3=k1_xboole_0|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_14]), ['final']).
% 0.13/0.38  fof(c_0_19, negated_conjecture, ~(![X1]:((~(v2_struct_0(X1))&l1_orders_2(X1))=>![X2]:((~(v2_struct_0(X2))&l1_orders_2(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2)))))=>(v23_waybel_0(X3,X1,X2)=>(((v1_funct_1(k2_funct_1(X3))&v1_funct_2(k2_funct_1(X3),u1_struct_0(X2),u1_struct_0(X1)))&m1_subset_1(k2_funct_1(X3),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))))&k2_relat_1(k2_funct_1(X3))=u1_struct_0(X1))))))), inference(assume_negation,[status(cth)],[t67_waybel_0])).
% 0.13/0.38  cnf(c_0_20, plain, (k1_relset_1(X1,X2,k2_funct_1(X3))=k1_relat_1(k2_funct_1(X3))|k2_relset_1(X2,X1,X3)!=X1|~v1_funct_2(X3,X2,X1)|~v2_funct_1(X3)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))), inference(pm,[status(thm)],[c_0_15, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_21, plain, (k1_relset_1(X1,X2,k2_funct_1(X3))=X1|k2_relset_1(X2,X1,X3)!=X1|X1!=k1_xboole_0|~v1_funct_2(k2_funct_1(X3),X1,X2)|~v1_funct_2(X3,X2,X1)|~v2_funct_1(X3)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))), inference(pm,[status(thm)],[c_0_17, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_22, plain, (X1=k1_xboole_0|X2=k1_xboole_0|~v1_funct_2(X1,X2,X3)|X3!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_14]), ['final']).
% 0.13/0.38  cnf(c_0_23, plain, (k1_relset_1(X1,X2,k2_funct_1(X3))=X1|X2=k1_xboole_0|k2_relset_1(X2,X1,X3)!=X1|~v1_funct_2(k2_funct_1(X3),X1,X2)|~v1_funct_2(X3,X2,X1)|~v2_funct_1(X3)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))), inference(pm,[status(thm)],[c_0_18, c_0_16]), ['final']).
% 0.13/0.38  fof(c_0_24, plain, ![X12, X13, X14]:(~m1_subset_1(X14,k1_zfmisc_1(k2_zfmisc_1(X12,X13)))|v1_relat_1(X14)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.13/0.38  fof(c_0_25, plain, ![X5]:m1_subset_1(esk1_1(X5),X5), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[existence_m1_subset_1])])).
% 0.13/0.38  fof(c_0_26, negated_conjecture, ((~v2_struct_0(esk2_0)&l1_orders_2(esk2_0))&((~v2_struct_0(esk3_0)&l1_orders_2(esk3_0))&(((v1_funct_1(esk4_0)&v1_funct_2(esk4_0,u1_struct_0(esk2_0),u1_struct_0(esk3_0)))&m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0)))))&(v23_waybel_0(esk4_0,esk2_0,esk3_0)&(~v1_funct_1(k2_funct_1(esk4_0))|~v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))|~m1_subset_1(k2_funct_1(esk4_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0))))|k2_relat_1(k2_funct_1(esk4_0))!=u1_struct_0(esk2_0)))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_19])])])])).
% 0.13/0.38  fof(c_0_27, plain, ![X10, X11]:(~r2_hidden(X10,X11)|~r1_tarski(X11,X10)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_ordinal1])])).
% 0.13/0.38  fof(c_0_28, plain, ![X7, X8]:(~m1_subset_1(X7,X8)|(v1_xboole_0(X8)|r2_hidden(X7,X8))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.13/0.38  cnf(c_0_29, plain, (k1_relset_1(X1,X2,k2_funct_1(k2_funct_1(X3)))=k1_relat_1(k2_funct_1(k2_funct_1(X3)))|k2_relset_1(X2,X1,k2_funct_1(X3))!=X1|k2_relset_1(X1,X2,X3)!=X2|~v1_funct_2(k2_funct_1(X3),X2,X1)|~v1_funct_2(X3,X1,X2)|~v2_funct_1(k2_funct_1(X3))|~v2_funct_1(X3)|~v1_funct_1(k2_funct_1(X3))|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(pm,[status(thm)],[c_0_20, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_30, plain, (k1_relset_1(X1,X2,k2_funct_1(k2_funct_1(X3)))=X1|k2_relset_1(X2,X1,k2_funct_1(X3))!=X1|k2_relset_1(X1,X2,X3)!=X2|X1!=k1_xboole_0|~v1_funct_2(k2_funct_1(k2_funct_1(X3)),X1,X2)|~v1_funct_2(k2_funct_1(X3),X2,X1)|~v1_funct_2(X3,X1,X2)|~v2_funct_1(k2_funct_1(X3))|~v2_funct_1(X3)|~v1_funct_1(k2_funct_1(X3))|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(pm,[status(thm)],[c_0_21, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_31, plain, (v1_funct_2(k2_funct_1(X1),X2,X3)|~v2_funct_1(X1)|k2_relset_1(X3,X2,X1)!=X2|~v1_funct_1(X1)|~v1_funct_2(X1,X3,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_32, plain, (k2_funct_1(X1)=k1_xboole_0|X2=k1_xboole_0|k2_relset_1(X3,X2,X1)!=X2|X3!=k1_xboole_0|~v1_funct_2(k2_funct_1(X1),X2,X3)|~v1_funct_2(X1,X3,X2)|~v2_funct_1(X1)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(pm,[status(thm)],[c_0_22, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_33, plain, (k1_relset_1(X1,X2,k2_funct_1(k2_funct_1(X3)))=X1|X2=k1_xboole_0|k2_relset_1(X2,X1,k2_funct_1(X3))!=X1|k2_relset_1(X1,X2,X3)!=X2|~v1_funct_2(k2_funct_1(k2_funct_1(X3)),X1,X2)|~v1_funct_2(k2_funct_1(X3),X2,X1)|~v1_funct_2(X3,X1,X2)|~v2_funct_1(k2_funct_1(X3))|~v2_funct_1(X3)|~v1_funct_1(k2_funct_1(X3))|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(pm,[status(thm)],[c_0_23, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_34, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_24]), ['final']).
% 0.13/0.38  cnf(c_0_35, plain, (m1_subset_1(esk1_1(X1),X1)), inference(split_conjunct,[status(thm)],[c_0_25]), ['final']).
% 0.13/0.38  cnf(c_0_36, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0))))), inference(split_conjunct,[status(thm)],[c_0_26]), ['final']).
% 0.13/0.38  cnf(c_0_37, negated_conjecture, (v1_funct_2(esk4_0,u1_struct_0(esk2_0),u1_struct_0(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_26]), ['final']).
% 0.13/0.38  cnf(c_0_38, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_26]), ['final']).
% 0.13/0.38  cnf(c_0_39, plain, (~r2_hidden(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_27]), ['final']).
% 0.13/0.38  cnf(c_0_40, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_28]), ['final']).
% 0.13/0.38  cnf(c_0_41, plain, (X1=k1_relat_1(k2_funct_1(k2_funct_1(X2)))|k2_relset_1(X3,X1,k2_funct_1(X2))!=X1|k2_relset_1(X1,X3,X2)!=X3|X1!=k1_xboole_0|~v1_funct_2(k2_funct_1(k2_funct_1(X2)),X1,X3)|~v1_funct_2(k2_funct_1(X2),X3,X1)|~v1_funct_2(X2,X1,X3)|~v2_funct_1(k2_funct_1(X2))|~v2_funct_1(X2)|~v1_funct_1(k2_funct_1(X2))|~v1_funct_1(X2)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))), inference(pm,[status(thm)],[c_0_29, c_0_30])).
% 0.13/0.38  cnf(c_0_42, plain, (v1_funct_2(k2_funct_1(k2_funct_1(X1)),X2,X3)|k2_relset_1(X3,X2,k2_funct_1(X1))!=X2|k2_relset_1(X2,X3,X1)!=X3|~v1_funct_2(k2_funct_1(X1),X3,X2)|~v1_funct_2(X1,X2,X3)|~v2_funct_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_funct_1(k2_funct_1(X1))|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(pm,[status(thm)],[c_0_31, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_43, plain, (k2_funct_1(k2_funct_1(X1))=k1_xboole_0|X2=k1_xboole_0|k2_relset_1(X3,X2,k2_funct_1(X1))!=X2|k2_relset_1(X2,X3,X1)!=X3|X3!=k1_xboole_0|~v1_funct_2(k2_funct_1(k2_funct_1(X1)),X2,X3)|~v1_funct_2(k2_funct_1(X1),X3,X2)|~v1_funct_2(X1,X2,X3)|~v2_funct_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_funct_1(k2_funct_1(X1))|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(pm,[status(thm)],[c_0_32, c_0_16])).
% 0.13/0.38  cnf(c_0_44, plain, (X1=k1_relat_1(k2_funct_1(k2_funct_1(X2)))|X3=k1_xboole_0|k2_relset_1(X3,X1,k2_funct_1(X2))!=X1|k2_relset_1(X1,X3,X2)!=X3|~v1_funct_2(k2_funct_1(k2_funct_1(X2)),X1,X3)|~v1_funct_2(k2_funct_1(X2),X3,X1)|~v1_funct_2(X2,X1,X3)|~v2_funct_1(k2_funct_1(X2))|~v2_funct_1(X2)|~v1_funct_1(k2_funct_1(X2))|~v1_funct_1(X2)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))), inference(pm,[status(thm)],[c_0_29, c_0_33])).
% 0.13/0.38  cnf(c_0_45, plain, (v1_relat_1(k2_funct_1(X1))|k2_relset_1(X2,X3,X1)!=X3|~v1_funct_2(X1,X2,X3)|~v2_funct_1(X1)|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(pm,[status(thm)],[c_0_34, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_46, plain, (v1_funct_1(k2_funct_1(X1))|~v2_funct_1(X1)|k2_relset_1(X2,X3,X1)!=X3|~v1_funct_1(X1)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_13]), ['final']).
% 0.13/0.38  cnf(c_0_47, plain, (k1_relset_1(X1,X2,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))))=k1_relat_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))))|k2_relset_1(X2,X1,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))!=X1|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))),X2,X1)|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))), inference(pm,[status(thm)],[c_0_20, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_48, plain, (k1_relset_1(X1,X2,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))))=X1|k2_relset_1(X2,X1,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))!=X1|X1!=k1_xboole_0|~v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))),X1,X2)|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))),X2,X1)|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))), inference(pm,[status(thm)],[c_0_21, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_49, plain, (k1_relset_1(X1,X2,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))))=X1|X2=k1_xboole_0|k2_relset_1(X2,X1,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))!=X1|~v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1)))),X1,X2)|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))),X2,X1)|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))), inference(pm,[status(thm)],[c_0_23, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_50, negated_conjecture, (k1_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0))=k1_relat_1(k2_funct_1(esk4_0))|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|~v2_funct_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_20, c_0_36]), c_0_37]), c_0_38])]), ['final']).
% 0.13/0.38  cnf(c_0_51, negated_conjecture, (k1_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0))=u1_struct_0(esk3_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|u1_struct_0(esk3_0)!=k1_xboole_0|~v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))|~v2_funct_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_21, c_0_36]), c_0_37]), c_0_38])]), ['final']).
% 0.13/0.38  cnf(c_0_52, negated_conjecture, (k1_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0))=u1_struct_0(esk3_0)|u1_struct_0(esk2_0)=k1_xboole_0|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|~v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))|~v2_funct_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_23, c_0_36]), c_0_37]), c_0_38])]), ['final']).
% 0.13/0.38  cnf(c_0_53, negated_conjecture, (~v1_funct_1(k2_funct_1(esk4_0))|~v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))|~m1_subset_1(k2_funct_1(esk4_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0))))|k2_relat_1(k2_funct_1(esk4_0))!=u1_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_26]), ['final']).
% 0.13/0.38  cnf(c_0_54, plain, (v1_xboole_0(X1)|~m1_subset_1(X2,X1)|~r1_tarski(X1,X2)), inference(pm,[status(thm)],[c_0_39, c_0_40]), ['final']).
% 0.13/0.38  fof(c_0_55, plain, ![X4]:r1_tarski(k1_xboole_0,X4), inference(variable_rename,[status(thm)],[t2_xboole_1])).
% 0.13/0.38  cnf(c_0_56, plain, (X1=k1_relat_1(k2_funct_1(k2_funct_1(X2)))|k2_relset_1(X3,X1,k2_funct_1(X2))!=X1|k2_relset_1(X1,X3,X2)!=X3|X1!=k1_xboole_0|~v1_funct_2(k2_funct_1(X2),X3,X1)|~v1_funct_2(X2,X1,X3)|~v2_funct_1(k2_funct_1(X2))|~v2_funct_1(X2)|~v1_funct_1(k2_funct_1(X2))|~v1_funct_1(X2)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))), inference(pm,[status(thm)],[c_0_41, c_0_42]), ['final']).
% 0.13/0.38  cnf(c_0_57, plain, (k2_funct_1(k2_funct_1(X1))=k1_xboole_0|X2=k1_xboole_0|k2_relset_1(X3,X2,k2_funct_1(X1))!=X2|k2_relset_1(X2,X3,X1)!=X3|X3!=k1_xboole_0|~v1_funct_2(k2_funct_1(X1),X3,X2)|~v1_funct_2(X1,X2,X3)|~v2_funct_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_funct_1(k2_funct_1(X1))|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(pm,[status(thm)],[c_0_43, c_0_42]), ['final']).
% 0.13/0.38  cnf(c_0_58, plain, (X1=k1_relat_1(k2_funct_1(k2_funct_1(X2)))|X3=k1_xboole_0|k2_relset_1(X3,X1,k2_funct_1(X2))!=X1|k2_relset_1(X1,X3,X2)!=X3|~v1_funct_2(k2_funct_1(X2),X3,X1)|~v1_funct_2(X2,X1,X3)|~v2_funct_1(k2_funct_1(X2))|~v2_funct_1(X2)|~v1_funct_1(k2_funct_1(X2))|~v1_funct_1(X2)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X3)))), inference(pm,[status(thm)],[c_0_44, c_0_42]), ['final']).
% 0.13/0.38  cnf(c_0_59, plain, (v1_relat_1(k2_funct_1(k2_funct_1(X1)))|k2_relset_1(X2,X3,k2_funct_1(X1))!=X3|k2_relset_1(X3,X2,X1)!=X2|~v1_funct_2(k2_funct_1(X1),X2,X3)|~v1_funct_2(X1,X3,X2)|~v2_funct_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_funct_1(k2_funct_1(X1))|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(pm,[status(thm)],[c_0_45, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_60, plain, (v1_funct_1(k2_funct_1(k2_funct_1(X1)))|k2_relset_1(X2,X3,k2_funct_1(X1))!=X3|k2_relset_1(X3,X2,X1)!=X2|~v1_funct_2(k2_funct_1(X1),X2,X3)|~v1_funct_2(X1,X3,X2)|~v2_funct_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_funct_1(k2_funct_1(X1))|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(pm,[status(thm)],[c_0_46, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_61, plain, (k1_relat_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))=X2|k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))!=X2|X2!=k1_xboole_0|~v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_47, c_0_48])).
% 0.13/0.38  cnf(c_0_62, plain, (v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)|k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))!=X2|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_31, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_63, plain, (k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=k1_xboole_0|X2=k1_xboole_0|k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))!=X2|X1!=k1_xboole_0|~v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_32, c_0_35])).
% 0.13/0.38  cnf(c_0_64, plain, (k1_relat_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))=X2|X1=k1_xboole_0|k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))!=X2|~v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_47, c_0_49])).
% 0.13/0.38  cnf(c_0_65, negated_conjecture, (k1_relat_1(k2_funct_1(esk4_0))=u1_struct_0(esk3_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|u1_struct_0(esk3_0)!=k1_xboole_0|~v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))|~v2_funct_1(esk4_0)), inference(pm,[status(thm)],[c_0_50, c_0_51])).
% 0.13/0.38  cnf(c_0_66, negated_conjecture, (v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|~v2_funct_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_31, c_0_36]), c_0_37]), c_0_38])]), ['final']).
% 0.13/0.38  cnf(c_0_67, negated_conjecture, (k1_relat_1(k2_funct_1(esk4_0))=u1_struct_0(esk3_0)|u1_struct_0(esk2_0)=k1_xboole_0|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|~v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))|~v2_funct_1(esk4_0)), inference(pm,[status(thm)],[c_0_50, c_0_52])).
% 0.13/0.38  cnf(c_0_68, negated_conjecture, (k2_funct_1(esk4_0)=k1_xboole_0|u1_struct_0(esk3_0)=k1_xboole_0|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|u1_struct_0(esk2_0)!=k1_xboole_0|~v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))|~v2_funct_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_32, c_0_36]), c_0_37]), c_0_38])])).
% 0.13/0.38  cnf(c_0_69, negated_conjecture, (k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|k2_relat_1(k2_funct_1(esk4_0))!=u1_struct_0(esk2_0)|~v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))|~v2_funct_1(esk4_0)|~v1_funct_1(k2_funct_1(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_53, c_0_16]), c_0_37]), c_0_38]), c_0_36])])).
% 0.13/0.38  cnf(c_0_70, plain, (v1_funct_2(X3,X1,X2)|X1!=k1_relset_1(X1,X2,X3)|X1!=k1_xboole_0|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_14]), ['final']).
% 0.13/0.38  cnf(c_0_71, plain, (k1_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=k1_relat_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_15, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_72, negated_conjecture, (k1_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)=k1_relat_1(esk4_0)), inference(pm,[status(thm)],[c_0_15, c_0_36]), ['final']).
% 0.13/0.38  cnf(c_0_73, plain, (v1_funct_2(X3,X1,X2)|X2=k1_xboole_0|X1!=k1_relset_1(X1,X2,X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_14]), ['final']).
% 0.13/0.38  cnf(c_0_74, plain, (v1_funct_2(X1,X2,X3)|X2=k1_xboole_0|X1!=k1_xboole_0|X3!=k1_xboole_0|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_14]), ['final']).
% 0.13/0.38  fof(c_0_75, plain, ![X9]:((k2_relat_1(X9)=k1_relat_1(k2_funct_1(X9))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9)))&(k1_relat_1(X9)=k2_relat_1(k2_funct_1(X9))|~v2_funct_1(X9)|(~v1_relat_1(X9)|~v1_funct_1(X9)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t55_funct_1])])])).
% 0.13/0.38  fof(c_0_76, plain, ![X24]:(v2_struct_0(X24)|~l1_struct_0(X24)|~v1_xboole_0(u1_struct_0(X24))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).
% 0.13/0.38  fof(c_0_77, plain, ![X25]:(~l1_orders_2(X25)|l1_struct_0(X25)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_orders_2])])).
% 0.13/0.38  cnf(c_0_78, plain, (v1_xboole_0(X1)|~r1_tarski(X1,esk1_1(X1))), inference(pm,[status(thm)],[c_0_54, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_79, plain, (r1_tarski(k1_xboole_0,X1)), inference(split_conjunct,[status(thm)],[c_0_55]), ['final']).
% 0.13/0.38  cnf(c_0_80, plain, (k1_relat_1(k2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))))=X1|k2_relset_1(X2,X1,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))!=X1|k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))!=X2|X1!=k1_xboole_0|~v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|~v2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))|~v1_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_56, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_81, plain, (k2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))=k1_xboole_0|X1=k1_xboole_0|k2_relset_1(X2,X1,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))!=X1|k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))!=X2|X2!=k1_xboole_0|~v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|~v2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))|~v1_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_57, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_82, plain, (k1_relat_1(k2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))))=X1|X2=k1_xboole_0|k2_relset_1(X2,X1,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))!=X1|k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))!=X2|~v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|~v2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))|~v1_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_58, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_83, plain, (v1_relat_1(k2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))))|k2_relset_1(X2,X1,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))!=X1|k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))!=X2|~v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|~v2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))|~v1_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_59, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_84, plain, (v1_funct_1(k2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))))|k2_relset_1(X2,X1,k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))!=X1|k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))!=X2|~v1_funct_2(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))),X2,X1)|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|~v2_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))|~v1_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_60, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_85, plain, (k2_funct_1(k2_funct_1(k2_funct_1(X1)))=k1_xboole_0|X2=k1_xboole_0|k2_relset_1(X3,X2,k2_funct_1(k2_funct_1(X1)))!=X2|k2_relset_1(X2,X3,k2_funct_1(X1))!=X3|k2_relset_1(X3,X2,X1)!=X2|X3!=k1_xboole_0|~v1_funct_2(k2_funct_1(k2_funct_1(X1)),X3,X2)|~v1_funct_2(k2_funct_1(X1),X2,X3)|~v1_funct_2(X1,X3,X2)|~v2_funct_1(k2_funct_1(k2_funct_1(X1)))|~v2_funct_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_funct_1(k2_funct_1(k2_funct_1(X1)))|~v1_funct_1(k2_funct_1(X1))|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(pm,[status(thm)],[c_0_57, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_86, plain, (X1=k1_relat_1(k2_funct_1(k2_funct_1(k2_funct_1(X2))))|k2_relset_1(X3,X1,k2_funct_1(k2_funct_1(X2)))!=X1|k2_relset_1(X1,X3,k2_funct_1(X2))!=X3|k2_relset_1(X3,X1,X2)!=X1|X1!=k1_xboole_0|~v1_funct_2(k2_funct_1(k2_funct_1(X2)),X3,X1)|~v1_funct_2(k2_funct_1(X2),X1,X3)|~v1_funct_2(X2,X3,X1)|~v2_funct_1(k2_funct_1(k2_funct_1(X2)))|~v2_funct_1(k2_funct_1(X2))|~v2_funct_1(X2)|~v1_funct_1(k2_funct_1(k2_funct_1(X2)))|~v1_funct_1(k2_funct_1(X2))|~v1_funct_1(X2)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))), inference(pm,[status(thm)],[c_0_56, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_87, plain, (X1=k1_relat_1(k2_funct_1(k2_funct_1(k2_funct_1(X2))))|X3=k1_xboole_0|k2_relset_1(X3,X1,k2_funct_1(k2_funct_1(X2)))!=X1|k2_relset_1(X1,X3,k2_funct_1(X2))!=X3|k2_relset_1(X3,X1,X2)!=X1|~v1_funct_2(k2_funct_1(k2_funct_1(X2)),X3,X1)|~v1_funct_2(k2_funct_1(X2),X1,X3)|~v1_funct_2(X2,X3,X1)|~v2_funct_1(k2_funct_1(k2_funct_1(X2)))|~v2_funct_1(k2_funct_1(X2))|~v2_funct_1(X2)|~v1_funct_1(k2_funct_1(k2_funct_1(X2)))|~v1_funct_1(k2_funct_1(X2))|~v1_funct_1(X2)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X1)))), inference(pm,[status(thm)],[c_0_58, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_88, plain, (v1_relat_1(k2_funct_1(k2_funct_1(k2_funct_1(X1))))|k2_relset_1(X2,X3,k2_funct_1(k2_funct_1(X1)))!=X3|k2_relset_1(X3,X2,k2_funct_1(X1))!=X2|k2_relset_1(X2,X3,X1)!=X3|~v1_funct_2(k2_funct_1(k2_funct_1(X1)),X2,X3)|~v1_funct_2(k2_funct_1(X1),X3,X2)|~v1_funct_2(X1,X2,X3)|~v2_funct_1(k2_funct_1(k2_funct_1(X1)))|~v2_funct_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_funct_1(k2_funct_1(k2_funct_1(X1)))|~v1_funct_1(k2_funct_1(X1))|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(pm,[status(thm)],[c_0_59, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_89, plain, (v1_funct_1(k2_funct_1(k2_funct_1(k2_funct_1(X1))))|k2_relset_1(X2,X3,k2_funct_1(k2_funct_1(X1)))!=X3|k2_relset_1(X3,X2,k2_funct_1(X1))!=X2|k2_relset_1(X2,X3,X1)!=X3|~v1_funct_2(k2_funct_1(k2_funct_1(X1)),X2,X3)|~v1_funct_2(k2_funct_1(X1),X3,X2)|~v1_funct_2(X1,X2,X3)|~v2_funct_1(k2_funct_1(k2_funct_1(X1)))|~v2_funct_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_funct_1(k2_funct_1(k2_funct_1(X1)))|~v1_funct_1(k2_funct_1(X1))|~v1_funct_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(pm,[status(thm)],[c_0_60, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_90, negated_conjecture, (k1_relat_1(k2_funct_1(k2_funct_1(esk4_0)))=u1_struct_0(esk2_0)|k2_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0))!=u1_struct_0(esk2_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|u1_struct_0(esk2_0)!=k1_xboole_0|~v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))|~v2_funct_1(k2_funct_1(esk4_0))|~v2_funct_1(esk4_0)|~v1_funct_1(k2_funct_1(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_56, c_0_36]), c_0_37]), c_0_38])]), ['final']).
% 0.13/0.38  cnf(c_0_91, negated_conjecture, (k1_relat_1(k2_funct_1(k2_funct_1(esk4_0)))=u1_struct_0(esk2_0)|u1_struct_0(esk3_0)=k1_xboole_0|k2_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0))!=u1_struct_0(esk2_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|~v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))|~v2_funct_1(k2_funct_1(esk4_0))|~v2_funct_1(esk4_0)|~v1_funct_1(k2_funct_1(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_58, c_0_36]), c_0_37]), c_0_38])]), ['final']).
% 0.13/0.38  cnf(c_0_92, plain, (k1_relat_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))=X2|k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))!=X2|X2!=k1_xboole_0|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_61, c_0_62]), ['final']).
% 0.13/0.38  cnf(c_0_93, negated_conjecture, (k2_funct_1(k2_funct_1(esk4_0))=k1_xboole_0|u1_struct_0(esk2_0)=k1_xboole_0|k2_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0))!=u1_struct_0(esk2_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|u1_struct_0(esk3_0)!=k1_xboole_0|~v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))|~v2_funct_1(k2_funct_1(esk4_0))|~v2_funct_1(esk4_0)|~v1_funct_1(k2_funct_1(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_57, c_0_36]), c_0_37]), c_0_38])]), ['final']).
% 0.13/0.38  cnf(c_0_94, plain, (k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=k1_xboole_0|X2=k1_xboole_0|k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))!=X2|X1!=k1_xboole_0|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_63, c_0_62]), ['final']).
% 0.13/0.38  cnf(c_0_95, plain, (k1_relat_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))=X2|X1=k1_xboole_0|k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))!=X2|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_64, c_0_62]), ['final']).
% 0.13/0.38  cnf(c_0_96, plain, (v1_relat_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))|k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))!=X2|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_45, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_97, negated_conjecture, (v1_relat_1(k2_funct_1(k2_funct_1(esk4_0)))|k2_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0))!=u1_struct_0(esk2_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|~v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))|~v2_funct_1(k2_funct_1(esk4_0))|~v2_funct_1(esk4_0)|~v1_funct_1(k2_funct_1(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_59, c_0_36]), c_0_37]), c_0_38])]), ['final']).
% 0.13/0.38  cnf(c_0_98, negated_conjecture, (v1_funct_1(k2_funct_1(k2_funct_1(esk4_0)))|k2_relset_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0),k2_funct_1(esk4_0))!=u1_struct_0(esk2_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|~v1_funct_2(k2_funct_1(esk4_0),u1_struct_0(esk3_0),u1_struct_0(esk2_0))|~v2_funct_1(k2_funct_1(esk4_0))|~v2_funct_1(esk4_0)|~v1_funct_1(k2_funct_1(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_60, c_0_36]), c_0_37]), c_0_38])]), ['final']).
% 0.13/0.38  cnf(c_0_99, negated_conjecture, (k1_relat_1(k2_funct_1(esk4_0))=u1_struct_0(esk3_0)|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|u1_struct_0(esk3_0)!=k1_xboole_0|~v2_funct_1(esk4_0)), inference(pm,[status(thm)],[c_0_65, c_0_66]), ['final']).
% 0.13/0.38  cnf(c_0_100, negated_conjecture, (k1_relat_1(k2_funct_1(esk4_0))=u1_struct_0(esk3_0)|u1_struct_0(esk2_0)=k1_xboole_0|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|~v2_funct_1(esk4_0)), inference(pm,[status(thm)],[c_0_67, c_0_66]), ['final']).
% 0.13/0.38  cnf(c_0_101, negated_conjecture, (k2_funct_1(esk4_0)=k1_xboole_0|u1_struct_0(esk3_0)=k1_xboole_0|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|u1_struct_0(esk2_0)!=k1_xboole_0|~v2_funct_1(esk4_0)), inference(pm,[status(thm)],[c_0_68, c_0_66]), ['final']).
% 0.13/0.38  cnf(c_0_102, plain, (v1_xboole_0(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|k2_relset_1(X2,X1,X3)!=X1|~v1_funct_2(X3,X2,X1)|~v2_funct_1(X3)|~v1_funct_1(X3)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X2,X1)))|~r1_tarski(k1_zfmisc_1(k2_zfmisc_1(X1,X2)),k2_funct_1(X3))), inference(pm,[status(thm)],[c_0_54, c_0_16]), ['final']).
% 0.13/0.38  cnf(c_0_103, negated_conjecture, (v1_relat_1(k2_funct_1(esk4_0))|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|~v2_funct_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_45, c_0_36]), c_0_37]), c_0_38])]), ['final']).
% 0.13/0.38  cnf(c_0_104, negated_conjecture, (k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|k2_relat_1(k2_funct_1(esk4_0))!=u1_struct_0(esk2_0)|~v2_funct_1(esk4_0)|~v1_funct_1(k2_funct_1(esk4_0))), inference(pm,[status(thm)],[c_0_69, c_0_66]), ['final']).
% 0.13/0.38  cnf(c_0_105, plain, (v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|k1_relat_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))!=X1|X1!=k1_xboole_0), inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_70, c_0_35]), c_0_71]), ['final']).
% 0.13/0.38  cnf(c_0_106, plain, (k1_relat_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=X1|X1!=k1_xboole_0|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)), inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_17, c_0_35]), c_0_71]), ['final']).
% 0.13/0.38  cnf(c_0_107, plain, (v1_funct_1(k2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))))|k2_relset_1(X1,X2,esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))!=X2|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|~v2_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))|~v1_funct_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_46, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_108, negated_conjecture, (k1_relat_1(esk4_0)=u1_struct_0(esk2_0)|u1_struct_0(esk2_0)!=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_17, c_0_36]), c_0_72]), c_0_37])]), ['final']).
% 0.13/0.38  cnf(c_0_109, plain, (esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=k1_xboole_0|X1=k1_xboole_0|X2!=k1_xboole_0|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)), inference(pm,[status(thm)],[c_0_22, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_110, plain, (X1=k1_xboole_0|v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))),X2,X1)|k1_relat_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X2,X1))))!=X2), inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_73, c_0_35]), c_0_71]), ['final']).
% 0.13/0.38  cnf(c_0_111, plain, (X1=k1_xboole_0|v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)|esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2)))!=k1_xboole_0|X2!=k1_xboole_0), inference(pm,[status(thm)],[c_0_74, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_112, plain, (k1_relat_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=X1|X2=k1_xboole_0|~v1_funct_2(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))),X1,X2)), inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_18, c_0_35]), c_0_71]), ['final']).
% 0.13/0.38  cnf(c_0_113, negated_conjecture, (u1_struct_0(esk2_0)=k1_xboole_0|esk4_0=k1_xboole_0|u1_struct_0(esk3_0)!=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_22, c_0_36]), c_0_37])]), ['final']).
% 0.13/0.38  cnf(c_0_114, negated_conjecture, (k1_relat_1(esk4_0)=u1_struct_0(esk2_0)|u1_struct_0(esk3_0)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_18, c_0_36]), c_0_72]), c_0_37])]), ['final']).
% 0.13/0.38  cnf(c_0_115, negated_conjecture, (v1_funct_1(k2_funct_1(esk4_0))|k2_relset_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0),esk4_0)!=u1_struct_0(esk3_0)|~v2_funct_1(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(pm,[status(thm)],[c_0_46, c_0_36]), c_0_37]), c_0_38])]), ['final']).
% 0.13/0.38  cnf(c_0_116, negated_conjecture, (v1_xboole_0(k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0))))|~r1_tarski(k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk3_0))),esk4_0)), inference(pm,[status(thm)],[c_0_54, c_0_36]), ['final']).
% 0.13/0.38  cnf(c_0_117, plain, (k2_relat_1(X1)=k1_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_75]), ['final']).
% 0.13/0.38  cnf(c_0_118, plain, (k1_relat_1(X1)=k2_relat_1(k2_funct_1(X1))|~v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_75]), ['final']).
% 0.13/0.38  cnf(c_0_119, plain, (v2_struct_0(X1)|~l1_struct_0(X1)|~v1_xboole_0(u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_76]), ['final']).
% 0.13/0.38  cnf(c_0_120, plain, (l1_struct_0(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_77]), ['final']).
% 0.13/0.38  cnf(c_0_121, negated_conjecture, (~v2_struct_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_26]), ['final']).
% 0.13/0.38  cnf(c_0_122, negated_conjecture, (~v2_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_26]), ['final']).
% 0.13/0.38  cnf(c_0_123, plain, (v1_xboole_0(k1_xboole_0)), inference(pm,[status(thm)],[c_0_78, c_0_79]), ['final']).
% 0.13/0.38  cnf(c_0_124, plain, (v1_relat_1(esk1_1(k1_zfmisc_1(k2_zfmisc_1(X1,X2))))), inference(pm,[status(thm)],[c_0_34, c_0_35]), ['final']).
% 0.13/0.38  cnf(c_0_125, negated_conjecture, (v1_relat_1(esk4_0)), inference(pm,[status(thm)],[c_0_34, c_0_36]), ['final']).
% 0.13/0.38  cnf(c_0_126, negated_conjecture, (v23_waybel_0(esk4_0,esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_26]), ['final']).
% 0.13/0.38  cnf(c_0_127, negated_conjecture, (l1_orders_2(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_26]), ['final']).
% 0.13/0.38  cnf(c_0_128, negated_conjecture, (l1_orders_2(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_26]), ['final']).
% 0.13/0.38  # SZS output end Saturation
% 0.13/0.38  # Proof object total steps             : 129
% 0.13/0.38  # Proof object clause steps            : 104
% 0.13/0.38  # Proof object formula steps           : 25
% 0.13/0.38  # Proof object conjectures             : 37
% 0.13/0.38  # Proof object clause conjectures      : 34
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 28
% 0.13/0.38  # Proof object initial formulas used   : 12
% 0.13/0.38  # Proof object generating inferences   : 76
% 0.13/0.38  # Proof object simplifying inferences  : 52
% 0.13/0.38  # Parsed axioms                        : 12
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 28
% 0.13/0.38  # Removed in clause preprocessing      : 0
% 0.13/0.38  # Initial clauses in saturation        : 28
% 0.13/0.38  # Processed clauses                    : 107
% 0.13/0.38  # ...of these trivial                  : 0
% 0.13/0.38  # ...subsumed                          : 3
% 0.13/0.38  # ...remaining for further processing  : 104
% 0.13/0.38  # Other redundant clauses eliminated   : 0
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 10
% 0.13/0.38  # Backward-rewritten                   : 0
% 0.13/0.38  # Generated clauses                    : 91
% 0.13/0.38  # ...of the previous two non-trivial   : 79
% 0.13/0.38  # Contextual simplify-reflections      : 0
% 0.13/0.38  # Paramodulations                      : 91
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
% 0.13/0.38  # Current number of processed clauses  : 94
% 0.13/0.38  #    Positive orientable unit clauses  : 13
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 2
% 0.13/0.38  #    Non-unit-clauses                  : 79
% 0.13/0.38  # Current number of unprocessed clauses: 0
% 0.13/0.38  # ...number of literals in the above   : 0
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 10
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 501
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 75
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 13
% 0.13/0.38  # Unit Clause-clause subsumption calls : 19
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 2
% 0.13/0.38  # BW rewrite match successes           : 0
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 5897
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.037 s
% 0.13/0.38  # System time              : 0.003 s
% 0.13/0.38  # Total time               : 0.041 s
% 0.13/0.38  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
