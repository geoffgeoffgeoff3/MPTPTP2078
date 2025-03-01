%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:16:59 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   59 ( 411 expanded)
%              Number of clauses        :   40 ( 162 expanded)
%              Number of leaves         :    9 ( 102 expanded)
%              Depth                    :   18
%              Number of atoms          :  237 (2647 expanded)
%              Number of equality atoms :   13 (  34 expanded)
%              Maximal formula depth    :   21 (   4 average)
%              Maximal clause size      :   61 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t23_tmap_1,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & m1_pre_topc(X2,X1) )
         => ! [X3] :
              ( ( ~ v2_struct_0(X3)
                & m1_pre_topc(X3,X1) )
             => ! [X4] :
                  ( ( ~ v2_struct_0(X4)
                    & m1_pre_topc(X4,X1) )
                 => ( m1_pre_topc(X2,X3)
                   => ( ( r1_tsep_1(X2,X4)
                        & r1_tsep_1(X4,X2) )
                      | ( ~ r1_tsep_1(X3,X4)
                        & ~ r1_tsep_1(X4,X3) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t23_tmap_1)).

fof(symmetry_r1_tsep_1,axiom,(
    ! [X1,X2] :
      ( ( l1_struct_0(X1)
        & l1_struct_0(X2) )
     => ( r1_tsep_1(X1,X2)
       => r1_tsep_1(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',symmetry_r1_tsep_1)).

fof(dt_m1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => l1_pre_topc(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_m1_pre_topc)).

fof(d9_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( l1_pre_topc(X2)
         => ( m1_pre_topc(X2,X1)
          <=> ( r1_tarski(k2_struct_0(X2),k2_struct_0(X1))
              & ! [X3] :
                  ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))
                 => ( r2_hidden(X3,u1_pre_topc(X2))
                  <=> ? [X4] :
                        ( m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
                        & r2_hidden(X4,u1_pre_topc(X1))
                        & X3 = k9_subset_1(u1_struct_0(X2),X4,k2_struct_0(X2)) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d9_pre_topc)).

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

fof(d3_tsep_1,axiom,(
    ! [X1] :
      ( l1_struct_0(X1)
     => ! [X2] :
          ( l1_struct_0(X2)
         => ( r1_tsep_1(X1,X2)
          <=> r1_xboole_0(u1_struct_0(X1),u1_struct_0(X2)) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tsep_1)).

fof(t12_xboole_1,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
     => k2_xboole_0(X1,X2) = X2 ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t12_xboole_1)).

fof(t70_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ~ ( ~ r1_xboole_0(X1,k2_xboole_0(X2,X3))
          & r1_xboole_0(X1,X2)
          & r1_xboole_0(X1,X3) )
      & ~ ( ~ ( r1_xboole_0(X1,X2)
              & r1_xboole_0(X1,X3) )
          & r1_xboole_0(X1,k2_xboole_0(X2,X3)) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t70_xboole_1)).

fof(c_0_9,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( ( ~ v2_struct_0(X2)
              & m1_pre_topc(X2,X1) )
           => ! [X3] :
                ( ( ~ v2_struct_0(X3)
                  & m1_pre_topc(X3,X1) )
               => ! [X4] :
                    ( ( ~ v2_struct_0(X4)
                      & m1_pre_topc(X4,X1) )
                   => ( m1_pre_topc(X2,X3)
                     => ( ( r1_tsep_1(X2,X4)
                          & r1_tsep_1(X4,X2) )
                        | ( ~ r1_tsep_1(X3,X4)
                          & ~ r1_tsep_1(X4,X3) ) ) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t23_tmap_1])).

fof(c_0_10,plain,(
    ! [X24,X25] :
      ( ~ l1_struct_0(X24)
      | ~ l1_struct_0(X25)
      | ~ r1_tsep_1(X24,X25)
      | r1_tsep_1(X25,X24) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_tsep_1])])).

fof(c_0_11,negated_conjecture,
    ( ~ v2_struct_0(esk4_0)
    & v2_pre_topc(esk4_0)
    & l1_pre_topc(esk4_0)
    & ~ v2_struct_0(esk5_0)
    & m1_pre_topc(esk5_0,esk4_0)
    & ~ v2_struct_0(esk6_0)
    & m1_pre_topc(esk6_0,esk4_0)
    & ~ v2_struct_0(esk7_0)
    & m1_pre_topc(esk7_0,esk4_0)
    & m1_pre_topc(esk5_0,esk6_0)
    & ( ~ r1_tsep_1(esk5_0,esk7_0)
      | ~ r1_tsep_1(esk7_0,esk5_0) )
    & ( r1_tsep_1(esk6_0,esk7_0)
      | r1_tsep_1(esk7_0,esk6_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_9])])])])).

fof(c_0_12,plain,(
    ! [X20,X21] :
      ( ~ l1_pre_topc(X20)
      | ~ m1_pre_topc(X21,X20)
      | l1_pre_topc(X21) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).

fof(c_0_13,plain,(
    ! [X11,X12,X13,X15,X17] :
      ( ( r1_tarski(k2_struct_0(X12),k2_struct_0(X11))
        | ~ m1_pre_topc(X12,X11)
        | ~ l1_pre_topc(X12)
        | ~ l1_pre_topc(X11) )
      & ( m1_subset_1(esk1_3(X11,X12,X13),k1_zfmisc_1(u1_struct_0(X11)))
        | ~ r2_hidden(X13,u1_pre_topc(X12))
        | ~ m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))
        | ~ m1_pre_topc(X12,X11)
        | ~ l1_pre_topc(X12)
        | ~ l1_pre_topc(X11) )
      & ( r2_hidden(esk1_3(X11,X12,X13),u1_pre_topc(X11))
        | ~ r2_hidden(X13,u1_pre_topc(X12))
        | ~ m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))
        | ~ m1_pre_topc(X12,X11)
        | ~ l1_pre_topc(X12)
        | ~ l1_pre_topc(X11) )
      & ( X13 = k9_subset_1(u1_struct_0(X12),esk1_3(X11,X12,X13),k2_struct_0(X12))
        | ~ r2_hidden(X13,u1_pre_topc(X12))
        | ~ m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))
        | ~ m1_pre_topc(X12,X11)
        | ~ l1_pre_topc(X12)
        | ~ l1_pre_topc(X11) )
      & ( ~ m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X11)))
        | ~ r2_hidden(X15,u1_pre_topc(X11))
        | X13 != k9_subset_1(u1_struct_0(X12),X15,k2_struct_0(X12))
        | r2_hidden(X13,u1_pre_topc(X12))
        | ~ m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))
        | ~ m1_pre_topc(X12,X11)
        | ~ l1_pre_topc(X12)
        | ~ l1_pre_topc(X11) )
      & ( m1_subset_1(esk2_2(X11,X12),k1_zfmisc_1(u1_struct_0(X12)))
        | ~ r1_tarski(k2_struct_0(X12),k2_struct_0(X11))
        | m1_pre_topc(X12,X11)
        | ~ l1_pre_topc(X12)
        | ~ l1_pre_topc(X11) )
      & ( ~ r2_hidden(esk2_2(X11,X12),u1_pre_topc(X12))
        | ~ m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X11)))
        | ~ r2_hidden(X17,u1_pre_topc(X11))
        | esk2_2(X11,X12) != k9_subset_1(u1_struct_0(X12),X17,k2_struct_0(X12))
        | ~ r1_tarski(k2_struct_0(X12),k2_struct_0(X11))
        | m1_pre_topc(X12,X11)
        | ~ l1_pre_topc(X12)
        | ~ l1_pre_topc(X11) )
      & ( m1_subset_1(esk3_2(X11,X12),k1_zfmisc_1(u1_struct_0(X11)))
        | r2_hidden(esk2_2(X11,X12),u1_pre_topc(X12))
        | ~ r1_tarski(k2_struct_0(X12),k2_struct_0(X11))
        | m1_pre_topc(X12,X11)
        | ~ l1_pre_topc(X12)
        | ~ l1_pre_topc(X11) )
      & ( r2_hidden(esk3_2(X11,X12),u1_pre_topc(X11))
        | r2_hidden(esk2_2(X11,X12),u1_pre_topc(X12))
        | ~ r1_tarski(k2_struct_0(X12),k2_struct_0(X11))
        | m1_pre_topc(X12,X11)
        | ~ l1_pre_topc(X12)
        | ~ l1_pre_topc(X11) )
      & ( esk2_2(X11,X12) = k9_subset_1(u1_struct_0(X12),esk3_2(X11,X12),k2_struct_0(X12))
        | r2_hidden(esk2_2(X11,X12),u1_pre_topc(X12))
        | ~ r1_tarski(k2_struct_0(X12),k2_struct_0(X11))
        | m1_pre_topc(X12,X11)
        | ~ l1_pre_topc(X12)
        | ~ l1_pre_topc(X11) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_pre_topc])])])])])).

cnf(c_0_14,plain,
    ( r1_tsep_1(X2,X1)
    | ~ l1_struct_0(X1)
    | ~ l1_struct_0(X2)
    | ~ r1_tsep_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_15,negated_conjecture,
    ( r1_tsep_1(esk6_0,esk7_0)
    | r1_tsep_1(esk7_0,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_16,plain,(
    ! [X19] :
      ( ~ l1_pre_topc(X19)
      | l1_struct_0(X19) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_pre_topc])])).

cnf(c_0_17,plain,
    ( l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_12])).

cnf(c_0_18,negated_conjecture,
    ( m1_pre_topc(esk7_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_19,negated_conjecture,
    ( l1_pre_topc(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_20,plain,
    ( r1_tarski(k2_struct_0(X1),k2_struct_0(X2))
    | ~ m1_pre_topc(X1,X2)
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_21,negated_conjecture,
    ( m1_pre_topc(esk6_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

fof(c_0_22,plain,(
    ! [X10] :
      ( ~ l1_struct_0(X10)
      | k2_struct_0(X10) = u1_struct_0(X10) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).

cnf(c_0_23,negated_conjecture,
    ( r1_tsep_1(esk7_0,esk6_0)
    | ~ l1_struct_0(esk7_0)
    | ~ l1_struct_0(esk6_0) ),
    inference(spm,[status(thm)],[c_0_14,c_0_15])).

cnf(c_0_24,plain,
    ( l1_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_25,negated_conjecture,
    ( l1_pre_topc(esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_18]),c_0_19])])).

cnf(c_0_26,plain,
    ( r1_tarski(k2_struct_0(X1),k2_struct_0(X2))
    | ~ m1_pre_topc(X1,X2)
    | ~ l1_pre_topc(X2) ),
    inference(csr,[status(thm)],[c_0_20,c_0_17])).

cnf(c_0_27,negated_conjecture,
    ( m1_pre_topc(esk5_0,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_28,negated_conjecture,
    ( l1_pre_topc(esk6_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_21]),c_0_19])])).

cnf(c_0_29,plain,
    ( k2_struct_0(X1) = u1_struct_0(X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_30,plain,(
    ! [X22,X23] :
      ( ( ~ r1_tsep_1(X22,X23)
        | r1_xboole_0(u1_struct_0(X22),u1_struct_0(X23))
        | ~ l1_struct_0(X23)
        | ~ l1_struct_0(X22) )
      & ( ~ r1_xboole_0(u1_struct_0(X22),u1_struct_0(X23))
        | r1_tsep_1(X22,X23)
        | ~ l1_struct_0(X23)
        | ~ l1_struct_0(X22) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tsep_1])])])])).

cnf(c_0_31,negated_conjecture,
    ( r1_tsep_1(esk7_0,esk6_0)
    | ~ l1_struct_0(esk6_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_24]),c_0_25])])).

fof(c_0_32,plain,(
    ! [X5,X6] :
      ( ~ r1_tarski(X5,X6)
      | k2_xboole_0(X5,X6) = X6 ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).

cnf(c_0_33,negated_conjecture,
    ( r1_tarski(k2_struct_0(esk5_0),k2_struct_0(esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_28])])).

cnf(c_0_34,plain,
    ( k2_struct_0(X1) = u1_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(spm,[status(thm)],[c_0_29,c_0_24])).

cnf(c_0_35,plain,
    ( r1_xboole_0(u1_struct_0(X1),u1_struct_0(X2))
    | ~ r1_tsep_1(X1,X2)
    | ~ l1_struct_0(X2)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_36,negated_conjecture,
    ( r1_tsep_1(esk7_0,esk6_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_24]),c_0_28])])).

fof(c_0_37,plain,(
    ! [X7,X8,X9] :
      ( ( r1_xboole_0(X7,k2_xboole_0(X8,X9))
        | ~ r1_xboole_0(X7,X8)
        | ~ r1_xboole_0(X7,X9) )
      & ( r1_xboole_0(X7,X8)
        | ~ r1_xboole_0(X7,k2_xboole_0(X8,X9)) )
      & ( r1_xboole_0(X7,X9)
        | ~ r1_xboole_0(X7,k2_xboole_0(X8,X9)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t70_xboole_1])])])])).

cnf(c_0_38,plain,
    ( k2_xboole_0(X1,X2) = X2
    | ~ r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_32])).

cnf(c_0_39,negated_conjecture,
    ( r1_tarski(k2_struct_0(esk5_0),u1_struct_0(esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_34]),c_0_28])])).

cnf(c_0_40,negated_conjecture,
    ( r1_xboole_0(u1_struct_0(esk7_0),u1_struct_0(esk6_0))
    | ~ l1_struct_0(esk6_0)
    | ~ l1_struct_0(esk7_0) ),
    inference(spm,[status(thm)],[c_0_35,c_0_36])).

cnf(c_0_41,plain,
    ( r1_xboole_0(X1,X2)
    | ~ r1_xboole_0(X1,k2_xboole_0(X2,X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_42,negated_conjecture,
    ( k2_xboole_0(k2_struct_0(esk5_0),u1_struct_0(esk6_0)) = u1_struct_0(esk6_0) ),
    inference(spm,[status(thm)],[c_0_38,c_0_39])).

cnf(c_0_43,negated_conjecture,
    ( r1_xboole_0(u1_struct_0(esk7_0),u1_struct_0(esk6_0))
    | ~ l1_struct_0(esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40,c_0_24]),c_0_28])])).

cnf(c_0_44,negated_conjecture,
    ( r1_xboole_0(X1,k2_struct_0(esk5_0))
    | ~ r1_xboole_0(X1,u1_struct_0(esk6_0)) ),
    inference(spm,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_45,negated_conjecture,
    ( r1_xboole_0(u1_struct_0(esk7_0),u1_struct_0(esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_24]),c_0_25])])).

cnf(c_0_46,negated_conjecture,
    ( m1_pre_topc(esk5_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_47,negated_conjecture,
    ( r1_xboole_0(u1_struct_0(esk7_0),k2_struct_0(esk5_0)) ),
    inference(spm,[status(thm)],[c_0_44,c_0_45])).

cnf(c_0_48,negated_conjecture,
    ( l1_pre_topc(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_46]),c_0_19])])).

cnf(c_0_49,plain,
    ( r1_tsep_1(X1,X2)
    | ~ r1_xboole_0(u1_struct_0(X1),u1_struct_0(X2))
    | ~ l1_struct_0(X2)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_50,negated_conjecture,
    ( r1_xboole_0(u1_struct_0(esk7_0),u1_struct_0(esk5_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_34]),c_0_48])])).

cnf(c_0_51,negated_conjecture,
    ( r1_tsep_1(esk7_0,esk5_0)
    | ~ l1_struct_0(esk5_0)
    | ~ l1_struct_0(esk7_0) ),
    inference(spm,[status(thm)],[c_0_49,c_0_50])).

cnf(c_0_52,negated_conjecture,
    ( r1_tsep_1(esk7_0,esk5_0)
    | ~ l1_struct_0(esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_24]),c_0_48])])).

cnf(c_0_53,negated_conjecture,
    ( ~ r1_tsep_1(esk5_0,esk7_0)
    | ~ r1_tsep_1(esk7_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_54,negated_conjecture,
    ( r1_tsep_1(esk7_0,esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_24]),c_0_25])])).

cnf(c_0_55,negated_conjecture,
    ( ~ r1_tsep_1(esk5_0,esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_53,c_0_54])])).

cnf(c_0_56,negated_conjecture,
    ( ~ l1_struct_0(esk5_0)
    | ~ l1_struct_0(esk7_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_14,c_0_54]),c_0_55])).

cnf(c_0_57,negated_conjecture,
    ( ~ l1_struct_0(esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_24]),c_0_48])])).

cnf(c_0_58,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57,c_0_24]),c_0_25])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n004.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:48:08 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___008_C18_F1_PI_SE_CS_SP_CO_S4S
% 0.13/0.38  # and selection function SelectNewComplexAHPNS.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.028 s
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(t23_tmap_1, conjecture, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((~(v2_struct_0(X2))&m1_pre_topc(X2,X1))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X1))=>(m1_pre_topc(X2,X3)=>((r1_tsep_1(X2,X4)&r1_tsep_1(X4,X2))|(~(r1_tsep_1(X3,X4))&~(r1_tsep_1(X4,X3))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t23_tmap_1)).
% 0.13/0.38  fof(symmetry_r1_tsep_1, axiom, ![X1, X2]:((l1_struct_0(X1)&l1_struct_0(X2))=>(r1_tsep_1(X1,X2)=>r1_tsep_1(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', symmetry_r1_tsep_1)).
% 0.13/0.38  fof(dt_m1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>l1_pre_topc(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_m1_pre_topc)).
% 0.13/0.38  fof(d9_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(l1_pre_topc(X2)=>(m1_pre_topc(X2,X1)<=>(r1_tarski(k2_struct_0(X2),k2_struct_0(X1))&![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))=>(r2_hidden(X3,u1_pre_topc(X2))<=>?[X4]:((m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))&r2_hidden(X4,u1_pre_topc(X1)))&X3=k9_subset_1(u1_struct_0(X2),X4,k2_struct_0(X2))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d9_pre_topc)).
% 0.13/0.38  fof(dt_l1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>l1_struct_0(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_l1_pre_topc)).
% 0.13/0.38  fof(d3_struct_0, axiom, ![X1]:(l1_struct_0(X1)=>k2_struct_0(X1)=u1_struct_0(X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_struct_0)).
% 0.13/0.38  fof(d3_tsep_1, axiom, ![X1]:(l1_struct_0(X1)=>![X2]:(l1_struct_0(X2)=>(r1_tsep_1(X1,X2)<=>r1_xboole_0(u1_struct_0(X1),u1_struct_0(X2))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_tsep_1)).
% 0.13/0.38  fof(t12_xboole_1, axiom, ![X1, X2]:(r1_tarski(X1,X2)=>k2_xboole_0(X1,X2)=X2), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t12_xboole_1)).
% 0.13/0.38  fof(t70_xboole_1, axiom, ![X1, X2, X3]:(~(((~(r1_xboole_0(X1,k2_xboole_0(X2,X3)))&r1_xboole_0(X1,X2))&r1_xboole_0(X1,X3)))&~((~((r1_xboole_0(X1,X2)&r1_xboole_0(X1,X3)))&r1_xboole_0(X1,k2_xboole_0(X2,X3))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t70_xboole_1)).
% 0.13/0.38  fof(c_0_9, negated_conjecture, ~(![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((~(v2_struct_0(X2))&m1_pre_topc(X2,X1))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X1))=>(m1_pre_topc(X2,X3)=>((r1_tsep_1(X2,X4)&r1_tsep_1(X4,X2))|(~(r1_tsep_1(X3,X4))&~(r1_tsep_1(X4,X3)))))))))), inference(assume_negation,[status(cth)],[t23_tmap_1])).
% 0.13/0.38  fof(c_0_10, plain, ![X24, X25]:(~l1_struct_0(X24)|~l1_struct_0(X25)|(~r1_tsep_1(X24,X25)|r1_tsep_1(X25,X24))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[symmetry_r1_tsep_1])])).
% 0.13/0.38  fof(c_0_11, negated_conjecture, (((~v2_struct_0(esk4_0)&v2_pre_topc(esk4_0))&l1_pre_topc(esk4_0))&((~v2_struct_0(esk5_0)&m1_pre_topc(esk5_0,esk4_0))&((~v2_struct_0(esk6_0)&m1_pre_topc(esk6_0,esk4_0))&((~v2_struct_0(esk7_0)&m1_pre_topc(esk7_0,esk4_0))&(m1_pre_topc(esk5_0,esk6_0)&((~r1_tsep_1(esk5_0,esk7_0)|~r1_tsep_1(esk7_0,esk5_0))&(r1_tsep_1(esk6_0,esk7_0)|r1_tsep_1(esk7_0,esk6_0)))))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_9])])])])).
% 0.13/0.38  fof(c_0_12, plain, ![X20, X21]:(~l1_pre_topc(X20)|(~m1_pre_topc(X21,X20)|l1_pre_topc(X21))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).
% 0.13/0.38  fof(c_0_13, plain, ![X11, X12, X13, X15, X17]:(((r1_tarski(k2_struct_0(X12),k2_struct_0(X11))|~m1_pre_topc(X12,X11)|~l1_pre_topc(X12)|~l1_pre_topc(X11))&((((m1_subset_1(esk1_3(X11,X12,X13),k1_zfmisc_1(u1_struct_0(X11)))|~r2_hidden(X13,u1_pre_topc(X12))|~m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))|~m1_pre_topc(X12,X11)|~l1_pre_topc(X12)|~l1_pre_topc(X11))&(r2_hidden(esk1_3(X11,X12,X13),u1_pre_topc(X11))|~r2_hidden(X13,u1_pre_topc(X12))|~m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))|~m1_pre_topc(X12,X11)|~l1_pre_topc(X12)|~l1_pre_topc(X11)))&(X13=k9_subset_1(u1_struct_0(X12),esk1_3(X11,X12,X13),k2_struct_0(X12))|~r2_hidden(X13,u1_pre_topc(X12))|~m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))|~m1_pre_topc(X12,X11)|~l1_pre_topc(X12)|~l1_pre_topc(X11)))&(~m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X11)))|~r2_hidden(X15,u1_pre_topc(X11))|X13!=k9_subset_1(u1_struct_0(X12),X15,k2_struct_0(X12))|r2_hidden(X13,u1_pre_topc(X12))|~m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X12)))|~m1_pre_topc(X12,X11)|~l1_pre_topc(X12)|~l1_pre_topc(X11))))&((m1_subset_1(esk2_2(X11,X12),k1_zfmisc_1(u1_struct_0(X12)))|~r1_tarski(k2_struct_0(X12),k2_struct_0(X11))|m1_pre_topc(X12,X11)|~l1_pre_topc(X12)|~l1_pre_topc(X11))&((~r2_hidden(esk2_2(X11,X12),u1_pre_topc(X12))|(~m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X11)))|~r2_hidden(X17,u1_pre_topc(X11))|esk2_2(X11,X12)!=k9_subset_1(u1_struct_0(X12),X17,k2_struct_0(X12)))|~r1_tarski(k2_struct_0(X12),k2_struct_0(X11))|m1_pre_topc(X12,X11)|~l1_pre_topc(X12)|~l1_pre_topc(X11))&(((m1_subset_1(esk3_2(X11,X12),k1_zfmisc_1(u1_struct_0(X11)))|r2_hidden(esk2_2(X11,X12),u1_pre_topc(X12))|~r1_tarski(k2_struct_0(X12),k2_struct_0(X11))|m1_pre_topc(X12,X11)|~l1_pre_topc(X12)|~l1_pre_topc(X11))&(r2_hidden(esk3_2(X11,X12),u1_pre_topc(X11))|r2_hidden(esk2_2(X11,X12),u1_pre_topc(X12))|~r1_tarski(k2_struct_0(X12),k2_struct_0(X11))|m1_pre_topc(X12,X11)|~l1_pre_topc(X12)|~l1_pre_topc(X11)))&(esk2_2(X11,X12)=k9_subset_1(u1_struct_0(X12),esk3_2(X11,X12),k2_struct_0(X12))|r2_hidden(esk2_2(X11,X12),u1_pre_topc(X12))|~r1_tarski(k2_struct_0(X12),k2_struct_0(X11))|m1_pre_topc(X12,X11)|~l1_pre_topc(X12)|~l1_pre_topc(X11)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d9_pre_topc])])])])])).
% 0.13/0.38  cnf(c_0_14, plain, (r1_tsep_1(X2,X1)|~l1_struct_0(X1)|~l1_struct_0(X2)|~r1_tsep_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_15, negated_conjecture, (r1_tsep_1(esk6_0,esk7_0)|r1_tsep_1(esk7_0,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  fof(c_0_16, plain, ![X19]:(~l1_pre_topc(X19)|l1_struct_0(X19)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_pre_topc])])).
% 0.13/0.38  cnf(c_0_17, plain, (l1_pre_topc(X2)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_12])).
% 0.13/0.38  cnf(c_0_18, negated_conjecture, (m1_pre_topc(esk7_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_19, negated_conjecture, (l1_pre_topc(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_20, plain, (r1_tarski(k2_struct_0(X1),k2_struct_0(X2))|~m1_pre_topc(X1,X2)|~l1_pre_topc(X1)|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.38  cnf(c_0_21, negated_conjecture, (m1_pre_topc(esk6_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  fof(c_0_22, plain, ![X10]:(~l1_struct_0(X10)|k2_struct_0(X10)=u1_struct_0(X10)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).
% 0.13/0.38  cnf(c_0_23, negated_conjecture, (r1_tsep_1(esk7_0,esk6_0)|~l1_struct_0(esk7_0)|~l1_struct_0(esk6_0)), inference(spm,[status(thm)],[c_0_14, c_0_15])).
% 0.13/0.38  cnf(c_0_24, plain, (l1_struct_0(X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.38  cnf(c_0_25, negated_conjecture, (l1_pre_topc(esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_18]), c_0_19])])).
% 0.13/0.38  cnf(c_0_26, plain, (r1_tarski(k2_struct_0(X1),k2_struct_0(X2))|~m1_pre_topc(X1,X2)|~l1_pre_topc(X2)), inference(csr,[status(thm)],[c_0_20, c_0_17])).
% 0.13/0.38  cnf(c_0_27, negated_conjecture, (m1_pre_topc(esk5_0,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_28, negated_conjecture, (l1_pre_topc(esk6_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_21]), c_0_19])])).
% 0.13/0.38  cnf(c_0_29, plain, (k2_struct_0(X1)=u1_struct_0(X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.13/0.38  fof(c_0_30, plain, ![X22, X23]:((~r1_tsep_1(X22,X23)|r1_xboole_0(u1_struct_0(X22),u1_struct_0(X23))|~l1_struct_0(X23)|~l1_struct_0(X22))&(~r1_xboole_0(u1_struct_0(X22),u1_struct_0(X23))|r1_tsep_1(X22,X23)|~l1_struct_0(X23)|~l1_struct_0(X22))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tsep_1])])])])).
% 0.13/0.38  cnf(c_0_31, negated_conjecture, (r1_tsep_1(esk7_0,esk6_0)|~l1_struct_0(esk6_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_24]), c_0_25])])).
% 0.13/0.38  fof(c_0_32, plain, ![X5, X6]:(~r1_tarski(X5,X6)|k2_xboole_0(X5,X6)=X6), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t12_xboole_1])])).
% 0.13/0.38  cnf(c_0_33, negated_conjecture, (r1_tarski(k2_struct_0(esk5_0),k2_struct_0(esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_28])])).
% 0.13/0.38  cnf(c_0_34, plain, (k2_struct_0(X1)=u1_struct_0(X1)|~l1_pre_topc(X1)), inference(spm,[status(thm)],[c_0_29, c_0_24])).
% 0.13/0.38  cnf(c_0_35, plain, (r1_xboole_0(u1_struct_0(X1),u1_struct_0(X2))|~r1_tsep_1(X1,X2)|~l1_struct_0(X2)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.13/0.38  cnf(c_0_36, negated_conjecture, (r1_tsep_1(esk7_0,esk6_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_24]), c_0_28])])).
% 0.13/0.38  fof(c_0_37, plain, ![X7, X8, X9]:((r1_xboole_0(X7,k2_xboole_0(X8,X9))|~r1_xboole_0(X7,X8)|~r1_xboole_0(X7,X9))&((r1_xboole_0(X7,X8)|~r1_xboole_0(X7,k2_xboole_0(X8,X9)))&(r1_xboole_0(X7,X9)|~r1_xboole_0(X7,k2_xboole_0(X8,X9))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t70_xboole_1])])])])).
% 0.13/0.38  cnf(c_0_38, plain, (k2_xboole_0(X1,X2)=X2|~r1_tarski(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_32])).
% 0.13/0.38  cnf(c_0_39, negated_conjecture, (r1_tarski(k2_struct_0(esk5_0),u1_struct_0(esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_34]), c_0_28])])).
% 0.13/0.38  cnf(c_0_40, negated_conjecture, (r1_xboole_0(u1_struct_0(esk7_0),u1_struct_0(esk6_0))|~l1_struct_0(esk6_0)|~l1_struct_0(esk7_0)), inference(spm,[status(thm)],[c_0_35, c_0_36])).
% 0.13/0.38  cnf(c_0_41, plain, (r1_xboole_0(X1,X2)|~r1_xboole_0(X1,k2_xboole_0(X2,X3))), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.13/0.38  cnf(c_0_42, negated_conjecture, (k2_xboole_0(k2_struct_0(esk5_0),u1_struct_0(esk6_0))=u1_struct_0(esk6_0)), inference(spm,[status(thm)],[c_0_38, c_0_39])).
% 0.13/0.38  cnf(c_0_43, negated_conjecture, (r1_xboole_0(u1_struct_0(esk7_0),u1_struct_0(esk6_0))|~l1_struct_0(esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_40, c_0_24]), c_0_28])])).
% 0.13/0.38  cnf(c_0_44, negated_conjecture, (r1_xboole_0(X1,k2_struct_0(esk5_0))|~r1_xboole_0(X1,u1_struct_0(esk6_0))), inference(spm,[status(thm)],[c_0_41, c_0_42])).
% 0.13/0.38  cnf(c_0_45, negated_conjecture, (r1_xboole_0(u1_struct_0(esk7_0),u1_struct_0(esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_24]), c_0_25])])).
% 0.13/0.38  cnf(c_0_46, negated_conjecture, (m1_pre_topc(esk5_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_47, negated_conjecture, (r1_xboole_0(u1_struct_0(esk7_0),k2_struct_0(esk5_0))), inference(spm,[status(thm)],[c_0_44, c_0_45])).
% 0.13/0.38  cnf(c_0_48, negated_conjecture, (l1_pre_topc(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_46]), c_0_19])])).
% 0.13/0.38  cnf(c_0_49, plain, (r1_tsep_1(X1,X2)|~r1_xboole_0(u1_struct_0(X1),u1_struct_0(X2))|~l1_struct_0(X2)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.13/0.38  cnf(c_0_50, negated_conjecture, (r1_xboole_0(u1_struct_0(esk7_0),u1_struct_0(esk5_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_34]), c_0_48])])).
% 0.13/0.38  cnf(c_0_51, negated_conjecture, (r1_tsep_1(esk7_0,esk5_0)|~l1_struct_0(esk5_0)|~l1_struct_0(esk7_0)), inference(spm,[status(thm)],[c_0_49, c_0_50])).
% 0.13/0.38  cnf(c_0_52, negated_conjecture, (r1_tsep_1(esk7_0,esk5_0)|~l1_struct_0(esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_24]), c_0_48])])).
% 0.13/0.38  cnf(c_0_53, negated_conjecture, (~r1_tsep_1(esk5_0,esk7_0)|~r1_tsep_1(esk7_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.13/0.38  cnf(c_0_54, negated_conjecture, (r1_tsep_1(esk7_0,esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_24]), c_0_25])])).
% 0.13/0.38  cnf(c_0_55, negated_conjecture, (~r1_tsep_1(esk5_0,esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_53, c_0_54])])).
% 0.13/0.38  cnf(c_0_56, negated_conjecture, (~l1_struct_0(esk5_0)|~l1_struct_0(esk7_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_14, c_0_54]), c_0_55])).
% 0.13/0.38  cnf(c_0_57, negated_conjecture, (~l1_struct_0(esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_24]), c_0_48])])).
% 0.13/0.38  cnf(c_0_58, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_57, c_0_24]), c_0_25])]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 59
% 0.13/0.38  # Proof object clause steps            : 40
% 0.13/0.38  # Proof object formula steps           : 19
% 0.13/0.38  # Proof object conjectures             : 32
% 0.13/0.38  # Proof object clause conjectures      : 29
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 16
% 0.13/0.38  # Proof object initial formulas used   : 9
% 0.13/0.38  # Proof object generating inferences   : 22
% 0.13/0.38  # Proof object simplifying inferences  : 32
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 9
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 32
% 0.13/0.38  # Removed in clause preprocessing      : 0
% 0.13/0.38  # Initial clauses in saturation        : 32
% 0.13/0.38  # Processed clauses                    : 119
% 0.13/0.38  # ...of these trivial                  : 21
% 0.13/0.38  # ...subsumed                          : 0
% 0.13/0.38  # ...remaining for further processing  : 98
% 0.13/0.38  # Other redundant clauses eliminated   : 1
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 5
% 0.13/0.38  # Backward-rewritten                   : 7
% 0.13/0.38  # Generated clauses                    : 167
% 0.13/0.38  # ...of the previous two non-trivial   : 115
% 0.13/0.38  # Contextual simplify-reflections      : 5
% 0.13/0.38  # Paramodulations                      : 166
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 1
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
% 0.13/0.38  # Current number of processed clauses  : 85
% 0.13/0.38  #    Positive orientable unit clauses  : 48
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 6
% 0.13/0.38  #    Non-unit-clauses                  : 31
% 0.13/0.38  # Current number of unprocessed clauses: 27
% 0.13/0.38  # ...number of literals in the above   : 84
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 12
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 368
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 47
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 10
% 0.13/0.38  # Unit Clause-clause subsumption calls : 47
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 5
% 0.13/0.38  # BW rewrite match successes           : 5
% 0.13/0.38  # Condensation attempts                : 119
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 5292
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.030 s
% 0.13/0.38  # System time              : 0.006 s
% 0.13/0.38  # Total time               : 0.036 s
% 0.13/0.38  # Maximum resident set size: 1584 pages
%------------------------------------------------------------------------------
