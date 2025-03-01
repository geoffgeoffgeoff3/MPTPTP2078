%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n018.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:16:16 EST 2020

% Result     : CounterSatisfiable 0.21s
% Output     : Saturation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   41 ( 466 expanded)
%              Number of clauses        :   32 ( 191 expanded)
%              Number of leaves         :    4 ( 108 expanded)
%              Depth                    :    9
%              Number of atoms          :  185 (2780 expanded)
%              Number of equality atoms :   53 ( 727 expanded)
%              Maximal formula depth    :   19 (   5 average)
%              Maximal clause size      :   22 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(free_g1_orders_2,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))
     => ! [X3,X4] :
          ( g1_orders_2(X1,X2) = g1_orders_2(X3,X4)
         => ( X1 = X3
            & X2 = X4 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',free_g1_orders_2)).

fof(dt_u1_orders_2,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => m1_subset_1(u1_orders_2(X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X1)))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_u1_orders_2)).

fof(t25_waybel_0,conjecture,(
    ! [X1] :
      ( l1_orders_2(X1)
     => ! [X2] :
          ( l1_orders_2(X2)
         => ( g1_orders_2(u1_struct_0(X1),u1_orders_2(X1)) = g1_orders_2(u1_struct_0(X2),u1_orders_2(X2))
           => ! [X3] :
                ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
               => ! [X4] :
                    ( m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X2)))
                   => ( X3 = X4
                     => ( ( v12_waybel_0(X3,X1)
                         => v12_waybel_0(X4,X2) )
                        & ( v13_waybel_0(X3,X1)
                         => v13_waybel_0(X4,X2) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t25_waybel_0)).

fof(t1_yellow_0,axiom,(
    ! [X1] :
      ( l1_orders_2(X1)
     => ! [X2] :
          ( l1_orders_2(X2)
         => ( g1_orders_2(u1_struct_0(X1),u1_orders_2(X1)) = g1_orders_2(u1_struct_0(X2),u1_orders_2(X2))
           => ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(X1))
               => ! [X4] :
                    ( m1_subset_1(X4,u1_struct_0(X1))
                   => ! [X5] :
                        ( m1_subset_1(X5,u1_struct_0(X2))
                       => ! [X6] :
                            ( m1_subset_1(X6,u1_struct_0(X2))
                           => ( ( X3 = X5
                                & X4 = X6 )
                             => ( ( r1_orders_2(X1,X3,X4)
                                 => r1_orders_2(X2,X5,X6) )
                                & ( r2_orders_2(X1,X3,X4)
                                 => r2_orders_2(X2,X5,X6) ) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t1_yellow_0)).

fof(c_0_4,plain,(
    ! [X8,X9,X10,X11] :
      ( ( X8 = X10
        | g1_orders_2(X8,X9) != g1_orders_2(X10,X11)
        | ~ m1_subset_1(X9,k1_zfmisc_1(k2_zfmisc_1(X8,X8))) )
      & ( X9 = X11
        | g1_orders_2(X8,X9) != g1_orders_2(X10,X11)
        | ~ m1_subset_1(X9,k1_zfmisc_1(k2_zfmisc_1(X8,X8))) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[free_g1_orders_2])])])])).

fof(c_0_5,plain,(
    ! [X7] :
      ( ~ l1_orders_2(X7)
      | m1_subset_1(u1_orders_2(X7),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X7),u1_struct_0(X7)))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_u1_orders_2])])).

fof(c_0_6,negated_conjecture,(
    ~ ! [X1] :
        ( l1_orders_2(X1)
       => ! [X2] :
            ( l1_orders_2(X2)
           => ( g1_orders_2(u1_struct_0(X1),u1_orders_2(X1)) = g1_orders_2(u1_struct_0(X2),u1_orders_2(X2))
             => ! [X3] :
                  ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
                 => ! [X4] :
                      ( m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X2)))
                     => ( X3 = X4
                       => ( ( v12_waybel_0(X3,X1)
                           => v12_waybel_0(X4,X2) )
                          & ( v13_waybel_0(X3,X1)
                           => v13_waybel_0(X4,X2) ) ) ) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t25_waybel_0])).

cnf(c_0_7,plain,
    ( X1 = X2
    | g1_orders_2(X3,X1) != g1_orders_2(X4,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_4]),
    [final]).

cnf(c_0_8,plain,
    ( m1_subset_1(u1_orders_2(X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X1))))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_5]),
    [final]).

fof(c_0_9,negated_conjecture,
    ( l1_orders_2(esk1_0)
    & l1_orders_2(esk2_0)
    & g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0)) = g1_orders_2(u1_struct_0(esk2_0),u1_orders_2(esk2_0))
    & m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))
    & m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk2_0)))
    & esk3_0 = esk4_0
    & ( v13_waybel_0(esk3_0,esk1_0)
      | v12_waybel_0(esk3_0,esk1_0) )
    & ( ~ v13_waybel_0(esk4_0,esk2_0)
      | v12_waybel_0(esk3_0,esk1_0) )
    & ( v13_waybel_0(esk3_0,esk1_0)
      | ~ v12_waybel_0(esk4_0,esk2_0) )
    & ( ~ v13_waybel_0(esk4_0,esk2_0)
      | ~ v12_waybel_0(esk4_0,esk2_0) ) ),
    inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])])).

cnf(c_0_10,plain,
    ( u1_orders_2(X1) = X2
    | g1_orders_2(u1_struct_0(X1),u1_orders_2(X1)) != g1_orders_2(X3,X2)
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_7,c_0_8]),
    [final]).

cnf(c_0_11,negated_conjecture,
    ( g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0)) = g1_orders_2(u1_struct_0(esk2_0),u1_orders_2(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_12,negated_conjecture,
    ( l1_orders_2(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9]),
    [final]).

cnf(c_0_13,negated_conjecture,
    ( u1_orders_2(esk2_0) = X1
    | g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0)) != g1_orders_2(X2,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_10,c_0_11]),c_0_12])])).

cnf(c_0_14,negated_conjecture,
    ( u1_orders_2(esk2_0) = u1_orders_2(esk1_0) ),
    inference(er,[status(thm)],[c_0_13]),
    [final]).

fof(c_0_15,plain,(
    ! [X12,X13,X14,X15,X16,X17] :
      ( ( ~ r1_orders_2(X12,X14,X15)
        | r1_orders_2(X13,X16,X17)
        | X14 != X16
        | X15 != X17
        | ~ m1_subset_1(X17,u1_struct_0(X13))
        | ~ m1_subset_1(X16,u1_struct_0(X13))
        | ~ m1_subset_1(X15,u1_struct_0(X12))
        | ~ m1_subset_1(X14,u1_struct_0(X12))
        | g1_orders_2(u1_struct_0(X12),u1_orders_2(X12)) != g1_orders_2(u1_struct_0(X13),u1_orders_2(X13))
        | ~ l1_orders_2(X13)
        | ~ l1_orders_2(X12) )
      & ( ~ r2_orders_2(X12,X14,X15)
        | r2_orders_2(X13,X16,X17)
        | X14 != X16
        | X15 != X17
        | ~ m1_subset_1(X17,u1_struct_0(X13))
        | ~ m1_subset_1(X16,u1_struct_0(X13))
        | ~ m1_subset_1(X15,u1_struct_0(X12))
        | ~ m1_subset_1(X14,u1_struct_0(X12))
        | g1_orders_2(u1_struct_0(X12),u1_orders_2(X12)) != g1_orders_2(u1_struct_0(X13),u1_orders_2(X13))
        | ~ l1_orders_2(X13)
        | ~ l1_orders_2(X12) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_yellow_0])])])])).

cnf(c_0_16,plain,
    ( X1 = X2
    | g1_orders_2(X1,X3) != g1_orders_2(X2,X4)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_4]),
    [final]).

cnf(c_0_17,negated_conjecture,
    ( m1_subset_1(u1_orders_2(esk1_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk2_0)))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8,c_0_14]),c_0_12])])).

cnf(c_0_18,negated_conjecture,
    ( g1_orders_2(u1_struct_0(esk2_0),u1_orders_2(esk1_0)) = g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0)) ),
    inference(rw,[status(thm)],[c_0_11,c_0_14])).

cnf(c_0_19,plain,
    ( r2_orders_2(X4,X5,X6)
    | ~ r2_orders_2(X1,X2,X3)
    | X2 != X5
    | X3 != X6
    | ~ m1_subset_1(X6,u1_struct_0(X4))
    | ~ m1_subset_1(X5,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | g1_orders_2(u1_struct_0(X1),u1_orders_2(X1)) != g1_orders_2(u1_struct_0(X4),u1_orders_2(X4))
    | ~ l1_orders_2(X4)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_20,negated_conjecture,
    ( u1_struct_0(esk2_0) = X1
    | g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0)) != g1_orders_2(X1,X2) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17]),c_0_18])).

cnf(c_0_21,plain,
    ( r1_orders_2(X4,X5,X6)
    | ~ r1_orders_2(X1,X2,X3)
    | X2 != X5
    | X3 != X6
    | ~ m1_subset_1(X6,u1_struct_0(X4))
    | ~ m1_subset_1(X5,u1_struct_0(X4))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | g1_orders_2(u1_struct_0(X1),u1_orders_2(X1)) != g1_orders_2(u1_struct_0(X4),u1_orders_2(X4))
    | ~ l1_orders_2(X4)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_22,plain,
    ( r2_orders_2(X1,X2,X3)
    | g1_orders_2(u1_struct_0(X4),u1_orders_2(X4)) != g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))
    | ~ r2_orders_2(X4,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X2,u1_struct_0(X4))
    | ~ l1_orders_2(X1)
    | ~ l1_orders_2(X4) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_19])]),
    [final]).

cnf(c_0_23,negated_conjecture,
    ( u1_struct_0(esk2_0) = u1_struct_0(esk1_0) ),
    inference(er,[status(thm)],[c_0_20]),
    [final]).

cnf(c_0_24,plain,
    ( r1_orders_2(X1,X2,X3)
    | g1_orders_2(u1_struct_0(X4),u1_orders_2(X4)) != g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))
    | ~ r1_orders_2(X4,X2,X3)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X4))
    | ~ m1_subset_1(X2,u1_struct_0(X4))
    | ~ l1_orders_2(X1)
    | ~ l1_orders_2(X4) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_21])]),
    [final]).

cnf(c_0_25,plain,
    ( u1_struct_0(X1) = X2
    | g1_orders_2(u1_struct_0(X1),u1_orders_2(X1)) != g1_orders_2(X2,X3)
    | ~ l1_orders_2(X1) ),
    inference(spm,[status(thm)],[c_0_16,c_0_8]),
    [final]).

cnf(c_0_26,negated_conjecture,
    ( v13_waybel_0(esk3_0,esk1_0)
    | ~ v12_waybel_0(esk4_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_27,negated_conjecture,
    ( esk3_0 = esk4_0 ),
    inference(split_conjunct,[status(thm)],[c_0_9]),
    [final]).

cnf(c_0_28,negated_conjecture,
    ( v12_waybel_0(esk3_0,esk1_0)
    | ~ v13_waybel_0(esk4_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_29,negated_conjecture,
    ( ~ v13_waybel_0(esk4_0,esk2_0)
    | ~ v12_waybel_0(esk4_0,esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_30,negated_conjecture,
    ( r2_orders_2(esk2_0,X1,X2)
    | g1_orders_2(u1_struct_0(X3),u1_orders_2(X3)) != g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0))
    | ~ r2_orders_2(X3,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(esk1_0))
    | ~ m1_subset_1(X1,u1_struct_0(esk1_0))
    | ~ m1_subset_1(X2,u1_struct_0(X3))
    | ~ m1_subset_1(X1,u1_struct_0(X3))
    | ~ l1_orders_2(X3) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_23]),c_0_14]),c_0_12])]),
    [final]).

cnf(c_0_31,negated_conjecture,
    ( r1_orders_2(esk2_0,X1,X2)
    | g1_orders_2(u1_struct_0(X3),u1_orders_2(X3)) != g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0))
    | ~ r1_orders_2(X3,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(esk1_0))
    | ~ m1_subset_1(X1,u1_struct_0(esk1_0))
    | ~ m1_subset_1(X2,u1_struct_0(X3))
    | ~ m1_subset_1(X1,u1_struct_0(X3))
    | ~ l1_orders_2(X3) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_23]),c_0_14]),c_0_12])]),
    [final]).

cnf(c_0_32,negated_conjecture,
    ( u1_struct_0(esk1_0) = X1
    | g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0)) != g1_orders_2(X1,X2) ),
    inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_14]),c_0_18]),c_0_12])]),c_0_23]),
    [final]).

cnf(c_0_33,negated_conjecture,
    ( u1_orders_2(esk1_0) = X1
    | g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0)) != g1_orders_2(X2,X1) ),
    inference(rw,[status(thm)],[c_0_13,c_0_14]),
    [final]).

cnf(c_0_34,negated_conjecture,
    ( v13_waybel_0(esk3_0,esk1_0)
    | ~ v12_waybel_0(esk3_0,esk2_0) ),
    inference(rw,[status(thm)],[c_0_26,c_0_27]),
    [final]).

cnf(c_0_35,negated_conjecture,
    ( v12_waybel_0(esk3_0,esk1_0)
    | ~ v13_waybel_0(esk3_0,esk2_0) ),
    inference(rw,[status(thm)],[c_0_28,c_0_27]),
    [final]).

cnf(c_0_36,negated_conjecture,
    ( v13_waybel_0(esk3_0,esk1_0)
    | v12_waybel_0(esk3_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9]),
    [final]).

cnf(c_0_37,negated_conjecture,
    ( ~ v13_waybel_0(esk3_0,esk2_0)
    | ~ v12_waybel_0(esk3_0,esk2_0) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29,c_0_27]),c_0_27]),
    [final]).

cnf(c_0_38,negated_conjecture,
    ( m1_subset_1(u1_orders_2(esk1_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk1_0),u1_struct_0(esk1_0)))) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_17,c_0_23]),c_0_23]),
    [final]).

cnf(c_0_39,negated_conjecture,
    ( m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_9]),
    [final]).

cnf(c_0_40,negated_conjecture,
    ( l1_orders_2(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9]),
    [final]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.13/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.14/0.34  % Computer   : n018.cluster.edu
% 0.14/0.34  % Model      : x86_64 x86_64
% 0.14/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.14/0.34  % Memory     : 8042.1875MB
% 0.14/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.14/0.34  % CPULimit   : 60
% 0.14/0.34  % WCLimit    : 600
% 0.14/0.34  % DateTime   : Tue Dec  1 20:41:57 EST 2020
% 0.14/0.34  % CPUTime    : 
% 0.14/0.34  # Version: 2.5pre002
% 0.14/0.34  # No SInE strategy applied
% 0.14/0.34  # Trying AutoSched0 for 299 seconds
% 0.21/0.37  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.21/0.37  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.21/0.37  #
% 0.21/0.37  # Preprocessing time       : 0.027 s
% 0.21/0.37  # Presaturation interreduction done
% 0.21/0.37  
% 0.21/0.37  # No proof found!
% 0.21/0.37  # SZS status CounterSatisfiable
% 0.21/0.37  # SZS output start Saturation
% 0.21/0.37  fof(free_g1_orders_2, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))=>![X3, X4]:(g1_orders_2(X1,X2)=g1_orders_2(X3,X4)=>(X1=X3&X2=X4))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', free_g1_orders_2)).
% 0.21/0.37  fof(dt_u1_orders_2, axiom, ![X1]:(l1_orders_2(X1)=>m1_subset_1(u1_orders_2(X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_u1_orders_2)).
% 0.21/0.37  fof(t25_waybel_0, conjecture, ![X1]:(l1_orders_2(X1)=>![X2]:(l1_orders_2(X2)=>(g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))=g1_orders_2(u1_struct_0(X2),u1_orders_2(X2))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>![X4]:(m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X2)))=>(X3=X4=>((v12_waybel_0(X3,X1)=>v12_waybel_0(X4,X2))&(v13_waybel_0(X3,X1)=>v13_waybel_0(X4,X2))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t25_waybel_0)).
% 0.21/0.37  fof(t1_yellow_0, axiom, ![X1]:(l1_orders_2(X1)=>![X2]:(l1_orders_2(X2)=>(g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))=g1_orders_2(u1_struct_0(X2),u1_orders_2(X2))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>![X4]:(m1_subset_1(X4,u1_struct_0(X1))=>![X5]:(m1_subset_1(X5,u1_struct_0(X2))=>![X6]:(m1_subset_1(X6,u1_struct_0(X2))=>((X3=X5&X4=X6)=>((r1_orders_2(X1,X3,X4)=>r1_orders_2(X2,X5,X6))&(r2_orders_2(X1,X3,X4)=>r2_orders_2(X2,X5,X6))))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t1_yellow_0)).
% 0.21/0.37  fof(c_0_4, plain, ![X8, X9, X10, X11]:((X8=X10|g1_orders_2(X8,X9)!=g1_orders_2(X10,X11)|~m1_subset_1(X9,k1_zfmisc_1(k2_zfmisc_1(X8,X8))))&(X9=X11|g1_orders_2(X8,X9)!=g1_orders_2(X10,X11)|~m1_subset_1(X9,k1_zfmisc_1(k2_zfmisc_1(X8,X8))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[free_g1_orders_2])])])])).
% 0.21/0.37  fof(c_0_5, plain, ![X7]:(~l1_orders_2(X7)|m1_subset_1(u1_orders_2(X7),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X7),u1_struct_0(X7))))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_u1_orders_2])])).
% 0.21/0.37  fof(c_0_6, negated_conjecture, ~(![X1]:(l1_orders_2(X1)=>![X2]:(l1_orders_2(X2)=>(g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))=g1_orders_2(u1_struct_0(X2),u1_orders_2(X2))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>![X4]:(m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X2)))=>(X3=X4=>((v12_waybel_0(X3,X1)=>v12_waybel_0(X4,X2))&(v13_waybel_0(X3,X1)=>v13_waybel_0(X4,X2)))))))))), inference(assume_negation,[status(cth)],[t25_waybel_0])).
% 0.21/0.37  cnf(c_0_7, plain, (X1=X2|g1_orders_2(X3,X1)!=g1_orders_2(X4,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X3)))), inference(split_conjunct,[status(thm)],[c_0_4]), ['final']).
% 0.21/0.37  cnf(c_0_8, plain, (m1_subset_1(u1_orders_2(X1),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X1))))|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_5]), ['final']).
% 0.21/0.37  fof(c_0_9, negated_conjecture, (l1_orders_2(esk1_0)&(l1_orders_2(esk2_0)&(g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0))=g1_orders_2(u1_struct_0(esk2_0),u1_orders_2(esk2_0))&(m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))&(m1_subset_1(esk4_0,k1_zfmisc_1(u1_struct_0(esk2_0)))&(esk3_0=esk4_0&(((v13_waybel_0(esk3_0,esk1_0)|v12_waybel_0(esk3_0,esk1_0))&(~v13_waybel_0(esk4_0,esk2_0)|v12_waybel_0(esk3_0,esk1_0)))&((v13_waybel_0(esk3_0,esk1_0)|~v12_waybel_0(esk4_0,esk2_0))&(~v13_waybel_0(esk4_0,esk2_0)|~v12_waybel_0(esk4_0,esk2_0)))))))))), inference(distribute,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_6])])])])).
% 0.21/0.37  cnf(c_0_10, plain, (u1_orders_2(X1)=X2|g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))!=g1_orders_2(X3,X2)|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_7, c_0_8]), ['final']).
% 0.21/0.37  cnf(c_0_11, negated_conjecture, (g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0))=g1_orders_2(u1_struct_0(esk2_0),u1_orders_2(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.21/0.37  cnf(c_0_12, negated_conjecture, (l1_orders_2(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_9]), ['final']).
% 0.21/0.37  cnf(c_0_13, negated_conjecture, (u1_orders_2(esk2_0)=X1|g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0))!=g1_orders_2(X2,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_10, c_0_11]), c_0_12])])).
% 0.21/0.37  cnf(c_0_14, negated_conjecture, (u1_orders_2(esk2_0)=u1_orders_2(esk1_0)), inference(er,[status(thm)],[c_0_13]), ['final']).
% 0.21/0.37  fof(c_0_15, plain, ![X12, X13, X14, X15, X16, X17]:((~r1_orders_2(X12,X14,X15)|r1_orders_2(X13,X16,X17)|(X14!=X16|X15!=X17)|~m1_subset_1(X17,u1_struct_0(X13))|~m1_subset_1(X16,u1_struct_0(X13))|~m1_subset_1(X15,u1_struct_0(X12))|~m1_subset_1(X14,u1_struct_0(X12))|g1_orders_2(u1_struct_0(X12),u1_orders_2(X12))!=g1_orders_2(u1_struct_0(X13),u1_orders_2(X13))|~l1_orders_2(X13)|~l1_orders_2(X12))&(~r2_orders_2(X12,X14,X15)|r2_orders_2(X13,X16,X17)|(X14!=X16|X15!=X17)|~m1_subset_1(X17,u1_struct_0(X13))|~m1_subset_1(X16,u1_struct_0(X13))|~m1_subset_1(X15,u1_struct_0(X12))|~m1_subset_1(X14,u1_struct_0(X12))|g1_orders_2(u1_struct_0(X12),u1_orders_2(X12))!=g1_orders_2(u1_struct_0(X13),u1_orders_2(X13))|~l1_orders_2(X13)|~l1_orders_2(X12))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_yellow_0])])])])).
% 0.21/0.37  cnf(c_0_16, plain, (X1=X2|g1_orders_2(X1,X3)!=g1_orders_2(X2,X4)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(split_conjunct,[status(thm)],[c_0_4]), ['final']).
% 0.21/0.37  cnf(c_0_17, negated_conjecture, (m1_subset_1(u1_orders_2(esk1_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk2_0),u1_struct_0(esk2_0))))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_8, c_0_14]), c_0_12])])).
% 0.21/0.37  cnf(c_0_18, negated_conjecture, (g1_orders_2(u1_struct_0(esk2_0),u1_orders_2(esk1_0))=g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0))), inference(rw,[status(thm)],[c_0_11, c_0_14])).
% 0.21/0.37  cnf(c_0_19, plain, (r2_orders_2(X4,X5,X6)|~r2_orders_2(X1,X2,X3)|X2!=X5|X3!=X6|~m1_subset_1(X6,u1_struct_0(X4))|~m1_subset_1(X5,u1_struct_0(X4))|~m1_subset_1(X3,u1_struct_0(X1))|~m1_subset_1(X2,u1_struct_0(X1))|g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))!=g1_orders_2(u1_struct_0(X4),u1_orders_2(X4))|~l1_orders_2(X4)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.21/0.37  cnf(c_0_20, negated_conjecture, (u1_struct_0(esk2_0)=X1|g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0))!=g1_orders_2(X1,X2)), inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_17]), c_0_18])).
% 0.21/0.37  cnf(c_0_21, plain, (r1_orders_2(X4,X5,X6)|~r1_orders_2(X1,X2,X3)|X2!=X5|X3!=X6|~m1_subset_1(X6,u1_struct_0(X4))|~m1_subset_1(X5,u1_struct_0(X4))|~m1_subset_1(X3,u1_struct_0(X1))|~m1_subset_1(X2,u1_struct_0(X1))|g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))!=g1_orders_2(u1_struct_0(X4),u1_orders_2(X4))|~l1_orders_2(X4)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.21/0.37  cnf(c_0_22, plain, (r2_orders_2(X1,X2,X3)|g1_orders_2(u1_struct_0(X4),u1_orders_2(X4))!=g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))|~r2_orders_2(X4,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~m1_subset_1(X2,u1_struct_0(X1))|~m1_subset_1(X3,u1_struct_0(X4))|~m1_subset_1(X2,u1_struct_0(X4))|~l1_orders_2(X1)|~l1_orders_2(X4)), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_19])]), ['final']).
% 0.21/0.37  cnf(c_0_23, negated_conjecture, (u1_struct_0(esk2_0)=u1_struct_0(esk1_0)), inference(er,[status(thm)],[c_0_20]), ['final']).
% 0.21/0.37  cnf(c_0_24, plain, (r1_orders_2(X1,X2,X3)|g1_orders_2(u1_struct_0(X4),u1_orders_2(X4))!=g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))|~r1_orders_2(X4,X2,X3)|~m1_subset_1(X3,u1_struct_0(X1))|~m1_subset_1(X2,u1_struct_0(X1))|~m1_subset_1(X3,u1_struct_0(X4))|~m1_subset_1(X2,u1_struct_0(X4))|~l1_orders_2(X1)|~l1_orders_2(X4)), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_21])]), ['final']).
% 0.21/0.37  cnf(c_0_25, plain, (u1_struct_0(X1)=X2|g1_orders_2(u1_struct_0(X1),u1_orders_2(X1))!=g1_orders_2(X2,X3)|~l1_orders_2(X1)), inference(spm,[status(thm)],[c_0_16, c_0_8]), ['final']).
% 0.21/0.37  cnf(c_0_26, negated_conjecture, (v13_waybel_0(esk3_0,esk1_0)|~v12_waybel_0(esk4_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.21/0.37  cnf(c_0_27, negated_conjecture, (esk3_0=esk4_0), inference(split_conjunct,[status(thm)],[c_0_9]), ['final']).
% 0.21/0.37  cnf(c_0_28, negated_conjecture, (v12_waybel_0(esk3_0,esk1_0)|~v13_waybel_0(esk4_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.21/0.37  cnf(c_0_29, negated_conjecture, (~v13_waybel_0(esk4_0,esk2_0)|~v12_waybel_0(esk4_0,esk2_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.21/0.37  cnf(c_0_30, negated_conjecture, (r2_orders_2(esk2_0,X1,X2)|g1_orders_2(u1_struct_0(X3),u1_orders_2(X3))!=g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0))|~r2_orders_2(X3,X1,X2)|~m1_subset_1(X2,u1_struct_0(esk1_0))|~m1_subset_1(X1,u1_struct_0(esk1_0))|~m1_subset_1(X2,u1_struct_0(X3))|~m1_subset_1(X1,u1_struct_0(X3))|~l1_orders_2(X3)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22, c_0_23]), c_0_14]), c_0_12])]), ['final']).
% 0.21/0.37  cnf(c_0_31, negated_conjecture, (r1_orders_2(esk2_0,X1,X2)|g1_orders_2(u1_struct_0(X3),u1_orders_2(X3))!=g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0))|~r1_orders_2(X3,X1,X2)|~m1_subset_1(X2,u1_struct_0(esk1_0))|~m1_subset_1(X1,u1_struct_0(esk1_0))|~m1_subset_1(X2,u1_struct_0(X3))|~m1_subset_1(X1,u1_struct_0(X3))|~l1_orders_2(X3)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24, c_0_23]), c_0_14]), c_0_12])]), ['final']).
% 0.21/0.37  cnf(c_0_32, negated_conjecture, (u1_struct_0(esk1_0)=X1|g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0))!=g1_orders_2(X1,X2)), inference(rw,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_14]), c_0_18]), c_0_12])]), c_0_23]), ['final']).
% 0.21/0.37  cnf(c_0_33, negated_conjecture, (u1_orders_2(esk1_0)=X1|g1_orders_2(u1_struct_0(esk1_0),u1_orders_2(esk1_0))!=g1_orders_2(X2,X1)), inference(rw,[status(thm)],[c_0_13, c_0_14]), ['final']).
% 0.21/0.37  cnf(c_0_34, negated_conjecture, (v13_waybel_0(esk3_0,esk1_0)|~v12_waybel_0(esk3_0,esk2_0)), inference(rw,[status(thm)],[c_0_26, c_0_27]), ['final']).
% 0.21/0.37  cnf(c_0_35, negated_conjecture, (v12_waybel_0(esk3_0,esk1_0)|~v13_waybel_0(esk3_0,esk2_0)), inference(rw,[status(thm)],[c_0_28, c_0_27]), ['final']).
% 0.21/0.37  cnf(c_0_36, negated_conjecture, (v13_waybel_0(esk3_0,esk1_0)|v12_waybel_0(esk3_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_9]), ['final']).
% 0.21/0.37  cnf(c_0_37, negated_conjecture, (~v13_waybel_0(esk3_0,esk2_0)|~v12_waybel_0(esk3_0,esk2_0)), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_29, c_0_27]), c_0_27]), ['final']).
% 0.21/0.37  cnf(c_0_38, negated_conjecture, (m1_subset_1(u1_orders_2(esk1_0),k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk1_0),u1_struct_0(esk1_0))))), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_17, c_0_23]), c_0_23]), ['final']).
% 0.21/0.37  cnf(c_0_39, negated_conjecture, (m1_subset_1(esk3_0,k1_zfmisc_1(u1_struct_0(esk1_0)))), inference(split_conjunct,[status(thm)],[c_0_9]), ['final']).
% 0.21/0.37  cnf(c_0_40, negated_conjecture, (l1_orders_2(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_9]), ['final']).
% 0.21/0.37  # SZS output end Saturation
% 0.21/0.37  # Proof object total steps             : 41
% 0.21/0.37  # Proof object clause steps            : 32
% 0.21/0.37  # Proof object formula steps           : 9
% 0.21/0.37  # Proof object conjectures             : 26
% 0.21/0.37  # Proof object clause conjectures      : 23
% 0.21/0.37  # Proof object formula conjectures     : 3
% 0.21/0.37  # Proof object initial clauses used    : 14
% 0.21/0.37  # Proof object initial formulas used   : 4
% 0.21/0.37  # Proof object generating inferences   : 10
% 0.21/0.37  # Proof object simplifying inferences  : 27
% 0.21/0.37  # Parsed axioms                        : 4
% 0.21/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.21/0.37  # Initial clauses                      : 15
% 0.21/0.37  # Removed in clause preprocessing      : 0
% 0.21/0.37  # Initial clauses in saturation        : 15
% 0.21/0.37  # Processed clauses                    : 53
% 0.21/0.37  # ...of these trivial                  : 1
% 0.21/0.37  # ...subsumed                          : 7
% 0.21/0.37  # ...remaining for further processing  : 45
% 0.21/0.37  # Other redundant clauses eliminated   : 4
% 0.21/0.37  # Clauses deleted for lack of memory   : 0
% 0.21/0.37  # Backward-subsumed                    : 0
% 0.21/0.37  # Backward-rewritten                   : 6
% 0.21/0.37  # Generated clauses                    : 26
% 0.21/0.37  # ...of the previous two non-trivial   : 26
% 0.21/0.37  # Contextual simplify-reflections      : 0
% 0.21/0.37  # Paramodulations                      : 18
% 0.21/0.37  # Factorizations                       : 0
% 0.21/0.37  # Equation resolutions                 : 10
% 0.21/0.37  # Propositional unsat checks           : 0
% 0.21/0.37  #    Propositional check models        : 0
% 0.21/0.37  #    Propositional check unsatisfiable : 0
% 0.21/0.37  #    Propositional clauses             : 0
% 0.21/0.37  #    Propositional clauses after purity: 0
% 0.21/0.37  #    Propositional unsat core size     : 0
% 0.21/0.37  #    Propositional preprocessing time  : 0.000
% 0.21/0.37  #    Propositional encoding time       : 0.000
% 0.21/0.37  #    Propositional solver time         : 0.000
% 0.21/0.37  #    Success case prop preproc time    : 0.000
% 0.21/0.37  #    Success case prop encoding time   : 0.000
% 0.21/0.37  #    Success case prop solver time     : 0.000
% 0.21/0.37  # Current number of processed clauses  : 22
% 0.21/0.37  #    Positive orientable unit clauses  : 7
% 0.21/0.37  #    Positive unorientable unit clauses: 0
% 0.21/0.37  #    Negative unit clauses             : 0
% 0.21/0.37  #    Non-unit-clauses                  : 15
% 0.21/0.37  # Current number of unprocessed clauses: 0
% 0.21/0.37  # ...number of literals in the above   : 0
% 0.21/0.37  # Current number of archived formulas  : 0
% 0.21/0.37  # Current number of archived clauses   : 21
% 0.21/0.37  # Clause-clause subsumption calls (NU) : 186
% 0.21/0.37  # Rec. Clause-clause subsumption calls : 15
% 0.21/0.37  # Non-unit clause-clause subsumptions  : 7
% 0.21/0.37  # Unit Clause-clause subsumption calls : 0
% 0.21/0.37  # Rewrite failures with RHS unbound    : 0
% 0.21/0.37  # BW rewrite match attempts            : 4
% 0.21/0.37  # BW rewrite match successes           : 2
% 0.21/0.37  # Condensation attempts                : 0
% 0.21/0.37  # Condensation successes               : 0
% 0.21/0.37  # Termbank termtop insertions          : 1893
% 0.21/0.37  
% 0.21/0.37  # -------------------------------------------------
% 0.21/0.37  # User time                : 0.026 s
% 0.21/0.37  # System time              : 0.007 s
% 0.21/0.37  # Total time               : 0.034 s
% 0.21/0.37  # Maximum resident set size: 1576 pages
%------------------------------------------------------------------------------
