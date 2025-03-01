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
% DateTime   : Thu Dec  3 11:09:53 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :   82 (1624 expanded)
%              Number of clauses        :   57 ( 568 expanded)
%              Number of leaves         :   12 ( 394 expanded)
%              Depth                    :   13
%              Number of atoms          :  428 (12058 expanded)
%              Number of equality atoms :   48 ( 222 expanded)
%              Maximal formula depth    :   21 (   5 average)
%              Maximal clause size      :   58 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t52_orders_2,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X1))
             => ( r2_orders_2(X1,X2,X3)
              <=> r2_hidden(X2,k2_orders_2(X1,k6_domain_1(u1_struct_0(X1),X3))) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t52_orders_2)).

fof(t24_orders_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => r1_orders_2(X1,X2,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t24_orders_2)).

fof(t38_orders_2,axiom,(
    ! [X1] :
      ( ( v3_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X1))
             => ( ~ ( ? [X4] :
                        ( v6_orders_2(X4,X1)
                        & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
                        & r2_hidden(X2,X4)
                        & r2_hidden(X3,X4) )
                    & ~ r1_orders_2(X1,X2,X3)
                    & ~ r1_orders_2(X1,X3,X2) )
                & ~ ( ( r1_orders_2(X1,X2,X3)
                      | r1_orders_2(X1,X3,X2) )
                    & ! [X4] :
                        ( ( v6_orders_2(X4,X1)
                          & m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) )
                       => ~ ( r2_hidden(X2,X4)
                            & r2_hidden(X3,X4) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t38_orders_2)).

fof(t63_subset_1,axiom,(
    ! [X1,X2] :
      ( r2_hidden(X1,X2)
     => m1_subset_1(k1_tarski(X1),k1_zfmisc_1(X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t63_subset_1)).

fof(t69_enumset1,axiom,(
    ! [X1] : k2_tarski(X1,X1) = k1_tarski(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t69_enumset1)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).

fof(t5_subset,axiom,(
    ! [X1,X2,X3] :
      ~ ( r2_hidden(X1,X2)
        & m1_subset_1(X2,k1_zfmisc_1(X3))
        & v1_xboole_0(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_subset)).

fof(redefinition_k6_domain_1,axiom,(
    ! [X1,X2] :
      ( ( ~ v1_xboole_0(X1)
        & m1_subset_1(X2,X1) )
     => k6_domain_1(X1,X2) = k1_tarski(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k6_domain_1)).

fof(fraenkel_a_2_1_orders_2,axiom,(
    ! [X1,X2,X3] :
      ( ( ~ v2_struct_0(X2)
        & v3_orders_2(X2)
        & v4_orders_2(X2)
        & v5_orders_2(X2)
        & l1_orders_2(X2)
        & m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))) )
     => ( r2_hidden(X1,a_2_1_orders_2(X2,X3))
      <=> ? [X4] :
            ( m1_subset_1(X4,u1_struct_0(X2))
            & X1 = X4
            & ! [X5] :
                ( m1_subset_1(X5,u1_struct_0(X2))
               => ( r2_hidden(X5,X3)
                 => r2_orders_2(X2,X4,X5) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fraenkel_a_2_1_orders_2)).

fof(d13_orders_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v3_orders_2(X1)
        & v4_orders_2(X1)
        & v5_orders_2(X1)
        & l1_orders_2(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => k2_orders_2(X1,X2) = a_2_1_orders_2(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d13_orders_2)).

fof(d2_tarski,axiom,(
    ! [X1,X2,X3] :
      ( X3 = k2_tarski(X1,X2)
    <=> ! [X4] :
          ( r2_hidden(X4,X3)
        <=> ( X4 = X1
            | X4 = X2 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d2_tarski)).

fof(t4_subset,axiom,(
    ! [X1,X2,X3] :
      ( ( r2_hidden(X1,X2)
        & m1_subset_1(X2,k1_zfmisc_1(X3)) )
     => m1_subset_1(X1,X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t4_subset)).

fof(c_0_12,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v3_orders_2(X1)
          & v4_orders_2(X1)
          & v5_orders_2(X1)
          & l1_orders_2(X1) )
       => ! [X2] :
            ( m1_subset_1(X2,u1_struct_0(X1))
           => ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(X1))
               => ( r2_orders_2(X1,X2,X3)
                <=> r2_hidden(X2,k2_orders_2(X1,k6_domain_1(u1_struct_0(X1),X3))) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t52_orders_2])).

fof(c_0_13,plain,(
    ! [X37,X38] :
      ( v2_struct_0(X37)
      | ~ v3_orders_2(X37)
      | ~ l1_orders_2(X37)
      | ~ m1_subset_1(X38,u1_struct_0(X37))
      | r1_orders_2(X37,X38,X38) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t24_orders_2])])])])).

fof(c_0_14,negated_conjecture,
    ( ~ v2_struct_0(esk5_0)
    & v3_orders_2(esk5_0)
    & v4_orders_2(esk5_0)
    & v5_orders_2(esk5_0)
    & l1_orders_2(esk5_0)
    & m1_subset_1(esk6_0,u1_struct_0(esk5_0))
    & m1_subset_1(esk7_0,u1_struct_0(esk5_0))
    & ( ~ r2_orders_2(esk5_0,esk6_0,esk7_0)
      | ~ r2_hidden(esk6_0,k2_orders_2(esk5_0,k6_domain_1(u1_struct_0(esk5_0),esk7_0))) )
    & ( r2_orders_2(esk5_0,esk6_0,esk7_0)
      | r2_hidden(esk6_0,k2_orders_2(esk5_0,k6_domain_1(u1_struct_0(esk5_0),esk7_0))) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_12])])])])).

fof(c_0_15,plain,(
    ! [X39,X40,X41,X42] :
      ( ( ~ v6_orders_2(X42,X39)
        | ~ m1_subset_1(X42,k1_zfmisc_1(u1_struct_0(X39)))
        | ~ r2_hidden(X40,X42)
        | ~ r2_hidden(X41,X42)
        | r1_orders_2(X39,X40,X41)
        | r1_orders_2(X39,X41,X40)
        | ~ m1_subset_1(X41,u1_struct_0(X39))
        | ~ m1_subset_1(X40,u1_struct_0(X39))
        | ~ v3_orders_2(X39)
        | ~ l1_orders_2(X39) )
      & ( v6_orders_2(esk4_3(X39,X40,X41),X39)
        | ~ r1_orders_2(X39,X40,X41)
        | ~ m1_subset_1(X41,u1_struct_0(X39))
        | ~ m1_subset_1(X40,u1_struct_0(X39))
        | ~ v3_orders_2(X39)
        | ~ l1_orders_2(X39) )
      & ( m1_subset_1(esk4_3(X39,X40,X41),k1_zfmisc_1(u1_struct_0(X39)))
        | ~ r1_orders_2(X39,X40,X41)
        | ~ m1_subset_1(X41,u1_struct_0(X39))
        | ~ m1_subset_1(X40,u1_struct_0(X39))
        | ~ v3_orders_2(X39)
        | ~ l1_orders_2(X39) )
      & ( r2_hidden(X40,esk4_3(X39,X40,X41))
        | ~ r1_orders_2(X39,X40,X41)
        | ~ m1_subset_1(X41,u1_struct_0(X39))
        | ~ m1_subset_1(X40,u1_struct_0(X39))
        | ~ v3_orders_2(X39)
        | ~ l1_orders_2(X39) )
      & ( r2_hidden(X41,esk4_3(X39,X40,X41))
        | ~ r1_orders_2(X39,X40,X41)
        | ~ m1_subset_1(X41,u1_struct_0(X39))
        | ~ m1_subset_1(X40,u1_struct_0(X39))
        | ~ v3_orders_2(X39)
        | ~ l1_orders_2(X39) )
      & ( v6_orders_2(esk4_3(X39,X40,X41),X39)
        | ~ r1_orders_2(X39,X41,X40)
        | ~ m1_subset_1(X41,u1_struct_0(X39))
        | ~ m1_subset_1(X40,u1_struct_0(X39))
        | ~ v3_orders_2(X39)
        | ~ l1_orders_2(X39) )
      & ( m1_subset_1(esk4_3(X39,X40,X41),k1_zfmisc_1(u1_struct_0(X39)))
        | ~ r1_orders_2(X39,X41,X40)
        | ~ m1_subset_1(X41,u1_struct_0(X39))
        | ~ m1_subset_1(X40,u1_struct_0(X39))
        | ~ v3_orders_2(X39)
        | ~ l1_orders_2(X39) )
      & ( r2_hidden(X40,esk4_3(X39,X40,X41))
        | ~ r1_orders_2(X39,X41,X40)
        | ~ m1_subset_1(X41,u1_struct_0(X39))
        | ~ m1_subset_1(X40,u1_struct_0(X39))
        | ~ v3_orders_2(X39)
        | ~ l1_orders_2(X39) )
      & ( r2_hidden(X41,esk4_3(X39,X40,X41))
        | ~ r1_orders_2(X39,X41,X40)
        | ~ m1_subset_1(X41,u1_struct_0(X39))
        | ~ m1_subset_1(X40,u1_struct_0(X39))
        | ~ v3_orders_2(X39)
        | ~ l1_orders_2(X39) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t38_orders_2])])])])])])).

cnf(c_0_16,plain,
    ( v2_struct_0(X1)
    | r1_orders_2(X1,X2,X2)
    | ~ v3_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_17,negated_conjecture,
    ( m1_subset_1(esk7_0,u1_struct_0(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_18,negated_conjecture,
    ( l1_orders_2(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_19,negated_conjecture,
    ( v3_orders_2(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_20,negated_conjecture,
    ( ~ v2_struct_0(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

fof(c_0_21,plain,(
    ! [X16,X17] :
      ( ~ r2_hidden(X16,X17)
      | m1_subset_1(k1_tarski(X16),k1_zfmisc_1(X17)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t63_subset_1])])).

fof(c_0_22,plain,(
    ! [X15] : k2_tarski(X15,X15) = k1_tarski(X15) ),
    inference(variable_rename,[status(thm)],[t69_enumset1])).

fof(c_0_23,plain,(
    ! [X18,X19] :
      ( ~ m1_subset_1(X18,X19)
      | v1_xboole_0(X19)
      | r2_hidden(X18,X19) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

fof(c_0_24,plain,(
    ! [X23,X24,X25] :
      ( ~ r2_hidden(X23,X24)
      | ~ m1_subset_1(X24,k1_zfmisc_1(X25))
      | ~ v1_xboole_0(X25) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t5_subset])])).

cnf(c_0_25,plain,
    ( r2_hidden(X1,esk4_3(X2,X3,X1))
    | ~ r1_orders_2(X2,X3,X1)
    | ~ m1_subset_1(X1,u1_struct_0(X2))
    | ~ m1_subset_1(X3,u1_struct_0(X2))
    | ~ v3_orders_2(X2)
    | ~ l1_orders_2(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_26,negated_conjecture,
    ( r1_orders_2(esk5_0,esk7_0,esk7_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16,c_0_17]),c_0_18]),c_0_19])]),c_0_20])).

fof(c_0_27,plain,(
    ! [X35,X36] :
      ( v1_xboole_0(X35)
      | ~ m1_subset_1(X36,X35)
      | k6_domain_1(X35,X36) = k1_tarski(X36) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_k6_domain_1])])])).

fof(c_0_28,plain,(
    ! [X28,X29,X30,X32,X33] :
      ( ( m1_subset_1(esk2_3(X28,X29,X30),u1_struct_0(X29))
        | ~ r2_hidden(X28,a_2_1_orders_2(X29,X30))
        | v2_struct_0(X29)
        | ~ v3_orders_2(X29)
        | ~ v4_orders_2(X29)
        | ~ v5_orders_2(X29)
        | ~ l1_orders_2(X29)
        | ~ m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X29))) )
      & ( X28 = esk2_3(X28,X29,X30)
        | ~ r2_hidden(X28,a_2_1_orders_2(X29,X30))
        | v2_struct_0(X29)
        | ~ v3_orders_2(X29)
        | ~ v4_orders_2(X29)
        | ~ v5_orders_2(X29)
        | ~ l1_orders_2(X29)
        | ~ m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X29))) )
      & ( ~ m1_subset_1(X32,u1_struct_0(X29))
        | ~ r2_hidden(X32,X30)
        | r2_orders_2(X29,esk2_3(X28,X29,X30),X32)
        | ~ r2_hidden(X28,a_2_1_orders_2(X29,X30))
        | v2_struct_0(X29)
        | ~ v3_orders_2(X29)
        | ~ v4_orders_2(X29)
        | ~ v5_orders_2(X29)
        | ~ l1_orders_2(X29)
        | ~ m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X29))) )
      & ( m1_subset_1(esk3_4(X28,X29,X30,X33),u1_struct_0(X29))
        | ~ m1_subset_1(X33,u1_struct_0(X29))
        | X28 != X33
        | r2_hidden(X28,a_2_1_orders_2(X29,X30))
        | v2_struct_0(X29)
        | ~ v3_orders_2(X29)
        | ~ v4_orders_2(X29)
        | ~ v5_orders_2(X29)
        | ~ l1_orders_2(X29)
        | ~ m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X29))) )
      & ( r2_hidden(esk3_4(X28,X29,X30,X33),X30)
        | ~ m1_subset_1(X33,u1_struct_0(X29))
        | X28 != X33
        | r2_hidden(X28,a_2_1_orders_2(X29,X30))
        | v2_struct_0(X29)
        | ~ v3_orders_2(X29)
        | ~ v4_orders_2(X29)
        | ~ v5_orders_2(X29)
        | ~ l1_orders_2(X29)
        | ~ m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X29))) )
      & ( ~ r2_orders_2(X29,X33,esk3_4(X28,X29,X30,X33))
        | ~ m1_subset_1(X33,u1_struct_0(X29))
        | X28 != X33
        | r2_hidden(X28,a_2_1_orders_2(X29,X30))
        | v2_struct_0(X29)
        | ~ v3_orders_2(X29)
        | ~ v4_orders_2(X29)
        | ~ v5_orders_2(X29)
        | ~ l1_orders_2(X29)
        | ~ m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X29))) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fraenkel_a_2_1_orders_2])])])])])])).

cnf(c_0_29,plain,
    ( m1_subset_1(k1_tarski(X1),k1_zfmisc_1(X2))
    | ~ r2_hidden(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_30,plain,
    ( k2_tarski(X1,X1) = k1_tarski(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_31,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_32,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
    | ~ v1_xboole_0(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_33,negated_conjecture,
    ( r2_hidden(esk7_0,esk4_3(esk5_0,esk7_0,esk7_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25,c_0_26]),c_0_18]),c_0_19]),c_0_17])])).

cnf(c_0_34,plain,
    ( m1_subset_1(esk4_3(X1,X2,X3),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r1_orders_2(X1,X3,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ v3_orders_2(X1)
    | ~ l1_orders_2(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_35,plain,
    ( v1_xboole_0(X1)
    | k6_domain_1(X1,X2) = k1_tarski(X2)
    | ~ m1_subset_1(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_36,plain,
    ( r2_hidden(esk3_4(X1,X2,X3,X4),X3)
    | r2_hidden(X1,a_2_1_orders_2(X2,X3))
    | v2_struct_0(X2)
    | ~ m1_subset_1(X4,u1_struct_0(X2))
    | X1 != X4
    | ~ v3_orders_2(X2)
    | ~ v4_orders_2(X2)
    | ~ v5_orders_2(X2)
    | ~ l1_orders_2(X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_37,plain,
    ( m1_subset_1(k2_tarski(X1,X1),k1_zfmisc_1(X2))
    | ~ r2_hidden(X1,X2) ),
    inference(rw,[status(thm)],[c_0_29,c_0_30])).

cnf(c_0_38,negated_conjecture,
    ( v1_xboole_0(u1_struct_0(esk5_0))
    | r2_hidden(esk7_0,u1_struct_0(esk5_0)) ),
    inference(spm,[status(thm)],[c_0_31,c_0_17])).

cnf(c_0_39,negated_conjecture,
    ( ~ v1_xboole_0(X1)
    | ~ m1_subset_1(esk4_3(esk5_0,esk7_0,esk7_0),k1_zfmisc_1(X1)) ),
    inference(spm,[status(thm)],[c_0_32,c_0_33])).

cnf(c_0_40,negated_conjecture,
    ( m1_subset_1(esk4_3(esk5_0,esk7_0,esk7_0),k1_zfmisc_1(u1_struct_0(esk5_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34,c_0_26]),c_0_18]),c_0_19]),c_0_17])])).

cnf(c_0_41,plain,
    ( k6_domain_1(X1,X2) = k2_tarski(X2,X2)
    | v1_xboole_0(X1)
    | ~ m1_subset_1(X2,X1) ),
    inference(rw,[status(thm)],[c_0_35,c_0_30])).

fof(c_0_42,plain,(
    ! [X26,X27] :
      ( v2_struct_0(X26)
      | ~ v3_orders_2(X26)
      | ~ v4_orders_2(X26)
      | ~ v5_orders_2(X26)
      | ~ l1_orders_2(X26)
      | ~ m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26)))
      | k2_orders_2(X26,X27) = a_2_1_orders_2(X26,X27) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d13_orders_2])])])])).

fof(c_0_43,plain,(
    ! [X6,X7,X8,X9,X10,X11,X12,X13] :
      ( ( ~ r2_hidden(X9,X8)
        | X9 = X6
        | X9 = X7
        | X8 != k2_tarski(X6,X7) )
      & ( X10 != X6
        | r2_hidden(X10,X8)
        | X8 != k2_tarski(X6,X7) )
      & ( X10 != X7
        | r2_hidden(X10,X8)
        | X8 != k2_tarski(X6,X7) )
      & ( esk1_3(X11,X12,X13) != X11
        | ~ r2_hidden(esk1_3(X11,X12,X13),X13)
        | X13 = k2_tarski(X11,X12) )
      & ( esk1_3(X11,X12,X13) != X12
        | ~ r2_hidden(esk1_3(X11,X12,X13),X13)
        | X13 = k2_tarski(X11,X12) )
      & ( r2_hidden(esk1_3(X11,X12,X13),X13)
        | esk1_3(X11,X12,X13) = X11
        | esk1_3(X11,X12,X13) = X12
        | X13 = k2_tarski(X11,X12) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_tarski])])])])])])).

cnf(c_0_44,plain,
    ( v2_struct_0(X1)
    | r2_hidden(esk3_4(X2,X1,X3,X2),X3)
    | r2_hidden(X2,a_2_1_orders_2(X1,X3))
    | ~ l1_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v3_orders_2(X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(er,[status(thm)],[c_0_36])).

cnf(c_0_45,negated_conjecture,
    ( m1_subset_1(esk6_0,u1_struct_0(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_46,negated_conjecture,
    ( v5_orders_2(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_47,negated_conjecture,
    ( v4_orders_2(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_48,negated_conjecture,
    ( v1_xboole_0(u1_struct_0(esk5_0))
    | m1_subset_1(k2_tarski(esk7_0,esk7_0),k1_zfmisc_1(u1_struct_0(esk5_0))) ),
    inference(spm,[status(thm)],[c_0_37,c_0_38])).

cnf(c_0_49,negated_conjecture,
    ( ~ v1_xboole_0(u1_struct_0(esk5_0)) ),
    inference(spm,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_50,negated_conjecture,
    ( r2_orders_2(esk5_0,esk6_0,esk7_0)
    | r2_hidden(esk6_0,k2_orders_2(esk5_0,k6_domain_1(u1_struct_0(esk5_0),esk7_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_51,negated_conjecture,
    ( k6_domain_1(u1_struct_0(esk5_0),esk7_0) = k2_tarski(esk7_0,esk7_0)
    | v1_xboole_0(u1_struct_0(esk5_0)) ),
    inference(spm,[status(thm)],[c_0_41,c_0_17])).

cnf(c_0_52,plain,
    ( v2_struct_0(X1)
    | k2_orders_2(X1,X2) = a_2_1_orders_2(X1,X2)
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_42])).

cnf(c_0_53,plain,
    ( X1 = X3
    | X1 = X4
    | ~ r2_hidden(X1,X2)
    | X2 != k2_tarski(X3,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_54,negated_conjecture,
    ( r2_hidden(esk3_4(esk6_0,esk5_0,X1,esk6_0),X1)
    | r2_hidden(esk6_0,a_2_1_orders_2(esk5_0,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk5_0))) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_45]),c_0_18]),c_0_46]),c_0_47]),c_0_19])]),c_0_20])).

cnf(c_0_55,negated_conjecture,
    ( m1_subset_1(k2_tarski(esk7_0,esk7_0),k1_zfmisc_1(u1_struct_0(esk5_0))) ),
    inference(sr,[status(thm)],[c_0_48,c_0_49])).

cnf(c_0_56,negated_conjecture,
    ( r2_orders_2(esk5_0,esk6_0,esk7_0)
    | v1_xboole_0(u1_struct_0(esk5_0))
    | r2_hidden(esk6_0,k2_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0))) ),
    inference(spm,[status(thm)],[c_0_50,c_0_51])).

cnf(c_0_57,negated_conjecture,
    ( k2_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0)) = a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0))
    | v1_xboole_0(u1_struct_0(esk5_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52,c_0_48]),c_0_18]),c_0_46]),c_0_47]),c_0_19])]),c_0_20])).

fof(c_0_58,plain,(
    ! [X20,X21,X22] :
      ( ~ r2_hidden(X20,X21)
      | ~ m1_subset_1(X21,k1_zfmisc_1(X22))
      | m1_subset_1(X20,X22) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t4_subset])])).

cnf(c_0_59,plain,
    ( r2_hidden(X3,a_2_1_orders_2(X1,X4))
    | v2_struct_0(X1)
    | ~ r2_orders_2(X1,X2,esk3_4(X3,X1,X4,X2))
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | X3 != X2
    | ~ v3_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ l1_orders_2(X1)
    | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_60,plain,
    ( X1 = X2
    | X1 = X3
    | ~ r2_hidden(X1,k2_tarski(X3,X2)) ),
    inference(er,[status(thm)],[c_0_53])).

cnf(c_0_61,negated_conjecture,
    ( r2_hidden(esk3_4(esk6_0,esk5_0,k2_tarski(esk7_0,esk7_0),esk6_0),k2_tarski(esk7_0,esk7_0))
    | r2_hidden(esk6_0,a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0))) ),
    inference(spm,[status(thm)],[c_0_54,c_0_55])).

cnf(c_0_62,negated_conjecture,
    ( r2_orders_2(esk5_0,esk6_0,esk7_0)
    | v1_xboole_0(u1_struct_0(esk5_0))
    | r2_hidden(esk6_0,a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0))) ),
    inference(spm,[status(thm)],[c_0_56,c_0_57])).

cnf(c_0_63,negated_conjecture,
    ( ~ r2_orders_2(esk5_0,esk6_0,esk7_0)
    | ~ r2_hidden(esk6_0,k2_orders_2(esk5_0,k6_domain_1(u1_struct_0(esk5_0),esk7_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_14])).

cnf(c_0_64,negated_conjecture,
    ( k6_domain_1(u1_struct_0(esk5_0),esk7_0) = k2_tarski(esk7_0,esk7_0) ),
    inference(sr,[status(thm)],[c_0_51,c_0_49])).

cnf(c_0_65,plain,
    ( r2_orders_2(X2,esk2_3(X4,X2,X3),X1)
    | v2_struct_0(X2)
    | ~ m1_subset_1(X1,u1_struct_0(X2))
    | ~ r2_hidden(X1,X3)
    | ~ r2_hidden(X4,a_2_1_orders_2(X2,X3))
    | ~ v3_orders_2(X2)
    | ~ v4_orders_2(X2)
    | ~ v5_orders_2(X2)
    | ~ l1_orders_2(X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_66,plain,
    ( m1_subset_1(X1,X3)
    | ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_67,plain,
    ( r2_hidden(X1,X3)
    | X1 != X2
    | X3 != k2_tarski(X2,X4) ),
    inference(split_conjunct,[status(thm)],[c_0_43])).

cnf(c_0_68,plain,
    ( v2_struct_0(X1)
    | r2_hidden(X2,a_2_1_orders_2(X1,X3))
    | ~ r2_orders_2(X1,X2,esk3_4(X2,X1,X3,X2))
    | ~ l1_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v3_orders_2(X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(er,[status(thm)],[c_0_59])).

cnf(c_0_69,negated_conjecture,
    ( esk3_4(esk6_0,esk5_0,k2_tarski(esk7_0,esk7_0),esk6_0) = esk7_0
    | r2_hidden(esk6_0,a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0))) ),
    inference(spm,[status(thm)],[c_0_60,c_0_61])).

cnf(c_0_70,negated_conjecture,
    ( r2_orders_2(esk5_0,esk6_0,esk7_0)
    | r2_hidden(esk6_0,a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0))) ),
    inference(sr,[status(thm)],[c_0_62,c_0_49])).

cnf(c_0_71,negated_conjecture,
    ( ~ r2_orders_2(esk5_0,esk6_0,esk7_0)
    | ~ r2_hidden(esk6_0,k2_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0))) ),
    inference(rw,[status(thm)],[c_0_63,c_0_64])).

cnf(c_0_72,negated_conjecture,
    ( k2_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0)) = a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0)) ),
    inference(sr,[status(thm)],[c_0_57,c_0_49])).

cnf(c_0_73,plain,
    ( r2_orders_2(X1,esk2_3(X2,X1,X3),X4)
    | v2_struct_0(X1)
    | ~ l1_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v3_orders_2(X1)
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X2,a_2_1_orders_2(X1,X3))
    | ~ r2_hidden(X4,X3) ),
    inference(csr,[status(thm)],[c_0_65,c_0_66])).

cnf(c_0_74,plain,
    ( r2_hidden(X1,k2_tarski(X1,X2)) ),
    inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_67])])).

cnf(c_0_75,plain,
    ( X1 = esk2_3(X1,X2,X3)
    | v2_struct_0(X2)
    | ~ r2_hidden(X1,a_2_1_orders_2(X2,X3))
    | ~ v3_orders_2(X2)
    | ~ v4_orders_2(X2)
    | ~ v5_orders_2(X2)
    | ~ l1_orders_2(X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_76,negated_conjecture,
    ( r2_hidden(esk6_0,a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0))) ),
    inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68,c_0_69]),c_0_18]),c_0_46]),c_0_47]),c_0_19]),c_0_55]),c_0_45])]),c_0_20]),c_0_70])).

cnf(c_0_77,negated_conjecture,
    ( ~ r2_orders_2(esk5_0,esk6_0,esk7_0)
    | ~ r2_hidden(esk6_0,a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0))) ),
    inference(rw,[status(thm)],[c_0_71,c_0_72])).

cnf(c_0_78,plain,
    ( r2_orders_2(X1,esk2_3(X2,X1,k2_tarski(X3,X4)),X3)
    | v2_struct_0(X1)
    | ~ l1_orders_2(X1)
    | ~ v5_orders_2(X1)
    | ~ v4_orders_2(X1)
    | ~ v3_orders_2(X1)
    | ~ m1_subset_1(k2_tarski(X3,X4),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ r2_hidden(X2,a_2_1_orders_2(X1,k2_tarski(X3,X4))) ),
    inference(spm,[status(thm)],[c_0_73,c_0_74])).

cnf(c_0_79,negated_conjecture,
    ( esk2_3(esk6_0,esk5_0,k2_tarski(esk7_0,esk7_0)) = esk6_0 ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_76]),c_0_18]),c_0_46]),c_0_47]),c_0_19]),c_0_55])]),c_0_20])).

cnf(c_0_80,negated_conjecture,
    ( ~ r2_orders_2(esk5_0,esk6_0,esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_77,c_0_76])])).

cnf(c_0_81,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_78,c_0_76]),c_0_79]),c_0_18]),c_0_46]),c_0_47]),c_0_19]),c_0_55])]),c_0_80]),c_0_20]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.03/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n018.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:16:57 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.19/0.41  # AutoSched0-Mode selected heuristic G_E___208_B07_F1_SE_CS_SP_PS_S4d
% 0.19/0.41  # and selection function SelectCQIPrecWNTNp.
% 0.19/0.41  #
% 0.19/0.41  # Preprocessing time       : 0.030 s
% 0.19/0.41  # Presaturation interreduction done
% 0.19/0.41  
% 0.19/0.41  # Proof found!
% 0.19/0.41  # SZS status Theorem
% 0.19/0.41  # SZS output start CNFRefutation
% 0.19/0.41  fof(t52_orders_2, conjecture, ![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(r2_orders_2(X1,X2,X3)<=>r2_hidden(X2,k2_orders_2(X1,k6_domain_1(u1_struct_0(X1),X3))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t52_orders_2)).
% 0.19/0.41  fof(t24_orders_2, axiom, ![X1]:(((~(v2_struct_0(X1))&v3_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>r1_orders_2(X1,X2,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t24_orders_2)).
% 0.19/0.41  fof(t38_orders_2, axiom, ![X1]:((v3_orders_2(X1)&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(~(((?[X4]:(((v6_orders_2(X4,X1)&m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))))&r2_hidden(X2,X4))&r2_hidden(X3,X4))&~(r1_orders_2(X1,X2,X3)))&~(r1_orders_2(X1,X3,X2))))&~(((r1_orders_2(X1,X2,X3)|r1_orders_2(X1,X3,X2))&![X4]:((v6_orders_2(X4,X1)&m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1))))=>~((r2_hidden(X2,X4)&r2_hidden(X3,X4)))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t38_orders_2)).
% 0.19/0.41  fof(t63_subset_1, axiom, ![X1, X2]:(r2_hidden(X1,X2)=>m1_subset_1(k1_tarski(X1),k1_zfmisc_1(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t63_subset_1)).
% 0.19/0.41  fof(t69_enumset1, axiom, ![X1]:k2_tarski(X1,X1)=k1_tarski(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t69_enumset1)).
% 0.19/0.41  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_subset)).
% 0.19/0.41  fof(t5_subset, axiom, ![X1, X2, X3]:~(((r2_hidden(X1,X2)&m1_subset_1(X2,k1_zfmisc_1(X3)))&v1_xboole_0(X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t5_subset)).
% 0.19/0.41  fof(redefinition_k6_domain_1, axiom, ![X1, X2]:((~(v1_xboole_0(X1))&m1_subset_1(X2,X1))=>k6_domain_1(X1,X2)=k1_tarski(X2)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k6_domain_1)).
% 0.19/0.41  fof(fraenkel_a_2_1_orders_2, axiom, ![X1, X2, X3]:((((((~(v2_struct_0(X2))&v3_orders_2(X2))&v4_orders_2(X2))&v5_orders_2(X2))&l1_orders_2(X2))&m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2))))=>(r2_hidden(X1,a_2_1_orders_2(X2,X3))<=>?[X4]:((m1_subset_1(X4,u1_struct_0(X2))&X1=X4)&![X5]:(m1_subset_1(X5,u1_struct_0(X2))=>(r2_hidden(X5,X3)=>r2_orders_2(X2,X4,X5)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fraenkel_a_2_1_orders_2)).
% 0.19/0.41  fof(d13_orders_2, axiom, ![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>k2_orders_2(X1,X2)=a_2_1_orders_2(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d13_orders_2)).
% 0.19/0.41  fof(d2_tarski, axiom, ![X1, X2, X3]:(X3=k2_tarski(X1,X2)<=>![X4]:(r2_hidden(X4,X3)<=>(X4=X1|X4=X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d2_tarski)).
% 0.19/0.41  fof(t4_subset, axiom, ![X1, X2, X3]:((r2_hidden(X1,X2)&m1_subset_1(X2,k1_zfmisc_1(X3)))=>m1_subset_1(X1,X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t4_subset)).
% 0.19/0.41  fof(c_0_12, negated_conjecture, ~(![X1]:(((((~(v2_struct_0(X1))&v3_orders_2(X1))&v4_orders_2(X1))&v5_orders_2(X1))&l1_orders_2(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>(r2_orders_2(X1,X2,X3)<=>r2_hidden(X2,k2_orders_2(X1,k6_domain_1(u1_struct_0(X1),X3)))))))), inference(assume_negation,[status(cth)],[t52_orders_2])).
% 0.19/0.41  fof(c_0_13, plain, ![X37, X38]:(v2_struct_0(X37)|~v3_orders_2(X37)|~l1_orders_2(X37)|(~m1_subset_1(X38,u1_struct_0(X37))|r1_orders_2(X37,X38,X38))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t24_orders_2])])])])).
% 0.19/0.41  fof(c_0_14, negated_conjecture, (((((~v2_struct_0(esk5_0)&v3_orders_2(esk5_0))&v4_orders_2(esk5_0))&v5_orders_2(esk5_0))&l1_orders_2(esk5_0))&(m1_subset_1(esk6_0,u1_struct_0(esk5_0))&(m1_subset_1(esk7_0,u1_struct_0(esk5_0))&((~r2_orders_2(esk5_0,esk6_0,esk7_0)|~r2_hidden(esk6_0,k2_orders_2(esk5_0,k6_domain_1(u1_struct_0(esk5_0),esk7_0))))&(r2_orders_2(esk5_0,esk6_0,esk7_0)|r2_hidden(esk6_0,k2_orders_2(esk5_0,k6_domain_1(u1_struct_0(esk5_0),esk7_0)))))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_12])])])])).
% 0.19/0.41  fof(c_0_15, plain, ![X39, X40, X41, X42]:((~v6_orders_2(X42,X39)|~m1_subset_1(X42,k1_zfmisc_1(u1_struct_0(X39)))|~r2_hidden(X40,X42)|~r2_hidden(X41,X42)|r1_orders_2(X39,X40,X41)|r1_orders_2(X39,X41,X40)|~m1_subset_1(X41,u1_struct_0(X39))|~m1_subset_1(X40,u1_struct_0(X39))|(~v3_orders_2(X39)|~l1_orders_2(X39)))&((((v6_orders_2(esk4_3(X39,X40,X41),X39)|~r1_orders_2(X39,X40,X41)|~m1_subset_1(X41,u1_struct_0(X39))|~m1_subset_1(X40,u1_struct_0(X39))|(~v3_orders_2(X39)|~l1_orders_2(X39)))&(m1_subset_1(esk4_3(X39,X40,X41),k1_zfmisc_1(u1_struct_0(X39)))|~r1_orders_2(X39,X40,X41)|~m1_subset_1(X41,u1_struct_0(X39))|~m1_subset_1(X40,u1_struct_0(X39))|(~v3_orders_2(X39)|~l1_orders_2(X39))))&((r2_hidden(X40,esk4_3(X39,X40,X41))|~r1_orders_2(X39,X40,X41)|~m1_subset_1(X41,u1_struct_0(X39))|~m1_subset_1(X40,u1_struct_0(X39))|(~v3_orders_2(X39)|~l1_orders_2(X39)))&(r2_hidden(X41,esk4_3(X39,X40,X41))|~r1_orders_2(X39,X40,X41)|~m1_subset_1(X41,u1_struct_0(X39))|~m1_subset_1(X40,u1_struct_0(X39))|(~v3_orders_2(X39)|~l1_orders_2(X39)))))&(((v6_orders_2(esk4_3(X39,X40,X41),X39)|~r1_orders_2(X39,X41,X40)|~m1_subset_1(X41,u1_struct_0(X39))|~m1_subset_1(X40,u1_struct_0(X39))|(~v3_orders_2(X39)|~l1_orders_2(X39)))&(m1_subset_1(esk4_3(X39,X40,X41),k1_zfmisc_1(u1_struct_0(X39)))|~r1_orders_2(X39,X41,X40)|~m1_subset_1(X41,u1_struct_0(X39))|~m1_subset_1(X40,u1_struct_0(X39))|(~v3_orders_2(X39)|~l1_orders_2(X39))))&((r2_hidden(X40,esk4_3(X39,X40,X41))|~r1_orders_2(X39,X41,X40)|~m1_subset_1(X41,u1_struct_0(X39))|~m1_subset_1(X40,u1_struct_0(X39))|(~v3_orders_2(X39)|~l1_orders_2(X39)))&(r2_hidden(X41,esk4_3(X39,X40,X41))|~r1_orders_2(X39,X41,X40)|~m1_subset_1(X41,u1_struct_0(X39))|~m1_subset_1(X40,u1_struct_0(X39))|(~v3_orders_2(X39)|~l1_orders_2(X39))))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t38_orders_2])])])])])])).
% 0.19/0.41  cnf(c_0_16, plain, (v2_struct_0(X1)|r1_orders_2(X1,X2,X2)|~v3_orders_2(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.19/0.41  cnf(c_0_17, negated_conjecture, (m1_subset_1(esk7_0,u1_struct_0(esk5_0))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.41  cnf(c_0_18, negated_conjecture, (l1_orders_2(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.41  cnf(c_0_19, negated_conjecture, (v3_orders_2(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.41  cnf(c_0_20, negated_conjecture, (~v2_struct_0(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.41  fof(c_0_21, plain, ![X16, X17]:(~r2_hidden(X16,X17)|m1_subset_1(k1_tarski(X16),k1_zfmisc_1(X17))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t63_subset_1])])).
% 0.19/0.41  fof(c_0_22, plain, ![X15]:k2_tarski(X15,X15)=k1_tarski(X15), inference(variable_rename,[status(thm)],[t69_enumset1])).
% 0.19/0.41  fof(c_0_23, plain, ![X18, X19]:(~m1_subset_1(X18,X19)|(v1_xboole_0(X19)|r2_hidden(X18,X19))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.19/0.41  fof(c_0_24, plain, ![X23, X24, X25]:(~r2_hidden(X23,X24)|~m1_subset_1(X24,k1_zfmisc_1(X25))|~v1_xboole_0(X25)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t5_subset])])).
% 0.19/0.41  cnf(c_0_25, plain, (r2_hidden(X1,esk4_3(X2,X3,X1))|~r1_orders_2(X2,X3,X1)|~m1_subset_1(X1,u1_struct_0(X2))|~m1_subset_1(X3,u1_struct_0(X2))|~v3_orders_2(X2)|~l1_orders_2(X2)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.41  cnf(c_0_26, negated_conjecture, (r1_orders_2(esk5_0,esk7_0,esk7_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_16, c_0_17]), c_0_18]), c_0_19])]), c_0_20])).
% 0.19/0.41  fof(c_0_27, plain, ![X35, X36]:(v1_xboole_0(X35)|~m1_subset_1(X36,X35)|k6_domain_1(X35,X36)=k1_tarski(X36)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[redefinition_k6_domain_1])])])).
% 0.19/0.41  fof(c_0_28, plain, ![X28, X29, X30, X32, X33]:((((m1_subset_1(esk2_3(X28,X29,X30),u1_struct_0(X29))|~r2_hidden(X28,a_2_1_orders_2(X29,X30))|(v2_struct_0(X29)|~v3_orders_2(X29)|~v4_orders_2(X29)|~v5_orders_2(X29)|~l1_orders_2(X29)|~m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X29)))))&(X28=esk2_3(X28,X29,X30)|~r2_hidden(X28,a_2_1_orders_2(X29,X30))|(v2_struct_0(X29)|~v3_orders_2(X29)|~v4_orders_2(X29)|~v5_orders_2(X29)|~l1_orders_2(X29)|~m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X29))))))&(~m1_subset_1(X32,u1_struct_0(X29))|(~r2_hidden(X32,X30)|r2_orders_2(X29,esk2_3(X28,X29,X30),X32))|~r2_hidden(X28,a_2_1_orders_2(X29,X30))|(v2_struct_0(X29)|~v3_orders_2(X29)|~v4_orders_2(X29)|~v5_orders_2(X29)|~l1_orders_2(X29)|~m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X29))))))&((m1_subset_1(esk3_4(X28,X29,X30,X33),u1_struct_0(X29))|(~m1_subset_1(X33,u1_struct_0(X29))|X28!=X33)|r2_hidden(X28,a_2_1_orders_2(X29,X30))|(v2_struct_0(X29)|~v3_orders_2(X29)|~v4_orders_2(X29)|~v5_orders_2(X29)|~l1_orders_2(X29)|~m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X29)))))&((r2_hidden(esk3_4(X28,X29,X30,X33),X30)|(~m1_subset_1(X33,u1_struct_0(X29))|X28!=X33)|r2_hidden(X28,a_2_1_orders_2(X29,X30))|(v2_struct_0(X29)|~v3_orders_2(X29)|~v4_orders_2(X29)|~v5_orders_2(X29)|~l1_orders_2(X29)|~m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X29)))))&(~r2_orders_2(X29,X33,esk3_4(X28,X29,X30,X33))|(~m1_subset_1(X33,u1_struct_0(X29))|X28!=X33)|r2_hidden(X28,a_2_1_orders_2(X29,X30))|(v2_struct_0(X29)|~v3_orders_2(X29)|~v4_orders_2(X29)|~v5_orders_2(X29)|~l1_orders_2(X29)|~m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X29)))))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fraenkel_a_2_1_orders_2])])])])])])).
% 0.19/0.41  cnf(c_0_29, plain, (m1_subset_1(k1_tarski(X1),k1_zfmisc_1(X2))|~r2_hidden(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.19/0.41  cnf(c_0_30, plain, (k2_tarski(X1,X1)=k1_tarski(X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.41  cnf(c_0_31, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.19/0.41  cnf(c_0_32, plain, (~r2_hidden(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X3))|~v1_xboole_0(X3)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.41  cnf(c_0_33, negated_conjecture, (r2_hidden(esk7_0,esk4_3(esk5_0,esk7_0,esk7_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_25, c_0_26]), c_0_18]), c_0_19]), c_0_17])])).
% 0.19/0.41  cnf(c_0_34, plain, (m1_subset_1(esk4_3(X1,X2,X3),k1_zfmisc_1(u1_struct_0(X1)))|~r1_orders_2(X1,X3,X2)|~m1_subset_1(X3,u1_struct_0(X1))|~m1_subset_1(X2,u1_struct_0(X1))|~v3_orders_2(X1)|~l1_orders_2(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.19/0.41  cnf(c_0_35, plain, (v1_xboole_0(X1)|k6_domain_1(X1,X2)=k1_tarski(X2)|~m1_subset_1(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.19/0.41  cnf(c_0_36, plain, (r2_hidden(esk3_4(X1,X2,X3,X4),X3)|r2_hidden(X1,a_2_1_orders_2(X2,X3))|v2_struct_0(X2)|~m1_subset_1(X4,u1_struct_0(X2))|X1!=X4|~v3_orders_2(X2)|~v4_orders_2(X2)|~v5_orders_2(X2)|~l1_orders_2(X2)|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.19/0.41  cnf(c_0_37, plain, (m1_subset_1(k2_tarski(X1,X1),k1_zfmisc_1(X2))|~r2_hidden(X1,X2)), inference(rw,[status(thm)],[c_0_29, c_0_30])).
% 0.19/0.41  cnf(c_0_38, negated_conjecture, (v1_xboole_0(u1_struct_0(esk5_0))|r2_hidden(esk7_0,u1_struct_0(esk5_0))), inference(spm,[status(thm)],[c_0_31, c_0_17])).
% 0.19/0.41  cnf(c_0_39, negated_conjecture, (~v1_xboole_0(X1)|~m1_subset_1(esk4_3(esk5_0,esk7_0,esk7_0),k1_zfmisc_1(X1))), inference(spm,[status(thm)],[c_0_32, c_0_33])).
% 0.19/0.41  cnf(c_0_40, negated_conjecture, (m1_subset_1(esk4_3(esk5_0,esk7_0,esk7_0),k1_zfmisc_1(u1_struct_0(esk5_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_34, c_0_26]), c_0_18]), c_0_19]), c_0_17])])).
% 0.19/0.41  cnf(c_0_41, plain, (k6_domain_1(X1,X2)=k2_tarski(X2,X2)|v1_xboole_0(X1)|~m1_subset_1(X2,X1)), inference(rw,[status(thm)],[c_0_35, c_0_30])).
% 0.19/0.41  fof(c_0_42, plain, ![X26, X27]:(v2_struct_0(X26)|~v3_orders_2(X26)|~v4_orders_2(X26)|~v5_orders_2(X26)|~l1_orders_2(X26)|(~m1_subset_1(X27,k1_zfmisc_1(u1_struct_0(X26)))|k2_orders_2(X26,X27)=a_2_1_orders_2(X26,X27))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d13_orders_2])])])])).
% 0.19/0.41  fof(c_0_43, plain, ![X6, X7, X8, X9, X10, X11, X12, X13]:(((~r2_hidden(X9,X8)|(X9=X6|X9=X7)|X8!=k2_tarski(X6,X7))&((X10!=X6|r2_hidden(X10,X8)|X8!=k2_tarski(X6,X7))&(X10!=X7|r2_hidden(X10,X8)|X8!=k2_tarski(X6,X7))))&(((esk1_3(X11,X12,X13)!=X11|~r2_hidden(esk1_3(X11,X12,X13),X13)|X13=k2_tarski(X11,X12))&(esk1_3(X11,X12,X13)!=X12|~r2_hidden(esk1_3(X11,X12,X13),X13)|X13=k2_tarski(X11,X12)))&(r2_hidden(esk1_3(X11,X12,X13),X13)|(esk1_3(X11,X12,X13)=X11|esk1_3(X11,X12,X13)=X12)|X13=k2_tarski(X11,X12)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d2_tarski])])])])])])).
% 0.19/0.41  cnf(c_0_44, plain, (v2_struct_0(X1)|r2_hidden(esk3_4(X2,X1,X3,X2),X3)|r2_hidden(X2,a_2_1_orders_2(X1,X3))|~l1_orders_2(X1)|~v5_orders_2(X1)|~v4_orders_2(X1)|~v3_orders_2(X1)|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X2,u1_struct_0(X1))), inference(er,[status(thm)],[c_0_36])).
% 0.19/0.41  cnf(c_0_45, negated_conjecture, (m1_subset_1(esk6_0,u1_struct_0(esk5_0))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.41  cnf(c_0_46, negated_conjecture, (v5_orders_2(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.41  cnf(c_0_47, negated_conjecture, (v4_orders_2(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.41  cnf(c_0_48, negated_conjecture, (v1_xboole_0(u1_struct_0(esk5_0))|m1_subset_1(k2_tarski(esk7_0,esk7_0),k1_zfmisc_1(u1_struct_0(esk5_0)))), inference(spm,[status(thm)],[c_0_37, c_0_38])).
% 0.19/0.41  cnf(c_0_49, negated_conjecture, (~v1_xboole_0(u1_struct_0(esk5_0))), inference(spm,[status(thm)],[c_0_39, c_0_40])).
% 0.19/0.41  cnf(c_0_50, negated_conjecture, (r2_orders_2(esk5_0,esk6_0,esk7_0)|r2_hidden(esk6_0,k2_orders_2(esk5_0,k6_domain_1(u1_struct_0(esk5_0),esk7_0)))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.41  cnf(c_0_51, negated_conjecture, (k6_domain_1(u1_struct_0(esk5_0),esk7_0)=k2_tarski(esk7_0,esk7_0)|v1_xboole_0(u1_struct_0(esk5_0))), inference(spm,[status(thm)],[c_0_41, c_0_17])).
% 0.19/0.41  cnf(c_0_52, plain, (v2_struct_0(X1)|k2_orders_2(X1,X2)=a_2_1_orders_2(X1,X2)|~v3_orders_2(X1)|~v4_orders_2(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_42])).
% 0.19/0.41  cnf(c_0_53, plain, (X1=X3|X1=X4|~r2_hidden(X1,X2)|X2!=k2_tarski(X3,X4)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.19/0.41  cnf(c_0_54, negated_conjecture, (r2_hidden(esk3_4(esk6_0,esk5_0,X1,esk6_0),X1)|r2_hidden(esk6_0,a_2_1_orders_2(esk5_0,X1))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk5_0)))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_45]), c_0_18]), c_0_46]), c_0_47]), c_0_19])]), c_0_20])).
% 0.19/0.41  cnf(c_0_55, negated_conjecture, (m1_subset_1(k2_tarski(esk7_0,esk7_0),k1_zfmisc_1(u1_struct_0(esk5_0)))), inference(sr,[status(thm)],[c_0_48, c_0_49])).
% 0.19/0.41  cnf(c_0_56, negated_conjecture, (r2_orders_2(esk5_0,esk6_0,esk7_0)|v1_xboole_0(u1_struct_0(esk5_0))|r2_hidden(esk6_0,k2_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0)))), inference(spm,[status(thm)],[c_0_50, c_0_51])).
% 0.19/0.41  cnf(c_0_57, negated_conjecture, (k2_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0))=a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0))|v1_xboole_0(u1_struct_0(esk5_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_52, c_0_48]), c_0_18]), c_0_46]), c_0_47]), c_0_19])]), c_0_20])).
% 0.19/0.41  fof(c_0_58, plain, ![X20, X21, X22]:(~r2_hidden(X20,X21)|~m1_subset_1(X21,k1_zfmisc_1(X22))|m1_subset_1(X20,X22)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t4_subset])])).
% 0.19/0.41  cnf(c_0_59, plain, (r2_hidden(X3,a_2_1_orders_2(X1,X4))|v2_struct_0(X1)|~r2_orders_2(X1,X2,esk3_4(X3,X1,X4,X2))|~m1_subset_1(X2,u1_struct_0(X1))|X3!=X2|~v3_orders_2(X1)|~v4_orders_2(X1)|~v5_orders_2(X1)|~l1_orders_2(X1)|~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.19/0.41  cnf(c_0_60, plain, (X1=X2|X1=X3|~r2_hidden(X1,k2_tarski(X3,X2))), inference(er,[status(thm)],[c_0_53])).
% 0.19/0.41  cnf(c_0_61, negated_conjecture, (r2_hidden(esk3_4(esk6_0,esk5_0,k2_tarski(esk7_0,esk7_0),esk6_0),k2_tarski(esk7_0,esk7_0))|r2_hidden(esk6_0,a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0)))), inference(spm,[status(thm)],[c_0_54, c_0_55])).
% 0.19/0.41  cnf(c_0_62, negated_conjecture, (r2_orders_2(esk5_0,esk6_0,esk7_0)|v1_xboole_0(u1_struct_0(esk5_0))|r2_hidden(esk6_0,a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0)))), inference(spm,[status(thm)],[c_0_56, c_0_57])).
% 0.19/0.41  cnf(c_0_63, negated_conjecture, (~r2_orders_2(esk5_0,esk6_0,esk7_0)|~r2_hidden(esk6_0,k2_orders_2(esk5_0,k6_domain_1(u1_struct_0(esk5_0),esk7_0)))), inference(split_conjunct,[status(thm)],[c_0_14])).
% 0.19/0.41  cnf(c_0_64, negated_conjecture, (k6_domain_1(u1_struct_0(esk5_0),esk7_0)=k2_tarski(esk7_0,esk7_0)), inference(sr,[status(thm)],[c_0_51, c_0_49])).
% 0.19/0.41  cnf(c_0_65, plain, (r2_orders_2(X2,esk2_3(X4,X2,X3),X1)|v2_struct_0(X2)|~m1_subset_1(X1,u1_struct_0(X2))|~r2_hidden(X1,X3)|~r2_hidden(X4,a_2_1_orders_2(X2,X3))|~v3_orders_2(X2)|~v4_orders_2(X2)|~v5_orders_2(X2)|~l1_orders_2(X2)|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.19/0.41  cnf(c_0_66, plain, (m1_subset_1(X1,X3)|~r2_hidden(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X3))), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.19/0.41  cnf(c_0_67, plain, (r2_hidden(X1,X3)|X1!=X2|X3!=k2_tarski(X2,X4)), inference(split_conjunct,[status(thm)],[c_0_43])).
% 0.19/0.41  cnf(c_0_68, plain, (v2_struct_0(X1)|r2_hidden(X2,a_2_1_orders_2(X1,X3))|~r2_orders_2(X1,X2,esk3_4(X2,X1,X3,X2))|~l1_orders_2(X1)|~v5_orders_2(X1)|~v4_orders_2(X1)|~v3_orders_2(X1)|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X2,u1_struct_0(X1))), inference(er,[status(thm)],[c_0_59])).
% 0.19/0.41  cnf(c_0_69, negated_conjecture, (esk3_4(esk6_0,esk5_0,k2_tarski(esk7_0,esk7_0),esk6_0)=esk7_0|r2_hidden(esk6_0,a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0)))), inference(spm,[status(thm)],[c_0_60, c_0_61])).
% 0.19/0.41  cnf(c_0_70, negated_conjecture, (r2_orders_2(esk5_0,esk6_0,esk7_0)|r2_hidden(esk6_0,a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0)))), inference(sr,[status(thm)],[c_0_62, c_0_49])).
% 0.19/0.41  cnf(c_0_71, negated_conjecture, (~r2_orders_2(esk5_0,esk6_0,esk7_0)|~r2_hidden(esk6_0,k2_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0)))), inference(rw,[status(thm)],[c_0_63, c_0_64])).
% 0.19/0.41  cnf(c_0_72, negated_conjecture, (k2_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0))=a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0))), inference(sr,[status(thm)],[c_0_57, c_0_49])).
% 0.19/0.41  cnf(c_0_73, plain, (r2_orders_2(X1,esk2_3(X2,X1,X3),X4)|v2_struct_0(X1)|~l1_orders_2(X1)|~v5_orders_2(X1)|~v4_orders_2(X1)|~v3_orders_2(X1)|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~r2_hidden(X2,a_2_1_orders_2(X1,X3))|~r2_hidden(X4,X3)), inference(csr,[status(thm)],[c_0_65, c_0_66])).
% 0.19/0.41  cnf(c_0_74, plain, (r2_hidden(X1,k2_tarski(X1,X2))), inference(er,[status(thm)],[inference(er,[status(thm)],[c_0_67])])).
% 0.19/0.41  cnf(c_0_75, plain, (X1=esk2_3(X1,X2,X3)|v2_struct_0(X2)|~r2_hidden(X1,a_2_1_orders_2(X2,X3))|~v3_orders_2(X2)|~v4_orders_2(X2)|~v5_orders_2(X2)|~l1_orders_2(X2)|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.19/0.41  cnf(c_0_76, negated_conjecture, (r2_hidden(esk6_0,a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0)))), inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_68, c_0_69]), c_0_18]), c_0_46]), c_0_47]), c_0_19]), c_0_55]), c_0_45])]), c_0_20]), c_0_70])).
% 0.19/0.41  cnf(c_0_77, negated_conjecture, (~r2_orders_2(esk5_0,esk6_0,esk7_0)|~r2_hidden(esk6_0,a_2_1_orders_2(esk5_0,k2_tarski(esk7_0,esk7_0)))), inference(rw,[status(thm)],[c_0_71, c_0_72])).
% 0.19/0.41  cnf(c_0_78, plain, (r2_orders_2(X1,esk2_3(X2,X1,k2_tarski(X3,X4)),X3)|v2_struct_0(X1)|~l1_orders_2(X1)|~v5_orders_2(X1)|~v4_orders_2(X1)|~v3_orders_2(X1)|~m1_subset_1(k2_tarski(X3,X4),k1_zfmisc_1(u1_struct_0(X1)))|~r2_hidden(X2,a_2_1_orders_2(X1,k2_tarski(X3,X4)))), inference(spm,[status(thm)],[c_0_73, c_0_74])).
% 0.19/0.41  cnf(c_0_79, negated_conjecture, (esk2_3(esk6_0,esk5_0,k2_tarski(esk7_0,esk7_0))=esk6_0), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_76]), c_0_18]), c_0_46]), c_0_47]), c_0_19]), c_0_55])]), c_0_20])).
% 0.19/0.41  cnf(c_0_80, negated_conjecture, (~r2_orders_2(esk5_0,esk6_0,esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_77, c_0_76])])).
% 0.19/0.41  cnf(c_0_81, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_78, c_0_76]), c_0_79]), c_0_18]), c_0_46]), c_0_47]), c_0_19]), c_0_55])]), c_0_80]), c_0_20]), ['proof']).
% 0.19/0.41  # SZS output end CNFRefutation
% 0.19/0.41  # Proof object total steps             : 82
% 0.19/0.41  # Proof object clause steps            : 57
% 0.19/0.41  # Proof object formula steps           : 25
% 0.19/0.41  # Proof object conjectures             : 36
% 0.19/0.41  # Proof object clause conjectures      : 33
% 0.19/0.41  # Proof object formula conjectures     : 3
% 0.19/0.41  # Proof object initial clauses used    : 25
% 0.19/0.41  # Proof object initial formulas used   : 12
% 0.19/0.41  # Proof object generating inferences   : 18
% 0.19/0.41  # Proof object simplifying inferences  : 65
% 0.19/0.41  # Training examples: 0 positive, 0 negative
% 0.19/0.41  # Parsed axioms                        : 12
% 0.19/0.41  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.41  # Initial clauses                      : 38
% 0.19/0.41  # Removed in clause preprocessing      : 1
% 0.19/0.41  # Initial clauses in saturation        : 37
% 0.19/0.41  # Processed clauses                    : 369
% 0.19/0.41  # ...of these trivial                  : 12
% 0.19/0.41  # ...subsumed                          : 80
% 0.19/0.41  # ...remaining for further processing  : 277
% 0.19/0.41  # Other redundant clauses eliminated   : 30
% 0.19/0.41  # Clauses deleted for lack of memory   : 0
% 0.19/0.41  # Backward-subsumed                    : 8
% 0.19/0.41  # Backward-rewritten                   : 25
% 0.19/0.41  # Generated clauses                    : 636
% 0.19/0.41  # ...of the previous two non-trivial   : 552
% 0.19/0.41  # Contextual simplify-reflections      : 5
% 0.19/0.41  # Paramodulations                      : 580
% 0.19/0.41  # Factorizations                       : 14
% 0.19/0.41  # Equation resolutions                 : 30
% 0.19/0.41  # Propositional unsat checks           : 0
% 0.19/0.41  #    Propositional check models        : 0
% 0.19/0.41  #    Propositional check unsatisfiable : 0
% 0.19/0.41  #    Propositional clauses             : 0
% 0.19/0.41  #    Propositional clauses after purity: 0
% 0.19/0.41  #    Propositional unsat core size     : 0
% 0.19/0.41  #    Propositional preprocessing time  : 0.000
% 0.19/0.41  #    Propositional encoding time       : 0.000
% 0.19/0.41  #    Propositional solver time         : 0.000
% 0.19/0.41  #    Success case prop preproc time    : 0.000
% 0.19/0.41  #    Success case prop encoding time   : 0.000
% 0.19/0.41  #    Success case prop solver time     : 0.000
% 0.19/0.41  # Current number of processed clauses  : 187
% 0.19/0.41  #    Positive orientable unit clauses  : 43
% 0.19/0.41  #    Positive unorientable unit clauses: 0
% 0.19/0.41  #    Negative unit clauses             : 7
% 0.19/0.41  #    Non-unit-clauses                  : 137
% 0.19/0.41  # Current number of unprocessed clauses: 235
% 0.19/0.41  # ...number of literals in the above   : 1011
% 0.19/0.41  # Current number of archived formulas  : 0
% 0.19/0.41  # Current number of archived clauses   : 85
% 0.19/0.41  # Clause-clause subsumption calls (NU) : 3743
% 0.19/0.41  # Rec. Clause-clause subsumption calls : 1366
% 0.19/0.41  # Non-unit clause-clause subsumptions  : 61
% 0.19/0.41  # Unit Clause-clause subsumption calls : 378
% 0.19/0.41  # Rewrite failures with RHS unbound    : 0
% 0.19/0.41  # BW rewrite match attempts            : 9
% 0.19/0.41  # BW rewrite match successes           : 3
% 0.19/0.41  # Condensation attempts                : 0
% 0.19/0.41  # Condensation successes               : 0
% 0.19/0.41  # Termbank termtop insertions          : 19293
% 0.19/0.41  
% 0.19/0.41  # -------------------------------------------------
% 0.19/0.41  # User time                : 0.060 s
% 0.19/0.41  # System time              : 0.004 s
% 0.19/0.41  # Total time               : 0.064 s
% 0.19/0.41  # Maximum resident set size: 1596 pages
%------------------------------------------------------------------------------
