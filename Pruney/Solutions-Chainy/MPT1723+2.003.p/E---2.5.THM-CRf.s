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
% DateTime   : Thu Dec  3 11:17:09 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   46 ( 591 expanded)
%              Number of clauses        :   37 ( 183 expanded)
%              Number of leaves         :    4 ( 141 expanded)
%              Depth                    :   12
%              Number of atoms          :  248 (6617 expanded)
%              Number of equality atoms :   13 (  50 expanded)
%              Maximal formula depth    :   20 (   6 average)
%              Maximal clause size      :   18 (   4 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t32_tmap_1,conjecture,(
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
                 => ( ~ r1_tsep_1(X2,X3)
                   => ( ( m1_pre_topc(X2,X4)
                       => m1_pre_topc(k2_tsep_1(X1,X2,X3),k2_tsep_1(X1,X4,X3)) )
                      & ( m1_pre_topc(X3,X4)
                       => m1_pre_topc(k2_tsep_1(X1,X2,X3),k2_tsep_1(X1,X2,X4)) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t32_tmap_1)).

fof(t25_tmap_1,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & m1_pre_topc(X2,X1) )
         => k1_tsep_1(X1,X2,X2) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t25_tmap_1)).

fof(t23_tsep_1,axiom,(
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
             => ( m1_pre_topc(X2,X3)
              <=> k1_tsep_1(X1,X2,X3) = g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t23_tsep_1)).

fof(t28_tmap_1,axiom,(
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
                 => ! [X5] :
                      ( ( ~ v2_struct_0(X5)
                        & m1_pre_topc(X5,X1) )
                     => ( ( m1_pre_topc(X2,X4)
                          & m1_pre_topc(X3,X5) )
                       => ( r1_tsep_1(X2,X3)
                          | m1_pre_topc(k2_tsep_1(X1,X2,X3),k2_tsep_1(X1,X4,X5)) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t28_tmap_1)).

fof(c_0_4,negated_conjecture,(
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
                   => ( ~ r1_tsep_1(X2,X3)
                     => ( ( m1_pre_topc(X2,X4)
                         => m1_pre_topc(k2_tsep_1(X1,X2,X3),k2_tsep_1(X1,X4,X3)) )
                        & ( m1_pre_topc(X3,X4)
                         => m1_pre_topc(k2_tsep_1(X1,X2,X3),k2_tsep_1(X1,X2,X4)) ) ) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t32_tmap_1])).

fof(c_0_5,plain,(
    ! [X9,X10] :
      ( v2_struct_0(X9)
      | ~ v2_pre_topc(X9)
      | ~ l1_pre_topc(X9)
      | v2_struct_0(X10)
      | ~ m1_pre_topc(X10,X9)
      | k1_tsep_1(X9,X10,X10) = g1_pre_topc(u1_struct_0(X10),u1_pre_topc(X10)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t25_tmap_1])])])])).

fof(c_0_6,negated_conjecture,
    ( ~ v2_struct_0(esk1_0)
    & v2_pre_topc(esk1_0)
    & l1_pre_topc(esk1_0)
    & ~ v2_struct_0(esk2_0)
    & m1_pre_topc(esk2_0,esk1_0)
    & ~ v2_struct_0(esk3_0)
    & m1_pre_topc(esk3_0,esk1_0)
    & ~ v2_struct_0(esk4_0)
    & m1_pre_topc(esk4_0,esk1_0)
    & ~ r1_tsep_1(esk2_0,esk3_0)
    & ( m1_pre_topc(esk3_0,esk4_0)
      | m1_pre_topc(esk2_0,esk4_0) )
    & ( ~ m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk2_0,esk4_0))
      | m1_pre_topc(esk2_0,esk4_0) )
    & ( m1_pre_topc(esk3_0,esk4_0)
      | ~ m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk4_0,esk3_0)) )
    & ( ~ m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk2_0,esk4_0))
      | ~ m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk4_0,esk3_0)) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_4])])])])])).

fof(c_0_7,plain,(
    ! [X6,X7,X8] :
      ( ( ~ m1_pre_topc(X7,X8)
        | k1_tsep_1(X6,X7,X8) = g1_pre_topc(u1_struct_0(X8),u1_pre_topc(X8))
        | v2_struct_0(X8)
        | ~ m1_pre_topc(X8,X6)
        | v2_struct_0(X7)
        | ~ m1_pre_topc(X7,X6)
        | v2_struct_0(X6)
        | ~ v2_pre_topc(X6)
        | ~ l1_pre_topc(X6) )
      & ( k1_tsep_1(X6,X7,X8) != g1_pre_topc(u1_struct_0(X8),u1_pre_topc(X8))
        | m1_pre_topc(X7,X8)
        | v2_struct_0(X8)
        | ~ m1_pre_topc(X8,X6)
        | v2_struct_0(X7)
        | ~ m1_pre_topc(X7,X6)
        | v2_struct_0(X6)
        | ~ v2_pre_topc(X6)
        | ~ l1_pre_topc(X6) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t23_tsep_1])])])])])).

cnf(c_0_8,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X2)
    | k1_tsep_1(X1,X2,X2) = g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5])).

cnf(c_0_9,negated_conjecture,
    ( m1_pre_topc(esk3_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_10,negated_conjecture,
    ( l1_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_11,negated_conjecture,
    ( v2_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_12,negated_conjecture,
    ( ~ v2_struct_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_13,negated_conjecture,
    ( ~ v2_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

fof(c_0_14,plain,(
    ! [X11,X12,X13,X14,X15] :
      ( v2_struct_0(X11)
      | ~ v2_pre_topc(X11)
      | ~ l1_pre_topc(X11)
      | v2_struct_0(X12)
      | ~ m1_pre_topc(X12,X11)
      | v2_struct_0(X13)
      | ~ m1_pre_topc(X13,X11)
      | v2_struct_0(X14)
      | ~ m1_pre_topc(X14,X11)
      | v2_struct_0(X15)
      | ~ m1_pre_topc(X15,X11)
      | ~ m1_pre_topc(X12,X14)
      | ~ m1_pre_topc(X13,X15)
      | r1_tsep_1(X12,X13)
      | m1_pre_topc(k2_tsep_1(X11,X12,X13),k2_tsep_1(X11,X14,X15)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t28_tmap_1])])])])).

cnf(c_0_15,negated_conjecture,
    ( m1_pre_topc(esk2_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_16,negated_conjecture,
    ( ~ v2_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_17,plain,
    ( m1_pre_topc(X2,X3)
    | v2_struct_0(X3)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | k1_tsep_1(X1,X2,X3) != g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3))
    | ~ m1_pre_topc(X3,X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_18,negated_conjecture,
    ( g1_pre_topc(u1_struct_0(esk3_0),u1_pre_topc(esk3_0)) = k1_tsep_1(esk1_0,esk3_0,esk3_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8,c_0_9]),c_0_10]),c_0_11])]),c_0_12]),c_0_13])).

cnf(c_0_19,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | v2_struct_0(X4)
    | v2_struct_0(X5)
    | r1_tsep_1(X2,X3)
    | m1_pre_topc(k2_tsep_1(X1,X2,X3),k2_tsep_1(X1,X4,X5))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_pre_topc(X3,X1)
    | ~ m1_pre_topc(X4,X1)
    | ~ m1_pre_topc(X5,X1)
    | ~ m1_pre_topc(X2,X4)
    | ~ m1_pre_topc(X3,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,negated_conjecture,
    ( m1_pre_topc(esk4_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_21,negated_conjecture,
    ( ~ v2_struct_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_22,negated_conjecture,
    ( g1_pre_topc(u1_struct_0(esk2_0),u1_pre_topc(esk2_0)) = k1_tsep_1(esk1_0,esk2_0,esk2_0) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8,c_0_15]),c_0_10]),c_0_11])]),c_0_16]),c_0_13])).

cnf(c_0_23,negated_conjecture,
    ( m1_pre_topc(X1,esk3_0)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | k1_tsep_1(X2,X1,esk3_0) != k1_tsep_1(esk1_0,esk3_0,esk3_0)
    | ~ m1_pre_topc(esk3_0,X2)
    | ~ m1_pre_topc(X1,X2)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X2) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_18]),c_0_12])).

cnf(c_0_24,negated_conjecture,
    ( r1_tsep_1(X1,X2)
    | m1_pre_topc(k2_tsep_1(esk1_0,X1,X2),k2_tsep_1(esk1_0,X3,esk4_0))
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ m1_pre_topc(X3,esk1_0)
    | ~ m1_pre_topc(X2,esk4_0)
    | ~ m1_pre_topc(X2,esk1_0)
    | ~ m1_pre_topc(X1,esk1_0)
    | ~ m1_pre_topc(X1,X3) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_10]),c_0_11])]),c_0_21]),c_0_13])).

cnf(c_0_25,negated_conjecture,
    ( m1_pre_topc(X1,esk2_0)
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | k1_tsep_1(X2,X1,esk2_0) != k1_tsep_1(esk1_0,esk2_0,esk2_0)
    | ~ m1_pre_topc(esk2_0,X2)
    | ~ m1_pre_topc(X1,X2)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X2) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_22]),c_0_16])).

cnf(c_0_26,negated_conjecture,
    ( r1_tsep_1(X1,X2)
    | m1_pre_topc(k2_tsep_1(esk1_0,X1,X2),k2_tsep_1(esk1_0,X3,esk3_0))
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ m1_pre_topc(X3,esk1_0)
    | ~ m1_pre_topc(X2,esk3_0)
    | ~ m1_pre_topc(X2,esk1_0)
    | ~ m1_pre_topc(X1,esk1_0)
    | ~ m1_pre_topc(X1,X3) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_9]),c_0_10]),c_0_11])]),c_0_12]),c_0_13])).

cnf(c_0_27,negated_conjecture,
    ( m1_pre_topc(X1,esk3_0)
    | v2_struct_0(X1)
    | k1_tsep_1(esk1_0,X1,esk3_0) != k1_tsep_1(esk1_0,esk3_0,esk3_0)
    | ~ m1_pre_topc(X1,esk1_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_9]),c_0_10]),c_0_11])]),c_0_13])).

cnf(c_0_28,negated_conjecture,
    ( r1_tsep_1(X1,X2)
    | m1_pre_topc(k2_tsep_1(esk1_0,X1,X2),k2_tsep_1(esk1_0,esk2_0,esk4_0))
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ m1_pre_topc(X2,esk4_0)
    | ~ m1_pre_topc(X2,esk1_0)
    | ~ m1_pre_topc(X1,esk1_0)
    | ~ m1_pre_topc(X1,esk2_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_15]),c_0_16])).

cnf(c_0_29,negated_conjecture,
    ( m1_pre_topc(esk3_0,esk4_0)
    | m1_pre_topc(esk2_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_30,negated_conjecture,
    ( m1_pre_topc(X1,esk2_0)
    | v2_struct_0(X1)
    | k1_tsep_1(esk1_0,X1,esk2_0) != k1_tsep_1(esk1_0,esk2_0,esk2_0)
    | ~ m1_pre_topc(X1,esk1_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_15]),c_0_10]),c_0_11])]),c_0_13])).

cnf(c_0_31,negated_conjecture,
    ( r1_tsep_1(X1,X2)
    | m1_pre_topc(k2_tsep_1(esk1_0,X1,X2),k2_tsep_1(esk1_0,esk4_0,esk3_0))
    | v2_struct_0(X2)
    | v2_struct_0(X1)
    | ~ m1_pre_topc(X2,esk3_0)
    | ~ m1_pre_topc(X2,esk1_0)
    | ~ m1_pre_topc(X1,esk1_0)
    | ~ m1_pre_topc(X1,esk4_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_20]),c_0_21])).

cnf(c_0_32,negated_conjecture,
    ( m1_pre_topc(esk3_0,esk3_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_9]),c_0_12])).

cnf(c_0_33,negated_conjecture,
    ( r1_tsep_1(X1,esk3_0)
    | m1_pre_topc(k2_tsep_1(esk1_0,X1,esk3_0),k2_tsep_1(esk1_0,esk2_0,esk4_0))
    | m1_pre_topc(esk2_0,esk4_0)
    | v2_struct_0(X1)
    | ~ m1_pre_topc(X1,esk1_0)
    | ~ m1_pre_topc(X1,esk2_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_29]),c_0_9])]),c_0_12])).

cnf(c_0_34,negated_conjecture,
    ( m1_pre_topc(esk2_0,esk2_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_15]),c_0_16])).

cnf(c_0_35,negated_conjecture,
    ( ~ r1_tsep_1(esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_36,negated_conjecture,
    ( m1_pre_topc(esk2_0,esk4_0)
    | ~ m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk2_0,esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_37,negated_conjecture,
    ( r1_tsep_1(X1,esk3_0)
    | m1_pre_topc(k2_tsep_1(esk1_0,X1,esk3_0),k2_tsep_1(esk1_0,esk4_0,esk3_0))
    | v2_struct_0(X1)
    | ~ m1_pre_topc(X1,esk1_0)
    | ~ m1_pre_topc(X1,esk4_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_9])]),c_0_12])).

cnf(c_0_38,negated_conjecture,
    ( m1_pre_topc(esk2_0,esk4_0) ),
    inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33,c_0_15]),c_0_34])]),c_0_35]),c_0_16]),c_0_36])).

cnf(c_0_39,negated_conjecture,
    ( m1_pre_topc(esk3_0,esk4_0)
    | ~ m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk4_0,esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_40,negated_conjecture,
    ( m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk4_0,esk3_0)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_15]),c_0_38])]),c_0_35]),c_0_16])).

cnf(c_0_41,negated_conjecture,
    ( m1_pre_topc(esk3_0,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_39,c_0_40])])).

cnf(c_0_42,negated_conjecture,
    ( ~ m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk2_0,esk4_0))
    | ~ m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk4_0,esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_6])).

cnf(c_0_43,negated_conjecture,
    ( r1_tsep_1(X1,esk3_0)
    | m1_pre_topc(k2_tsep_1(esk1_0,X1,esk3_0),k2_tsep_1(esk1_0,esk2_0,esk4_0))
    | v2_struct_0(X1)
    | ~ m1_pre_topc(X1,esk1_0)
    | ~ m1_pre_topc(X1,esk2_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_41]),c_0_9])]),c_0_12])).

cnf(c_0_44,negated_conjecture,
    ( ~ m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk2_0,esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_42,c_0_40])])).

cnf(c_0_45,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43,c_0_15]),c_0_34])]),c_0_35]),c_0_44]),c_0_16]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.33  % Computer   : n001.cluster.edu
% 0.13/0.33  % Model      : x86_64 x86_64
% 0.13/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.33  % Memory     : 8042.1875MB
% 0.13/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.33  % CPULimit   : 60
% 0.13/0.33  % WCLimit    : 600
% 0.13/0.33  % DateTime   : Tue Dec  1 12:31:44 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.38  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.19/0.38  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.19/0.38  #
% 0.19/0.38  # Preprocessing time       : 0.027 s
% 0.19/0.38  # Presaturation interreduction done
% 0.19/0.38  
% 0.19/0.38  # Proof found!
% 0.19/0.38  # SZS status Theorem
% 0.19/0.38  # SZS output start CNFRefutation
% 0.19/0.38  fof(t32_tmap_1, conjecture, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((~(v2_struct_0(X2))&m1_pre_topc(X2,X1))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X1))=>(~(r1_tsep_1(X2,X3))=>((m1_pre_topc(X2,X4)=>m1_pre_topc(k2_tsep_1(X1,X2,X3),k2_tsep_1(X1,X4,X3)))&(m1_pre_topc(X3,X4)=>m1_pre_topc(k2_tsep_1(X1,X2,X3),k2_tsep_1(X1,X2,X4))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t32_tmap_1)).
% 0.19/0.38  fof(t25_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((~(v2_struct_0(X2))&m1_pre_topc(X2,X1))=>k1_tsep_1(X1,X2,X2)=g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t25_tmap_1)).
% 0.19/0.38  fof(t23_tsep_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((~(v2_struct_0(X2))&m1_pre_topc(X2,X1))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>(m1_pre_topc(X2,X3)<=>k1_tsep_1(X1,X2,X3)=g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t23_tsep_1)).
% 0.19/0.38  fof(t28_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((~(v2_struct_0(X2))&m1_pre_topc(X2,X1))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X1))=>![X5]:((~(v2_struct_0(X5))&m1_pre_topc(X5,X1))=>((m1_pre_topc(X2,X4)&m1_pre_topc(X3,X5))=>(r1_tsep_1(X2,X3)|m1_pre_topc(k2_tsep_1(X1,X2,X3),k2_tsep_1(X1,X4,X5))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t28_tmap_1)).
% 0.19/0.38  fof(c_0_4, negated_conjecture, ~(![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:((~(v2_struct_0(X2))&m1_pre_topc(X2,X1))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X1))=>(~(r1_tsep_1(X2,X3))=>((m1_pre_topc(X2,X4)=>m1_pre_topc(k2_tsep_1(X1,X2,X3),k2_tsep_1(X1,X4,X3)))&(m1_pre_topc(X3,X4)=>m1_pre_topc(k2_tsep_1(X1,X2,X3),k2_tsep_1(X1,X2,X4)))))))))), inference(assume_negation,[status(cth)],[t32_tmap_1])).
% 0.19/0.38  fof(c_0_5, plain, ![X9, X10]:(v2_struct_0(X9)|~v2_pre_topc(X9)|~l1_pre_topc(X9)|(v2_struct_0(X10)|~m1_pre_topc(X10,X9)|k1_tsep_1(X9,X10,X10)=g1_pre_topc(u1_struct_0(X10),u1_pre_topc(X10)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t25_tmap_1])])])])).
% 0.19/0.38  fof(c_0_6, negated_conjecture, (((~v2_struct_0(esk1_0)&v2_pre_topc(esk1_0))&l1_pre_topc(esk1_0))&((~v2_struct_0(esk2_0)&m1_pre_topc(esk2_0,esk1_0))&((~v2_struct_0(esk3_0)&m1_pre_topc(esk3_0,esk1_0))&((~v2_struct_0(esk4_0)&m1_pre_topc(esk4_0,esk1_0))&(~r1_tsep_1(esk2_0,esk3_0)&(((m1_pre_topc(esk3_0,esk4_0)|m1_pre_topc(esk2_0,esk4_0))&(~m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk2_0,esk4_0))|m1_pre_topc(esk2_0,esk4_0)))&((m1_pre_topc(esk3_0,esk4_0)|~m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk4_0,esk3_0)))&(~m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk2_0,esk4_0))|~m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk4_0,esk3_0)))))))))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_4])])])])])).
% 0.19/0.38  fof(c_0_7, plain, ![X6, X7, X8]:((~m1_pre_topc(X7,X8)|k1_tsep_1(X6,X7,X8)=g1_pre_topc(u1_struct_0(X8),u1_pre_topc(X8))|(v2_struct_0(X8)|~m1_pre_topc(X8,X6))|(v2_struct_0(X7)|~m1_pre_topc(X7,X6))|(v2_struct_0(X6)|~v2_pre_topc(X6)|~l1_pre_topc(X6)))&(k1_tsep_1(X6,X7,X8)!=g1_pre_topc(u1_struct_0(X8),u1_pre_topc(X8))|m1_pre_topc(X7,X8)|(v2_struct_0(X8)|~m1_pre_topc(X8,X6))|(v2_struct_0(X7)|~m1_pre_topc(X7,X6))|(v2_struct_0(X6)|~v2_pre_topc(X6)|~l1_pre_topc(X6)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t23_tsep_1])])])])])).
% 0.19/0.38  cnf(c_0_8, plain, (v2_struct_0(X1)|v2_struct_0(X2)|k1_tsep_1(X1,X2,X2)=g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_5])).
% 0.19/0.38  cnf(c_0_9, negated_conjecture, (m1_pre_topc(esk3_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_10, negated_conjecture, (l1_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_11, negated_conjecture, (v2_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_12, negated_conjecture, (~v2_struct_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_13, negated_conjecture, (~v2_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  fof(c_0_14, plain, ![X11, X12, X13, X14, X15]:(v2_struct_0(X11)|~v2_pre_topc(X11)|~l1_pre_topc(X11)|(v2_struct_0(X12)|~m1_pre_topc(X12,X11)|(v2_struct_0(X13)|~m1_pre_topc(X13,X11)|(v2_struct_0(X14)|~m1_pre_topc(X14,X11)|(v2_struct_0(X15)|~m1_pre_topc(X15,X11)|(~m1_pre_topc(X12,X14)|~m1_pre_topc(X13,X15)|(r1_tsep_1(X12,X13)|m1_pre_topc(k2_tsep_1(X11,X12,X13),k2_tsep_1(X11,X14,X15))))))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t28_tmap_1])])])])).
% 0.19/0.38  cnf(c_0_15, negated_conjecture, (m1_pre_topc(esk2_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_16, negated_conjecture, (~v2_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_17, plain, (m1_pre_topc(X2,X3)|v2_struct_0(X3)|v2_struct_0(X2)|v2_struct_0(X1)|k1_tsep_1(X1,X2,X3)!=g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3))|~m1_pre_topc(X3,X1)|~m1_pre_topc(X2,X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.19/0.38  cnf(c_0_18, negated_conjecture, (g1_pre_topc(u1_struct_0(esk3_0),u1_pre_topc(esk3_0))=k1_tsep_1(esk1_0,esk3_0,esk3_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8, c_0_9]), c_0_10]), c_0_11])]), c_0_12]), c_0_13])).
% 0.19/0.38  cnf(c_0_19, plain, (v2_struct_0(X1)|v2_struct_0(X2)|v2_struct_0(X3)|v2_struct_0(X4)|v2_struct_0(X5)|r1_tsep_1(X2,X3)|m1_pre_topc(k2_tsep_1(X1,X2,X3),k2_tsep_1(X1,X4,X5))|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)|~m1_pre_topc(X3,X1)|~m1_pre_topc(X4,X1)|~m1_pre_topc(X5,X1)|~m1_pre_topc(X2,X4)|~m1_pre_topc(X3,X5)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.38  cnf(c_0_20, negated_conjecture, (m1_pre_topc(esk4_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_21, negated_conjecture, (~v2_struct_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_22, negated_conjecture, (g1_pre_topc(u1_struct_0(esk2_0),u1_pre_topc(esk2_0))=k1_tsep_1(esk1_0,esk2_0,esk2_0)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8, c_0_15]), c_0_10]), c_0_11])]), c_0_16]), c_0_13])).
% 0.19/0.38  cnf(c_0_23, negated_conjecture, (m1_pre_topc(X1,esk3_0)|v2_struct_0(X2)|v2_struct_0(X1)|k1_tsep_1(X2,X1,esk3_0)!=k1_tsep_1(esk1_0,esk3_0,esk3_0)|~m1_pre_topc(esk3_0,X2)|~m1_pre_topc(X1,X2)|~l1_pre_topc(X2)|~v2_pre_topc(X2)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_18]), c_0_12])).
% 0.19/0.38  cnf(c_0_24, negated_conjecture, (r1_tsep_1(X1,X2)|m1_pre_topc(k2_tsep_1(esk1_0,X1,X2),k2_tsep_1(esk1_0,X3,esk4_0))|v2_struct_0(X1)|v2_struct_0(X2)|v2_struct_0(X3)|~m1_pre_topc(X3,esk1_0)|~m1_pre_topc(X2,esk4_0)|~m1_pre_topc(X2,esk1_0)|~m1_pre_topc(X1,esk1_0)|~m1_pre_topc(X1,X3)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_10]), c_0_11])]), c_0_21]), c_0_13])).
% 0.19/0.38  cnf(c_0_25, negated_conjecture, (m1_pre_topc(X1,esk2_0)|v2_struct_0(X2)|v2_struct_0(X1)|k1_tsep_1(X2,X1,esk2_0)!=k1_tsep_1(esk1_0,esk2_0,esk2_0)|~m1_pre_topc(esk2_0,X2)|~m1_pre_topc(X1,X2)|~l1_pre_topc(X2)|~v2_pre_topc(X2)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_22]), c_0_16])).
% 0.19/0.38  cnf(c_0_26, negated_conjecture, (r1_tsep_1(X1,X2)|m1_pre_topc(k2_tsep_1(esk1_0,X1,X2),k2_tsep_1(esk1_0,X3,esk3_0))|v2_struct_0(X1)|v2_struct_0(X2)|v2_struct_0(X3)|~m1_pre_topc(X3,esk1_0)|~m1_pre_topc(X2,esk3_0)|~m1_pre_topc(X2,esk1_0)|~m1_pre_topc(X1,esk1_0)|~m1_pre_topc(X1,X3)), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_9]), c_0_10]), c_0_11])]), c_0_12]), c_0_13])).
% 0.19/0.38  cnf(c_0_27, negated_conjecture, (m1_pre_topc(X1,esk3_0)|v2_struct_0(X1)|k1_tsep_1(esk1_0,X1,esk3_0)!=k1_tsep_1(esk1_0,esk3_0,esk3_0)|~m1_pre_topc(X1,esk1_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_9]), c_0_10]), c_0_11])]), c_0_13])).
% 0.19/0.38  cnf(c_0_28, negated_conjecture, (r1_tsep_1(X1,X2)|m1_pre_topc(k2_tsep_1(esk1_0,X1,X2),k2_tsep_1(esk1_0,esk2_0,esk4_0))|v2_struct_0(X2)|v2_struct_0(X1)|~m1_pre_topc(X2,esk4_0)|~m1_pre_topc(X2,esk1_0)|~m1_pre_topc(X1,esk1_0)|~m1_pre_topc(X1,esk2_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_15]), c_0_16])).
% 0.19/0.38  cnf(c_0_29, negated_conjecture, (m1_pre_topc(esk3_0,esk4_0)|m1_pre_topc(esk2_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_30, negated_conjecture, (m1_pre_topc(X1,esk2_0)|v2_struct_0(X1)|k1_tsep_1(esk1_0,X1,esk2_0)!=k1_tsep_1(esk1_0,esk2_0,esk2_0)|~m1_pre_topc(X1,esk1_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_15]), c_0_10]), c_0_11])]), c_0_13])).
% 0.19/0.38  cnf(c_0_31, negated_conjecture, (r1_tsep_1(X1,X2)|m1_pre_topc(k2_tsep_1(esk1_0,X1,X2),k2_tsep_1(esk1_0,esk4_0,esk3_0))|v2_struct_0(X2)|v2_struct_0(X1)|~m1_pre_topc(X2,esk3_0)|~m1_pre_topc(X2,esk1_0)|~m1_pre_topc(X1,esk1_0)|~m1_pre_topc(X1,esk4_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_20]), c_0_21])).
% 0.19/0.38  cnf(c_0_32, negated_conjecture, (m1_pre_topc(esk3_0,esk3_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_27, c_0_9]), c_0_12])).
% 0.19/0.38  cnf(c_0_33, negated_conjecture, (r1_tsep_1(X1,esk3_0)|m1_pre_topc(k2_tsep_1(esk1_0,X1,esk3_0),k2_tsep_1(esk1_0,esk2_0,esk4_0))|m1_pre_topc(esk2_0,esk4_0)|v2_struct_0(X1)|~m1_pre_topc(X1,esk1_0)|~m1_pre_topc(X1,esk2_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_29]), c_0_9])]), c_0_12])).
% 0.19/0.38  cnf(c_0_34, negated_conjecture, (m1_pre_topc(esk2_0,esk2_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_15]), c_0_16])).
% 0.19/0.38  cnf(c_0_35, negated_conjecture, (~r1_tsep_1(esk2_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_36, negated_conjecture, (m1_pre_topc(esk2_0,esk4_0)|~m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk2_0,esk4_0))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_37, negated_conjecture, (r1_tsep_1(X1,esk3_0)|m1_pre_topc(k2_tsep_1(esk1_0,X1,esk3_0),k2_tsep_1(esk1_0,esk4_0,esk3_0))|v2_struct_0(X1)|~m1_pre_topc(X1,esk1_0)|~m1_pre_topc(X1,esk4_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_9])]), c_0_12])).
% 0.19/0.38  cnf(c_0_38, negated_conjecture, (m1_pre_topc(esk2_0,esk4_0)), inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_33, c_0_15]), c_0_34])]), c_0_35]), c_0_16]), c_0_36])).
% 0.19/0.38  cnf(c_0_39, negated_conjecture, (m1_pre_topc(esk3_0,esk4_0)|~m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk4_0,esk3_0))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_40, negated_conjecture, (m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk4_0,esk3_0))), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_37, c_0_15]), c_0_38])]), c_0_35]), c_0_16])).
% 0.19/0.38  cnf(c_0_41, negated_conjecture, (m1_pre_topc(esk3_0,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_39, c_0_40])])).
% 0.19/0.38  cnf(c_0_42, negated_conjecture, (~m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk2_0,esk4_0))|~m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk4_0,esk3_0))), inference(split_conjunct,[status(thm)],[c_0_6])).
% 0.19/0.38  cnf(c_0_43, negated_conjecture, (r1_tsep_1(X1,esk3_0)|m1_pre_topc(k2_tsep_1(esk1_0,X1,esk3_0),k2_tsep_1(esk1_0,esk2_0,esk4_0))|v2_struct_0(X1)|~m1_pre_topc(X1,esk1_0)|~m1_pre_topc(X1,esk2_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28, c_0_41]), c_0_9])]), c_0_12])).
% 0.19/0.38  cnf(c_0_44, negated_conjecture, (~m1_pre_topc(k2_tsep_1(esk1_0,esk2_0,esk3_0),k2_tsep_1(esk1_0,esk2_0,esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_42, c_0_40])])).
% 0.19/0.38  cnf(c_0_45, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_43, c_0_15]), c_0_34])]), c_0_35]), c_0_44]), c_0_16]), ['proof']).
% 0.19/0.38  # SZS output end CNFRefutation
% 0.19/0.38  # Proof object total steps             : 46
% 0.19/0.38  # Proof object clause steps            : 37
% 0.19/0.38  # Proof object formula steps           : 9
% 0.19/0.38  # Proof object conjectures             : 37
% 0.19/0.38  # Proof object clause conjectures      : 34
% 0.19/0.38  # Proof object formula conjectures     : 3
% 0.19/0.38  # Proof object initial clauses used    : 17
% 0.19/0.38  # Proof object initial formulas used   : 4
% 0.19/0.38  # Proof object generating inferences   : 18
% 0.19/0.38  # Proof object simplifying inferences  : 61
% 0.19/0.38  # Training examples: 0 positive, 0 negative
% 0.19/0.38  # Parsed axioms                        : 4
% 0.19/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.38  # Initial clauses                      : 18
% 0.19/0.38  # Removed in clause preprocessing      : 0
% 0.19/0.38  # Initial clauses in saturation        : 18
% 0.19/0.38  # Processed clauses                    : 162
% 0.19/0.38  # ...of these trivial                  : 1
% 0.19/0.38  # ...subsumed                          : 6
% 0.19/0.38  # ...remaining for further processing  : 155
% 0.19/0.38  # Other redundant clauses eliminated   : 0
% 0.19/0.38  # Clauses deleted for lack of memory   : 0
% 0.19/0.38  # Backward-subsumed                    : 0
% 0.19/0.38  # Backward-rewritten                   : 35
% 0.19/0.38  # Generated clauses                    : 203
% 0.19/0.38  # ...of the previous two non-trivial   : 202
% 0.19/0.38  # Contextual simplify-reflections      : 4
% 0.19/0.38  # Paramodulations                      : 203
% 0.19/0.38  # Factorizations                       : 0
% 0.19/0.38  # Equation resolutions                 : 0
% 0.19/0.38  # Propositional unsat checks           : 0
% 0.19/0.38  #    Propositional check models        : 0
% 0.19/0.38  #    Propositional check unsatisfiable : 0
% 0.19/0.38  #    Propositional clauses             : 0
% 0.19/0.38  #    Propositional clauses after purity: 0
% 0.19/0.38  #    Propositional unsat core size     : 0
% 0.19/0.38  #    Propositional preprocessing time  : 0.000
% 0.19/0.38  #    Propositional encoding time       : 0.000
% 0.19/0.38  #    Propositional solver time         : 0.000
% 0.19/0.38  #    Success case prop preproc time    : 0.000
% 0.19/0.38  #    Success case prop encoding time   : 0.000
% 0.19/0.38  #    Success case prop solver time     : 0.000
% 0.19/0.38  # Current number of processed clauses  : 102
% 0.19/0.38  #    Positive orientable unit clauses  : 17
% 0.19/0.38  #    Positive unorientable unit clauses: 0
% 0.19/0.38  #    Negative unit clauses             : 6
% 0.19/0.38  #    Non-unit-clauses                  : 79
% 0.19/0.38  # Current number of unprocessed clauses: 72
% 0.19/0.38  # ...number of literals in the above   : 711
% 0.19/0.38  # Current number of archived formulas  : 0
% 0.19/0.38  # Current number of archived clauses   : 53
% 0.19/0.38  # Clause-clause subsumption calls (NU) : 1148
% 0.19/0.38  # Rec. Clause-clause subsumption calls : 391
% 0.19/0.38  # Non-unit clause-clause subsumptions  : 10
% 0.19/0.38  # Unit Clause-clause subsumption calls : 194
% 0.19/0.38  # Rewrite failures with RHS unbound    : 0
% 0.19/0.38  # BW rewrite match attempts            : 14
% 0.19/0.38  # BW rewrite match successes           : 5
% 0.19/0.38  # Condensation attempts                : 0
% 0.19/0.38  # Condensation successes               : 0
% 0.19/0.38  # Termbank termtop insertions          : 10879
% 0.19/0.38  
% 0.19/0.38  # -------------------------------------------------
% 0.19/0.38  # User time                : 0.043 s
% 0.19/0.38  # System time              : 0.002 s
% 0.19/0.38  # Total time               : 0.045 s
% 0.19/0.38  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
