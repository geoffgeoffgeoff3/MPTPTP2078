%------------------------------------------------------------------------------
% File       : E---2.4
% Problem    : waybel_0__t21_waybel_0.p : TPTP v0.0.0. Released v0.0.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 300s
% DateTime   : Fri Oct 11 10:39:45 EDT 2019

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   38 ( 139 expanded)
%              Number of clauses        :   25 (  50 expanded)
%              Number of leaves         :    6 (  34 expanded)
%              Depth                    :   10
%              Number of atoms          :  142 ( 678 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :   13 (   5 average)
%              Maximal clause size      :   12 (   3 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t21_waybel_0,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v4_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X1))
             => ( r1_orders_2(X1,X2,X3)
               => r1_tarski(k5_waybel_0(X1,X2),k5_waybel_0(X1,X3)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/waybel_0__t21_waybel_0.p',t21_waybel_0)).

fof(dt_k5_waybel_0,axiom,(
    ! [X1,X2] :
      ( ( ~ v2_struct_0(X1)
        & l1_orders_2(X1)
        & m1_subset_1(X2,u1_struct_0(X1)) )
     => m1_subset_1(k5_waybel_0(X1,X2),k1_zfmisc_1(u1_struct_0(X1))) ) ),
    file('/export/starexec/sandbox2/benchmark/waybel_0__t21_waybel_0.p',dt_k5_waybel_0)).

fof(t4_subset,axiom,(
    ! [X1,X2,X3] :
      ( ( r2_hidden(X1,X2)
        & m1_subset_1(X2,k1_zfmisc_1(X3)) )
     => m1_subset_1(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/waybel_0__t21_waybel_0.p',t4_subset)).

fof(t26_orders_2,axiom,(
    ! [X1] :
      ( ( v4_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X1))
             => ! [X4] :
                  ( m1_subset_1(X4,u1_struct_0(X1))
                 => ( ( r1_orders_2(X1,X2,X3)
                      & r1_orders_2(X1,X3,X4) )
                   => r1_orders_2(X1,X2,X4) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/waybel_0__t21_waybel_0.p',t26_orders_2)).

fof(t17_waybel_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X1))
             => ( r2_hidden(X3,k5_waybel_0(X1,X2))
              <=> r1_orders_2(X1,X3,X2) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/waybel_0__t21_waybel_0.p',t17_waybel_0)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/waybel_0__t21_waybel_0.p',d3_tarski)).

fof(c_0_6,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v4_orders_2(X1)
          & l1_orders_2(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,u1_struct_0(X1))
           => ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(X1))
               => ( r1_orders_2(X1,X2,X3)
                 => r1_tarski(k5_waybel_0(X1,X2),k5_waybel_0(X1,X3)) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t21_waybel_0])).

fof(c_0_7,plain,(
    ! [X18,X19] :
      ( v2_struct_0(X18)
      | ~ l1_orders_2(X18)
      | ~ m1_subset_1(X19,u1_struct_0(X18))
      | m1_subset_1(k5_waybel_0(X18,X19),k1_zfmisc_1(u1_struct_0(X18))) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_k5_waybel_0])])])).

fof(c_0_8,negated_conjecture,
    ( ~ v2_struct_0(esk1_0)
    & v4_orders_2(esk1_0)
    & l1_orders_2(esk1_0)
    & m1_subset_1(esk2_0,u1_struct_0(esk1_0))
    & m1_subset_1(esk3_0,u1_struct_0(esk1_0))
    & r1_orders_2(esk1_0,esk2_0,esk3_0)
    & ~ r1_tarski(k5_waybel_0(esk1_0,esk2_0),k5_waybel_0(esk1_0,esk3_0)) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_6])])])])).

fof(c_0_9,plain,(
    ! [X42,X43,X44] :
      ( ~ r2_hidden(X42,X43)
      | ~ m1_subset_1(X43,k1_zfmisc_1(X44))
      | m1_subset_1(X42,X44) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t4_subset])])).

cnf(c_0_10,plain,
    ( v2_struct_0(X1)
    | m1_subset_1(k5_waybel_0(X1,X2),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_11,negated_conjecture,
    ( m1_subset_1(esk2_0,u1_struct_0(esk1_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_12,negated_conjecture,
    ( l1_orders_2(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,negated_conjecture,
    ( ~ v2_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_14,plain,(
    ! [X34,X35,X36,X37] :
      ( ~ v4_orders_2(X34)
      | ~ l1_orders_2(X34)
      | ~ m1_subset_1(X35,u1_struct_0(X34))
      | ~ m1_subset_1(X36,u1_struct_0(X34))
      | ~ m1_subset_1(X37,u1_struct_0(X34))
      | ~ r1_orders_2(X34,X35,X36)
      | ~ r1_orders_2(X34,X36,X37)
      | r1_orders_2(X34,X35,X37) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t26_orders_2])])])).

fof(c_0_15,plain,(
    ! [X29,X30,X31] :
      ( ( ~ r2_hidden(X31,k5_waybel_0(X29,X30))
        | r1_orders_2(X29,X31,X30)
        | ~ m1_subset_1(X31,u1_struct_0(X29))
        | ~ m1_subset_1(X30,u1_struct_0(X29))
        | v2_struct_0(X29)
        | ~ l1_orders_2(X29) )
      & ( ~ r1_orders_2(X29,X31,X30)
        | r2_hidden(X31,k5_waybel_0(X29,X30))
        | ~ m1_subset_1(X31,u1_struct_0(X29))
        | ~ m1_subset_1(X30,u1_struct_0(X29))
        | v2_struct_0(X29)
        | ~ l1_orders_2(X29) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t17_waybel_0])])])])])).

cnf(c_0_16,plain,
    ( m1_subset_1(X1,X3)
    | ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_17,negated_conjecture,
    ( m1_subset_1(k5_waybel_0(esk1_0,esk2_0),k1_zfmisc_1(u1_struct_0(esk1_0))) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_10,c_0_11]),c_0_12])]),c_0_13])).

cnf(c_0_18,plain,
    ( r1_orders_2(X1,X2,X4)
    | ~ v4_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ r1_orders_2(X1,X2,X3)
    | ~ r1_orders_2(X1,X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_19,negated_conjecture,
    ( m1_subset_1(esk3_0,u1_struct_0(esk1_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_20,negated_conjecture,
    ( v4_orders_2(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_21,plain,(
    ! [X10,X11,X12,X13,X14] :
      ( ( ~ r1_tarski(X10,X11)
        | ~ r2_hidden(X12,X10)
        | r2_hidden(X12,X11) )
      & ( r2_hidden(esk4_2(X13,X14),X13)
        | r1_tarski(X13,X14) )
      & ( ~ r2_hidden(esk4_2(X13,X14),X14)
        | r1_tarski(X13,X14) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_22,plain,
    ( r1_orders_2(X2,X1,X3)
    | v2_struct_0(X2)
    | ~ r2_hidden(X1,k5_waybel_0(X2,X3))
    | ~ m1_subset_1(X1,u1_struct_0(X2))
    | ~ m1_subset_1(X3,u1_struct_0(X2))
    | ~ l1_orders_2(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_23,negated_conjecture,
    ( m1_subset_1(X1,u1_struct_0(esk1_0))
    | ~ r2_hidden(X1,k5_waybel_0(esk1_0,esk2_0)) ),
    inference(spm,[status(thm)],[c_0_16,c_0_17])).

cnf(c_0_24,negated_conjecture,
    ( r1_orders_2(esk1_0,X1,esk3_0)
    | ~ r1_orders_2(esk1_0,X2,esk3_0)
    | ~ r1_orders_2(esk1_0,X1,X2)
    | ~ m1_subset_1(X2,u1_struct_0(esk1_0))
    | ~ m1_subset_1(X1,u1_struct_0(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_18,c_0_19]),c_0_12]),c_0_20])])).

cnf(c_0_25,negated_conjecture,
    ( r1_orders_2(esk1_0,esk2_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_26,plain,
    ( r2_hidden(esk4_2(X1,X2),X1)
    | r1_tarski(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_27,negated_conjecture,
    ( r1_orders_2(esk1_0,X1,esk2_0)
    | ~ r2_hidden(X1,k5_waybel_0(esk1_0,esk2_0)) ),
    inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_22,c_0_11]),c_0_12])]),c_0_13]),c_0_23])).

cnf(c_0_28,plain,
    ( r2_hidden(X2,k5_waybel_0(X1,X3))
    | v2_struct_0(X1)
    | ~ r1_orders_2(X1,X2,X3)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_29,negated_conjecture,
    ( r1_orders_2(esk1_0,X1,esk3_0)
    | ~ r1_orders_2(esk1_0,X1,esk2_0)
    | ~ m1_subset_1(X1,u1_struct_0(esk1_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_24,c_0_11]),c_0_25])])).

cnf(c_0_30,negated_conjecture,
    ( r1_tarski(k5_waybel_0(esk1_0,esk2_0),X1)
    | m1_subset_1(esk4_2(k5_waybel_0(esk1_0,esk2_0),X1),u1_struct_0(esk1_0)) ),
    inference(spm,[status(thm)],[c_0_23,c_0_26])).

cnf(c_0_31,negated_conjecture,
    ( r1_tarski(k5_waybel_0(esk1_0,esk2_0),X1)
    | r1_orders_2(esk1_0,esk4_2(k5_waybel_0(esk1_0,esk2_0),X1),esk2_0) ),
    inference(spm,[status(thm)],[c_0_27,c_0_26])).

cnf(c_0_32,negated_conjecture,
    ( r2_hidden(X1,k5_waybel_0(esk1_0,esk3_0))
    | ~ r1_orders_2(esk1_0,X1,esk3_0)
    | ~ m1_subset_1(X1,u1_struct_0(esk1_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_19]),c_0_12])]),c_0_13])).

cnf(c_0_33,negated_conjecture,
    ( r1_tarski(k5_waybel_0(esk1_0,esk2_0),X1)
    | r1_orders_2(esk1_0,esk4_2(k5_waybel_0(esk1_0,esk2_0),X1),esk3_0) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_31])).

cnf(c_0_34,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(esk4_2(X1,X2),X2) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_35,negated_conjecture,
    ( r2_hidden(esk4_2(k5_waybel_0(esk1_0,esk2_0),X1),k5_waybel_0(esk1_0,esk3_0))
    | r1_tarski(k5_waybel_0(esk1_0,esk2_0),X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_33]),c_0_30])).

cnf(c_0_36,negated_conjecture,
    ( ~ r1_tarski(k5_waybel_0(esk1_0,esk2_0),k5_waybel_0(esk1_0,esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_37,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_35]),c_0_36]),
    [proof]).
%------------------------------------------------------------------------------
