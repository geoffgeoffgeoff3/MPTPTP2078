%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n023.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:14:38 EST 2020

% Result     : Theorem 0.14s
% Output     : CNFRefutation 0.14s
% Verified   : 
% Statistics : Number of formulae       :   55 ( 100 expanded)
%              Number of clauses        :   30 (  39 expanded)
%              Number of leaves         :   12 (  25 expanded)
%              Depth                    :    9
%              Number of atoms          :  257 ( 695 expanded)
%              Number of equality atoms :   23 (  56 expanded)
%              Maximal formula depth    :   27 (   4 average)
%              Maximal clause size      :   90 (   2 average)
%              Maximal term depth       :    4 (   2 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t28_connsp_2,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
             => ~ ( ! [X4] :
                      ( m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
                     => ( r2_hidden(X4,X3)
                      <=> ( v3_pre_topc(X4,X1)
                          & v4_pre_topc(X4,X1)
                          & r2_hidden(X2,X4) ) ) )
                  & X3 = k1_xboole_0 ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t28_connsp_2)).

fof(t113_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( k2_zfmisc_1(X1,X2) = k1_xboole_0
    <=> ( X1 = k1_xboole_0
        | X2 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t113_zfmisc_1)).

fof(t152_zfmisc_1,axiom,(
    ! [X1,X2] : ~ r2_hidden(X1,k2_zfmisc_1(X1,X2)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t152_zfmisc_1)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_subset)).

fof(fc2_struct_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ~ v1_xboole_0(u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc2_struct_0)).

fof(fc4_pre_topc,axiom,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => v4_pre_topc(k2_struct_0(X1),X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc4_pre_topc)).

fof(dt_k2_subset_1,axiom,(
    ! [X1] : m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_k2_subset_1)).

fof(d4_subset_1,axiom,(
    ! [X1] : k2_subset_1(X1) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_subset_1)).

fof(dt_l1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => l1_struct_0(X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_l1_pre_topc)).

fof(d3_struct_0,axiom,(
    ! [X1] :
      ( l1_struct_0(X1)
     => k2_struct_0(X1) = u1_struct_0(X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_struct_0)).

fof(d1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ( v2_pre_topc(X1)
      <=> ( r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
          & ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
             => ( r1_tarski(X2,u1_pre_topc(X1))
               => r2_hidden(k5_setfam_1(u1_struct_0(X1),X2),u1_pre_topc(X1)) ) )
          & ! [X2] :
              ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
             => ! [X3] :
                  ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
                 => ( ( r2_hidden(X2,u1_pre_topc(X1))
                      & r2_hidden(X3,u1_pre_topc(X1)) )
                   => r2_hidden(k9_subset_1(u1_struct_0(X1),X2,X3),u1_pre_topc(X1)) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_pre_topc)).

fof(d5_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v3_pre_topc(X2,X1)
          <=> r2_hidden(X2,u1_pre_topc(X1)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d5_pre_topc)).

fof(c_0_12,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,u1_struct_0(X1))
           => ! [X3] :
                ( m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))
               => ~ ( ! [X4] :
                        ( m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
                       => ( r2_hidden(X4,X3)
                        <=> ( v3_pre_topc(X4,X1)
                            & v4_pre_topc(X4,X1)
                            & r2_hidden(X2,X4) ) ) )
                    & X3 = k1_xboole_0 ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t28_connsp_2])).

fof(c_0_13,plain,(
    ! [X5,X6] :
      ( ( k2_zfmisc_1(X5,X6) != k1_xboole_0
        | X5 = k1_xboole_0
        | X6 = k1_xboole_0 )
      & ( X5 != k1_xboole_0
        | k2_zfmisc_1(X5,X6) = k1_xboole_0 )
      & ( X6 != k1_xboole_0
        | k2_zfmisc_1(X5,X6) = k1_xboole_0 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).

fof(c_0_14,negated_conjecture,(
    ! [X29] :
      ( ~ v2_struct_0(esk4_0)
      & v2_pre_topc(esk4_0)
      & l1_pre_topc(esk4_0)
      & m1_subset_1(esk5_0,u1_struct_0(esk4_0))
      & m1_subset_1(esk6_0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk4_0))))
      & ( v3_pre_topc(X29,esk4_0)
        | ~ r2_hidden(X29,esk6_0)
        | ~ m1_subset_1(X29,k1_zfmisc_1(u1_struct_0(esk4_0))) )
      & ( v4_pre_topc(X29,esk4_0)
        | ~ r2_hidden(X29,esk6_0)
        | ~ m1_subset_1(X29,k1_zfmisc_1(u1_struct_0(esk4_0))) )
      & ( r2_hidden(esk5_0,X29)
        | ~ r2_hidden(X29,esk6_0)
        | ~ m1_subset_1(X29,k1_zfmisc_1(u1_struct_0(esk4_0))) )
      & ( ~ v3_pre_topc(X29,esk4_0)
        | ~ v4_pre_topc(X29,esk4_0)
        | ~ r2_hidden(esk5_0,X29)
        | r2_hidden(X29,esk6_0)
        | ~ m1_subset_1(X29,k1_zfmisc_1(u1_struct_0(esk4_0))) )
      & esk6_0 = k1_xboole_0 ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_12])])])])])])).

fof(c_0_15,plain,(
    ! [X7,X8] : ~ r2_hidden(X7,k2_zfmisc_1(X7,X8)) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[t152_zfmisc_1])])).

cnf(c_0_16,plain,
    ( k2_zfmisc_1(X2,X1) = k1_xboole_0
    | X1 != k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

fof(c_0_17,plain,(
    ! [X11,X12] :
      ( ~ m1_subset_1(X11,X12)
      | v1_xboole_0(X12)
      | r2_hidden(X11,X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

cnf(c_0_18,negated_conjecture,
    ( r2_hidden(X1,esk6_0)
    | ~ v3_pre_topc(X1,esk4_0)
    | ~ v4_pre_topc(X1,esk4_0)
    | ~ r2_hidden(esk5_0,X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_19,negated_conjecture,
    ( esk6_0 = k1_xboole_0 ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,plain,
    ( ~ r2_hidden(X1,k2_zfmisc_1(X1,X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_21,plain,
    ( k2_zfmisc_1(X1,k1_xboole_0) = k1_xboole_0 ),
    inference(er,[status(thm)],[c_0_16])).

fof(c_0_22,plain,(
    ! [X24] :
      ( v2_struct_0(X24)
      | ~ l1_struct_0(X24)
      | ~ v1_xboole_0(u1_struct_0(X24)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).

cnf(c_0_23,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_24,negated_conjecture,
    ( m1_subset_1(esk5_0,u1_struct_0(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_25,negated_conjecture,
    ( r2_hidden(X1,k1_xboole_0)
    | ~ v4_pre_topc(X1,esk4_0)
    | ~ v3_pre_topc(X1,esk4_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0)))
    | ~ r2_hidden(esk5_0,X1) ),
    inference(rw,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_26,plain,
    ( ~ r2_hidden(X1,k1_xboole_0) ),
    inference(spm,[status(thm)],[c_0_20,c_0_21])).

fof(c_0_27,plain,(
    ! [X25] :
      ( ~ v2_pre_topc(X25)
      | ~ l1_pre_topc(X25)
      | v4_pre_topc(k2_struct_0(X25),X25) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc4_pre_topc])])).

fof(c_0_28,plain,(
    ! [X10] : m1_subset_1(k2_subset_1(X10),k1_zfmisc_1(X10)) ),
    inference(variable_rename,[status(thm)],[dt_k2_subset_1])).

fof(c_0_29,plain,(
    ! [X9] : k2_subset_1(X9) = X9 ),
    inference(variable_rename,[status(thm)],[d4_subset_1])).

cnf(c_0_30,plain,
    ( v2_struct_0(X1)
    | ~ l1_struct_0(X1)
    | ~ v1_xboole_0(u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_31,negated_conjecture,
    ( v1_xboole_0(u1_struct_0(esk4_0))
    | r2_hidden(esk5_0,u1_struct_0(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_32,negated_conjecture,
    ( ~ v2_struct_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_33,plain,(
    ! [X23] :
      ( ~ l1_pre_topc(X23)
      | l1_struct_0(X23) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_pre_topc])])).

cnf(c_0_34,negated_conjecture,
    ( ~ v4_pre_topc(X1,esk4_0)
    | ~ v3_pre_topc(X1,esk4_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0)))
    | ~ r2_hidden(esk5_0,X1) ),
    inference(sr,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_35,plain,
    ( v4_pre_topc(k2_struct_0(X1),X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_36,negated_conjecture,
    ( v2_pre_topc(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_37,negated_conjecture,
    ( l1_pre_topc(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_38,plain,(
    ! [X20] :
      ( ~ l1_struct_0(X20)
      | k2_struct_0(X20) = u1_struct_0(X20) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).

cnf(c_0_39,plain,
    ( m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_40,plain,
    ( k2_subset_1(X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_41,negated_conjecture,
    ( r2_hidden(esk5_0,u1_struct_0(esk4_0))
    | ~ l1_struct_0(esk4_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_31]),c_0_32])).

cnf(c_0_42,plain,
    ( l1_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

fof(c_0_43,plain,(
    ! [X13,X14,X15,X16] :
      ( ( r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | ~ v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( ~ m1_subset_1(X14,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X13))))
        | ~ r1_tarski(X14,u1_pre_topc(X13))
        | r2_hidden(k5_setfam_1(u1_struct_0(X13),X14),u1_pre_topc(X13))
        | ~ v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( ~ m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X13)))
        | ~ m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X13)))
        | ~ r2_hidden(X15,u1_pre_topc(X13))
        | ~ r2_hidden(X16,u1_pre_topc(X13))
        | r2_hidden(k9_subset_1(u1_struct_0(X13),X15,X16),u1_pre_topc(X13))
        | ~ v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( m1_subset_1(esk2_1(X13),k1_zfmisc_1(u1_struct_0(X13)))
        | m1_subset_1(esk1_1(X13),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X13))))
        | ~ r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( m1_subset_1(esk3_1(X13),k1_zfmisc_1(u1_struct_0(X13)))
        | m1_subset_1(esk1_1(X13),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X13))))
        | ~ r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( r2_hidden(esk2_1(X13),u1_pre_topc(X13))
        | m1_subset_1(esk1_1(X13),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X13))))
        | ~ r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( r2_hidden(esk3_1(X13),u1_pre_topc(X13))
        | m1_subset_1(esk1_1(X13),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X13))))
        | ~ r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( ~ r2_hidden(k9_subset_1(u1_struct_0(X13),esk2_1(X13),esk3_1(X13)),u1_pre_topc(X13))
        | m1_subset_1(esk1_1(X13),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X13))))
        | ~ r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( m1_subset_1(esk2_1(X13),k1_zfmisc_1(u1_struct_0(X13)))
        | r1_tarski(esk1_1(X13),u1_pre_topc(X13))
        | ~ r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( m1_subset_1(esk3_1(X13),k1_zfmisc_1(u1_struct_0(X13)))
        | r1_tarski(esk1_1(X13),u1_pre_topc(X13))
        | ~ r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( r2_hidden(esk2_1(X13),u1_pre_topc(X13))
        | r1_tarski(esk1_1(X13),u1_pre_topc(X13))
        | ~ r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( r2_hidden(esk3_1(X13),u1_pre_topc(X13))
        | r1_tarski(esk1_1(X13),u1_pre_topc(X13))
        | ~ r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( ~ r2_hidden(k9_subset_1(u1_struct_0(X13),esk2_1(X13),esk3_1(X13)),u1_pre_topc(X13))
        | r1_tarski(esk1_1(X13),u1_pre_topc(X13))
        | ~ r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( m1_subset_1(esk2_1(X13),k1_zfmisc_1(u1_struct_0(X13)))
        | ~ r2_hidden(k5_setfam_1(u1_struct_0(X13),esk1_1(X13)),u1_pre_topc(X13))
        | ~ r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( m1_subset_1(esk3_1(X13),k1_zfmisc_1(u1_struct_0(X13)))
        | ~ r2_hidden(k5_setfam_1(u1_struct_0(X13),esk1_1(X13)),u1_pre_topc(X13))
        | ~ r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( r2_hidden(esk2_1(X13),u1_pre_topc(X13))
        | ~ r2_hidden(k5_setfam_1(u1_struct_0(X13),esk1_1(X13)),u1_pre_topc(X13))
        | ~ r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( r2_hidden(esk3_1(X13),u1_pre_topc(X13))
        | ~ r2_hidden(k5_setfam_1(u1_struct_0(X13),esk1_1(X13)),u1_pre_topc(X13))
        | ~ r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) )
      & ( ~ r2_hidden(k9_subset_1(u1_struct_0(X13),esk2_1(X13),esk3_1(X13)),u1_pre_topc(X13))
        | ~ r2_hidden(k5_setfam_1(u1_struct_0(X13),esk1_1(X13)),u1_pre_topc(X13))
        | ~ r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))
        | v2_pre_topc(X13)
        | ~ l1_pre_topc(X13) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_pre_topc])])])])])).

cnf(c_0_44,negated_conjecture,
    ( ~ v3_pre_topc(k2_struct_0(esk4_0),esk4_0)
    | ~ m1_subset_1(k2_struct_0(esk4_0),k1_zfmisc_1(u1_struct_0(esk4_0)))
    | ~ r2_hidden(esk5_0,k2_struct_0(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_35]),c_0_36]),c_0_37])])).

cnf(c_0_45,plain,
    ( k2_struct_0(X1) = u1_struct_0(X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_38])).

cnf(c_0_46,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_47,negated_conjecture,
    ( r2_hidden(esk5_0,u1_struct_0(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41,c_0_42]),c_0_37])])).

fof(c_0_48,plain,(
    ! [X21,X22] :
      ( ( ~ v3_pre_topc(X22,X21)
        | r2_hidden(X22,u1_pre_topc(X21))
        | ~ m1_subset_1(X22,k1_zfmisc_1(u1_struct_0(X21)))
        | ~ l1_pre_topc(X21) )
      & ( ~ r2_hidden(X22,u1_pre_topc(X21))
        | v3_pre_topc(X22,X21)
        | ~ m1_subset_1(X22,k1_zfmisc_1(u1_struct_0(X21)))
        | ~ l1_pre_topc(X21) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_pre_topc])])])])).

cnf(c_0_49,plain,
    ( r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_50,negated_conjecture,
    ( ~ v3_pre_topc(u1_struct_0(esk4_0),esk4_0)
    | ~ l1_struct_0(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_45]),c_0_46]),c_0_47])])).

cnf(c_0_51,plain,
    ( v3_pre_topc(X1,X2)
    | ~ r2_hidden(X1,u1_pre_topc(X2))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_48])).

cnf(c_0_52,negated_conjecture,
    ( r2_hidden(u1_struct_0(esk4_0),u1_pre_topc(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_36]),c_0_37])])).

cnf(c_0_53,negated_conjecture,
    ( ~ l1_struct_0(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50,c_0_51]),c_0_37]),c_0_46]),c_0_52])])).

cnf(c_0_54,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_42]),c_0_37])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.09/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.09/0.14  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.35  % Computer   : n023.cluster.edu
% 0.14/0.35  % Model      : x86_64 x86_64
% 0.14/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.35  % Memory     : 8042.1875MB
% 0.14/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.35  % CPULimit   : 60
% 0.14/0.35  % WCLimit    : 600
% 0.14/0.35  % DateTime   : Tue Dec  1 11:14:36 EST 2020
% 0.14/0.35  % CPUTime    : 
% 0.14/0.35  # Version: 2.5pre002
% 0.14/0.35  # No SInE strategy applied
% 0.14/0.35  # Trying AutoSched0 for 299 seconds
% 0.14/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.14/0.39  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.14/0.39  #
% 0.14/0.39  # Preprocessing time       : 0.028 s
% 0.14/0.39  # Presaturation interreduction done
% 0.14/0.39  
% 0.14/0.39  # Proof found!
% 0.14/0.39  # SZS status Theorem
% 0.14/0.39  # SZS output start CNFRefutation
% 0.14/0.39  fof(t28_connsp_2, conjecture, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))=>~((![X4]:(m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))=>(r2_hidden(X4,X3)<=>((v3_pre_topc(X4,X1)&v4_pre_topc(X4,X1))&r2_hidden(X2,X4))))&X3=k1_xboole_0))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t28_connsp_2)).
% 0.14/0.39  fof(t113_zfmisc_1, axiom, ![X1, X2]:(k2_zfmisc_1(X1,X2)=k1_xboole_0<=>(X1=k1_xboole_0|X2=k1_xboole_0)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t113_zfmisc_1)).
% 0.14/0.39  fof(t152_zfmisc_1, axiom, ![X1, X2]:~(r2_hidden(X1,k2_zfmisc_1(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t152_zfmisc_1)).
% 0.14/0.39  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_subset)).
% 0.14/0.39  fof(fc2_struct_0, axiom, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>~(v1_xboole_0(u1_struct_0(X1)))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc2_struct_0)).
% 0.14/0.39  fof(fc4_pre_topc, axiom, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>v4_pre_topc(k2_struct_0(X1),X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc4_pre_topc)).
% 0.14/0.39  fof(dt_k2_subset_1, axiom, ![X1]:m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_k2_subset_1)).
% 0.14/0.39  fof(d4_subset_1, axiom, ![X1]:k2_subset_1(X1)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_subset_1)).
% 0.14/0.39  fof(dt_l1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>l1_struct_0(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_l1_pre_topc)).
% 0.14/0.39  fof(d3_struct_0, axiom, ![X1]:(l1_struct_0(X1)=>k2_struct_0(X1)=u1_struct_0(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_struct_0)).
% 0.14/0.39  fof(d1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>(v2_pre_topc(X1)<=>((r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))&![X2]:(m1_subset_1(X2,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))=>(r1_tarski(X2,u1_pre_topc(X1))=>r2_hidden(k5_setfam_1(u1_struct_0(X1),X2),u1_pre_topc(X1)))))&![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((r2_hidden(X2,u1_pre_topc(X1))&r2_hidden(X3,u1_pre_topc(X1)))=>r2_hidden(k9_subset_1(u1_struct_0(X1),X2,X3),u1_pre_topc(X1)))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_pre_topc)).
% 0.14/0.39  fof(d5_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v3_pre_topc(X2,X1)<=>r2_hidden(X2,u1_pre_topc(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d5_pre_topc)).
% 0.14/0.39  fof(c_0_12, negated_conjecture, ~(![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X1))))=>~((![X4]:(m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))=>(r2_hidden(X4,X3)<=>((v3_pre_topc(X4,X1)&v4_pre_topc(X4,X1))&r2_hidden(X2,X4))))&X3=k1_xboole_0)))))), inference(assume_negation,[status(cth)],[t28_connsp_2])).
% 0.14/0.39  fof(c_0_13, plain, ![X5, X6]:((k2_zfmisc_1(X5,X6)!=k1_xboole_0|(X5=k1_xboole_0|X6=k1_xboole_0))&((X5!=k1_xboole_0|k2_zfmisc_1(X5,X6)=k1_xboole_0)&(X6!=k1_xboole_0|k2_zfmisc_1(X5,X6)=k1_xboole_0))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t113_zfmisc_1])])])).
% 0.14/0.39  fof(c_0_14, negated_conjecture, ![X29]:(((~v2_struct_0(esk4_0)&v2_pre_topc(esk4_0))&l1_pre_topc(esk4_0))&(m1_subset_1(esk5_0,u1_struct_0(esk4_0))&(m1_subset_1(esk6_0,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(esk4_0))))&(((((v3_pre_topc(X29,esk4_0)|~r2_hidden(X29,esk6_0)|~m1_subset_1(X29,k1_zfmisc_1(u1_struct_0(esk4_0))))&(v4_pre_topc(X29,esk4_0)|~r2_hidden(X29,esk6_0)|~m1_subset_1(X29,k1_zfmisc_1(u1_struct_0(esk4_0)))))&(r2_hidden(esk5_0,X29)|~r2_hidden(X29,esk6_0)|~m1_subset_1(X29,k1_zfmisc_1(u1_struct_0(esk4_0)))))&(~v3_pre_topc(X29,esk4_0)|~v4_pre_topc(X29,esk4_0)|~r2_hidden(esk5_0,X29)|r2_hidden(X29,esk6_0)|~m1_subset_1(X29,k1_zfmisc_1(u1_struct_0(esk4_0)))))&esk6_0=k1_xboole_0)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_12])])])])])])).
% 0.14/0.39  fof(c_0_15, plain, ![X7, X8]:~r2_hidden(X7,k2_zfmisc_1(X7,X8)), inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[t152_zfmisc_1])])).
% 0.14/0.39  cnf(c_0_16, plain, (k2_zfmisc_1(X2,X1)=k1_xboole_0|X1!=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.14/0.39  fof(c_0_17, plain, ![X11, X12]:(~m1_subset_1(X11,X12)|(v1_xboole_0(X12)|r2_hidden(X11,X12))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.14/0.39  cnf(c_0_18, negated_conjecture, (r2_hidden(X1,esk6_0)|~v3_pre_topc(X1,esk4_0)|~v4_pre_topc(X1,esk4_0)|~r2_hidden(esk5_0,X1)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0)))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.39  cnf(c_0_19, negated_conjecture, (esk6_0=k1_xboole_0), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.39  cnf(c_0_20, plain, (~r2_hidden(X1,k2_zfmisc_1(X1,X2))), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.14/0.39  cnf(c_0_21, plain, (k2_zfmisc_1(X1,k1_xboole_0)=k1_xboole_0), inference(er,[status(thm)],[c_0_16])).
% 0.14/0.39  fof(c_0_22, plain, ![X24]:(v2_struct_0(X24)|~l1_struct_0(X24)|~v1_xboole_0(u1_struct_0(X24))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).
% 0.14/0.39  cnf(c_0_23, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.14/0.39  cnf(c_0_24, negated_conjecture, (m1_subset_1(esk5_0,u1_struct_0(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.39  cnf(c_0_25, negated_conjecture, (r2_hidden(X1,k1_xboole_0)|~v4_pre_topc(X1,esk4_0)|~v3_pre_topc(X1,esk4_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0)))|~r2_hidden(esk5_0,X1)), inference(rw,[status(thm)],[c_0_18, c_0_19])).
% 0.14/0.39  cnf(c_0_26, plain, (~r2_hidden(X1,k1_xboole_0)), inference(spm,[status(thm)],[c_0_20, c_0_21])).
% 0.14/0.39  fof(c_0_27, plain, ![X25]:(~v2_pre_topc(X25)|~l1_pre_topc(X25)|v4_pre_topc(k2_struct_0(X25),X25)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc4_pre_topc])])).
% 0.14/0.39  fof(c_0_28, plain, ![X10]:m1_subset_1(k2_subset_1(X10),k1_zfmisc_1(X10)), inference(variable_rename,[status(thm)],[dt_k2_subset_1])).
% 0.14/0.39  fof(c_0_29, plain, ![X9]:k2_subset_1(X9)=X9, inference(variable_rename,[status(thm)],[d4_subset_1])).
% 0.14/0.39  cnf(c_0_30, plain, (v2_struct_0(X1)|~l1_struct_0(X1)|~v1_xboole_0(u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.14/0.39  cnf(c_0_31, negated_conjecture, (v1_xboole_0(u1_struct_0(esk4_0))|r2_hidden(esk5_0,u1_struct_0(esk4_0))), inference(spm,[status(thm)],[c_0_23, c_0_24])).
% 0.14/0.39  cnf(c_0_32, negated_conjecture, (~v2_struct_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.39  fof(c_0_33, plain, ![X23]:(~l1_pre_topc(X23)|l1_struct_0(X23)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_pre_topc])])).
% 0.14/0.39  cnf(c_0_34, negated_conjecture, (~v4_pre_topc(X1,esk4_0)|~v3_pre_topc(X1,esk4_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0)))|~r2_hidden(esk5_0,X1)), inference(sr,[status(thm)],[c_0_25, c_0_26])).
% 0.14/0.39  cnf(c_0_35, plain, (v4_pre_topc(k2_struct_0(X1),X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.14/0.39  cnf(c_0_36, negated_conjecture, (v2_pre_topc(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.39  cnf(c_0_37, negated_conjecture, (l1_pre_topc(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.14/0.39  fof(c_0_38, plain, ![X20]:(~l1_struct_0(X20)|k2_struct_0(X20)=u1_struct_0(X20)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).
% 0.14/0.39  cnf(c_0_39, plain, (m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.14/0.39  cnf(c_0_40, plain, (k2_subset_1(X1)=X1), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.14/0.39  cnf(c_0_41, negated_conjecture, (r2_hidden(esk5_0,u1_struct_0(esk4_0))|~l1_struct_0(esk4_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_31]), c_0_32])).
% 0.14/0.39  cnf(c_0_42, plain, (l1_struct_0(X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.14/0.39  fof(c_0_43, plain, ![X13, X14, X15, X16]:((((r2_hidden(u1_struct_0(X13),u1_pre_topc(X13))|~v2_pre_topc(X13)|~l1_pre_topc(X13))&(~m1_subset_1(X14,k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X13))))|(~r1_tarski(X14,u1_pre_topc(X13))|r2_hidden(k5_setfam_1(u1_struct_0(X13),X14),u1_pre_topc(X13)))|~v2_pre_topc(X13)|~l1_pre_topc(X13)))&(~m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X13)))|(~m1_subset_1(X16,k1_zfmisc_1(u1_struct_0(X13)))|(~r2_hidden(X15,u1_pre_topc(X13))|~r2_hidden(X16,u1_pre_topc(X13))|r2_hidden(k9_subset_1(u1_struct_0(X13),X15,X16),u1_pre_topc(X13))))|~v2_pre_topc(X13)|~l1_pre_topc(X13)))&(((m1_subset_1(esk2_1(X13),k1_zfmisc_1(u1_struct_0(X13)))|(m1_subset_1(esk1_1(X13),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X13))))|~r2_hidden(u1_struct_0(X13),u1_pre_topc(X13)))|v2_pre_topc(X13)|~l1_pre_topc(X13))&((m1_subset_1(esk3_1(X13),k1_zfmisc_1(u1_struct_0(X13)))|(m1_subset_1(esk1_1(X13),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X13))))|~r2_hidden(u1_struct_0(X13),u1_pre_topc(X13)))|v2_pre_topc(X13)|~l1_pre_topc(X13))&(((r2_hidden(esk2_1(X13),u1_pre_topc(X13))|(m1_subset_1(esk1_1(X13),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X13))))|~r2_hidden(u1_struct_0(X13),u1_pre_topc(X13)))|v2_pre_topc(X13)|~l1_pre_topc(X13))&(r2_hidden(esk3_1(X13),u1_pre_topc(X13))|(m1_subset_1(esk1_1(X13),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X13))))|~r2_hidden(u1_struct_0(X13),u1_pre_topc(X13)))|v2_pre_topc(X13)|~l1_pre_topc(X13)))&(~r2_hidden(k9_subset_1(u1_struct_0(X13),esk2_1(X13),esk3_1(X13)),u1_pre_topc(X13))|(m1_subset_1(esk1_1(X13),k1_zfmisc_1(k1_zfmisc_1(u1_struct_0(X13))))|~r2_hidden(u1_struct_0(X13),u1_pre_topc(X13)))|v2_pre_topc(X13)|~l1_pre_topc(X13)))))&(((m1_subset_1(esk2_1(X13),k1_zfmisc_1(u1_struct_0(X13)))|(r1_tarski(esk1_1(X13),u1_pre_topc(X13))|~r2_hidden(u1_struct_0(X13),u1_pre_topc(X13)))|v2_pre_topc(X13)|~l1_pre_topc(X13))&((m1_subset_1(esk3_1(X13),k1_zfmisc_1(u1_struct_0(X13)))|(r1_tarski(esk1_1(X13),u1_pre_topc(X13))|~r2_hidden(u1_struct_0(X13),u1_pre_topc(X13)))|v2_pre_topc(X13)|~l1_pre_topc(X13))&(((r2_hidden(esk2_1(X13),u1_pre_topc(X13))|(r1_tarski(esk1_1(X13),u1_pre_topc(X13))|~r2_hidden(u1_struct_0(X13),u1_pre_topc(X13)))|v2_pre_topc(X13)|~l1_pre_topc(X13))&(r2_hidden(esk3_1(X13),u1_pre_topc(X13))|(r1_tarski(esk1_1(X13),u1_pre_topc(X13))|~r2_hidden(u1_struct_0(X13),u1_pre_topc(X13)))|v2_pre_topc(X13)|~l1_pre_topc(X13)))&(~r2_hidden(k9_subset_1(u1_struct_0(X13),esk2_1(X13),esk3_1(X13)),u1_pre_topc(X13))|(r1_tarski(esk1_1(X13),u1_pre_topc(X13))|~r2_hidden(u1_struct_0(X13),u1_pre_topc(X13)))|v2_pre_topc(X13)|~l1_pre_topc(X13)))))&((m1_subset_1(esk2_1(X13),k1_zfmisc_1(u1_struct_0(X13)))|(~r2_hidden(k5_setfam_1(u1_struct_0(X13),esk1_1(X13)),u1_pre_topc(X13))|~r2_hidden(u1_struct_0(X13),u1_pre_topc(X13)))|v2_pre_topc(X13)|~l1_pre_topc(X13))&((m1_subset_1(esk3_1(X13),k1_zfmisc_1(u1_struct_0(X13)))|(~r2_hidden(k5_setfam_1(u1_struct_0(X13),esk1_1(X13)),u1_pre_topc(X13))|~r2_hidden(u1_struct_0(X13),u1_pre_topc(X13)))|v2_pre_topc(X13)|~l1_pre_topc(X13))&(((r2_hidden(esk2_1(X13),u1_pre_topc(X13))|(~r2_hidden(k5_setfam_1(u1_struct_0(X13),esk1_1(X13)),u1_pre_topc(X13))|~r2_hidden(u1_struct_0(X13),u1_pre_topc(X13)))|v2_pre_topc(X13)|~l1_pre_topc(X13))&(r2_hidden(esk3_1(X13),u1_pre_topc(X13))|(~r2_hidden(k5_setfam_1(u1_struct_0(X13),esk1_1(X13)),u1_pre_topc(X13))|~r2_hidden(u1_struct_0(X13),u1_pre_topc(X13)))|v2_pre_topc(X13)|~l1_pre_topc(X13)))&(~r2_hidden(k9_subset_1(u1_struct_0(X13),esk2_1(X13),esk3_1(X13)),u1_pre_topc(X13))|(~r2_hidden(k5_setfam_1(u1_struct_0(X13),esk1_1(X13)),u1_pre_topc(X13))|~r2_hidden(u1_struct_0(X13),u1_pre_topc(X13)))|v2_pre_topc(X13)|~l1_pre_topc(X13)))))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_pre_topc])])])])])).
% 0.14/0.39  cnf(c_0_44, negated_conjecture, (~v3_pre_topc(k2_struct_0(esk4_0),esk4_0)|~m1_subset_1(k2_struct_0(esk4_0),k1_zfmisc_1(u1_struct_0(esk4_0)))|~r2_hidden(esk5_0,k2_struct_0(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_35]), c_0_36]), c_0_37])])).
% 0.14/0.39  cnf(c_0_45, plain, (k2_struct_0(X1)=u1_struct_0(X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_38])).
% 0.14/0.39  cnf(c_0_46, plain, (m1_subset_1(X1,k1_zfmisc_1(X1))), inference(rw,[status(thm)],[c_0_39, c_0_40])).
% 0.14/0.39  cnf(c_0_47, negated_conjecture, (r2_hidden(esk5_0,u1_struct_0(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_41, c_0_42]), c_0_37])])).
% 0.14/0.39  fof(c_0_48, plain, ![X21, X22]:((~v3_pre_topc(X22,X21)|r2_hidden(X22,u1_pre_topc(X21))|~m1_subset_1(X22,k1_zfmisc_1(u1_struct_0(X21)))|~l1_pre_topc(X21))&(~r2_hidden(X22,u1_pre_topc(X21))|v3_pre_topc(X22,X21)|~m1_subset_1(X22,k1_zfmisc_1(u1_struct_0(X21)))|~l1_pre_topc(X21))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d5_pre_topc])])])])).
% 0.14/0.39  cnf(c_0_49, plain, (r2_hidden(u1_struct_0(X1),u1_pre_topc(X1))|~v2_pre_topc(X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.14/0.39  cnf(c_0_50, negated_conjecture, (~v3_pre_topc(u1_struct_0(esk4_0),esk4_0)|~l1_struct_0(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_45]), c_0_46]), c_0_47])])).
% 0.14/0.39  cnf(c_0_51, plain, (v3_pre_topc(X1,X2)|~r2_hidden(X1,u1_pre_topc(X2))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(X2)))|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_48])).
% 0.14/0.39  cnf(c_0_52, negated_conjecture, (r2_hidden(u1_struct_0(esk4_0),u1_pre_topc(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_36]), c_0_37])])).
% 0.14/0.39  cnf(c_0_53, negated_conjecture, (~l1_struct_0(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_50, c_0_51]), c_0_37]), c_0_46]), c_0_52])])).
% 0.14/0.39  cnf(c_0_54, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_42]), c_0_37])]), ['proof']).
% 0.14/0.39  # SZS output end CNFRefutation
% 0.14/0.39  # Proof object total steps             : 55
% 0.14/0.39  # Proof object clause steps            : 30
% 0.14/0.39  # Proof object formula steps           : 25
% 0.14/0.39  # Proof object conjectures             : 19
% 0.14/0.39  # Proof object clause conjectures      : 16
% 0.14/0.39  # Proof object formula conjectures     : 3
% 0.14/0.39  # Proof object initial clauses used    : 17
% 0.14/0.39  # Proof object initial formulas used   : 12
% 0.14/0.39  # Proof object generating inferences   : 9
% 0.14/0.39  # Proof object simplifying inferences  : 21
% 0.14/0.39  # Training examples: 0 positive, 0 negative
% 0.14/0.39  # Parsed axioms                        : 12
% 0.14/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.14/0.39  # Initial clauses                      : 41
% 0.14/0.39  # Removed in clause preprocessing      : 1
% 0.14/0.39  # Initial clauses in saturation        : 40
% 0.14/0.39  # Processed clauses                    : 76
% 0.14/0.39  # ...of these trivial                  : 0
% 0.14/0.39  # ...subsumed                          : 4
% 0.14/0.39  # ...remaining for further processing  : 72
% 0.14/0.39  # Other redundant clauses eliminated   : 2
% 0.14/0.39  # Clauses deleted for lack of memory   : 0
% 0.14/0.39  # Backward-subsumed                    : 0
% 0.14/0.39  # Backward-rewritten                   : 2
% 0.14/0.39  # Generated clauses                    : 17
% 0.14/0.39  # ...of the previous two non-trivial   : 15
% 0.14/0.39  # Contextual simplify-reflections      : 0
% 0.14/0.39  # Paramodulations                      : 15
% 0.14/0.39  # Factorizations                       : 0
% 0.14/0.39  # Equation resolutions                 : 2
% 0.14/0.39  # Propositional unsat checks           : 0
% 0.14/0.39  #    Propositional check models        : 0
% 0.14/0.39  #    Propositional check unsatisfiable : 0
% 0.14/0.39  #    Propositional clauses             : 0
% 0.14/0.39  #    Propositional clauses after purity: 0
% 0.14/0.39  #    Propositional unsat core size     : 0
% 0.14/0.39  #    Propositional preprocessing time  : 0.000
% 0.14/0.39  #    Propositional encoding time       : 0.000
% 0.14/0.39  #    Propositional solver time         : 0.000
% 0.14/0.39  #    Success case prop preproc time    : 0.000
% 0.14/0.39  #    Success case prop encoding time   : 0.000
% 0.14/0.39  #    Success case prop solver time     : 0.000
% 0.14/0.39  # Current number of processed clauses  : 28
% 0.14/0.39  #    Positive orientable unit clauses  : 10
% 0.14/0.39  #    Positive unorientable unit clauses: 0
% 0.14/0.39  #    Negative unit clauses             : 4
% 0.14/0.39  #    Non-unit-clauses                  : 14
% 0.14/0.39  # Current number of unprocessed clauses: 19
% 0.14/0.39  # ...number of literals in the above   : 94
% 0.14/0.39  # Current number of archived formulas  : 0
% 0.14/0.39  # Current number of archived clauses   : 43
% 0.14/0.39  # Clause-clause subsumption calls (NU) : 610
% 0.14/0.39  # Rec. Clause-clause subsumption calls : 85
% 0.14/0.39  # Non-unit clause-clause subsumptions  : 0
% 0.14/0.39  # Unit Clause-clause subsumption calls : 8
% 0.14/0.39  # Rewrite failures with RHS unbound    : 0
% 0.14/0.39  # BW rewrite match attempts            : 2
% 0.14/0.39  # BW rewrite match successes           : 1
% 0.14/0.39  # Condensation attempts                : 0
% 0.14/0.39  # Condensation successes               : 0
% 0.14/0.39  # Termbank termtop insertions          : 3749
% 0.14/0.39  
% 0.14/0.39  # -------------------------------------------------
% 0.14/0.39  # User time                : 0.030 s
% 0.14/0.39  # System time              : 0.005 s
% 0.14/0.39  # Total time               : 0.035 s
% 0.14/0.39  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
