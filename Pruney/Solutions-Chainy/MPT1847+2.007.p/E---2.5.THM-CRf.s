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
% DateTime   : Thu Dec  3 11:19:19 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   75 ( 179 expanded)
%              Number of clauses        :   46 (  72 expanded)
%              Number of leaves         :   14 (  44 expanded)
%              Depth                    :   13
%              Number of atoms          :  208 ( 690 expanded)
%              Number of equality atoms :   30 (  96 expanded)
%              Maximal formula depth    :   13 (   4 average)
%              Maximal clause size      :   18 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t14_tex_2,conjecture,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => ! [X3] :
              ( m1_pre_topc(X3,X1)
             => ( ( g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)) = g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3))
                  & v1_tex_2(X2,X1) )
               => v1_tex_2(X3,X1) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t14_tex_2)).

fof(t65_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( l1_pre_topc(X2)
         => ( m1_pre_topc(X1,X2)
          <=> m1_pre_topc(X1,g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_pre_topc)).

fof(dt_m1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => l1_pre_topc(X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_m1_pre_topc)).

fof(t2_tsep_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => m1_pre_topc(X1,X1) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_tsep_1)).

fof(t59_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))
         => m1_pre_topc(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t59_pre_topc)).

fof(t1_tsep_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X1))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_tsep_1)).

fof(d3_tex_2,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => ( v1_tex_2(X2,X1)
          <=> ! [X3] :
                ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
               => ( X3 = u1_struct_0(X2)
                 => v1_subset_1(X3,u1_struct_0(X1)) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d3_tex_2)).

fof(d1_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( X2 = k1_zfmisc_1(X1)
    <=> ! [X3] :
          ( r2_hidden(X3,X2)
        <=> r1_tarski(X3,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d1_zfmisc_1)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t2_subset)).

fof(fc1_subset_1,axiom,(
    ! [X1] : ~ v1_xboole_0(k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc1_subset_1)).

fof(d7_subset_1,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X2,k1_zfmisc_1(X1))
     => ( v1_subset_1(X2,X1)
      <=> X2 != X1 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d7_subset_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d10_xboole_0)).

fof(fc14_subset_1,axiom,(
    ! [X1] : ~ v1_subset_1(k2_subset_1(X1),X1) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',fc14_subset_1)).

fof(d4_subset_1,axiom,(
    ! [X1] : k2_subset_1(X1) = X1 ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',d4_subset_1)).

fof(c_0_14,negated_conjecture,(
    ~ ! [X1] :
        ( l1_pre_topc(X1)
       => ! [X2] :
            ( m1_pre_topc(X2,X1)
           => ! [X3] :
                ( m1_pre_topc(X3,X1)
               => ( ( g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)) = g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3))
                    & v1_tex_2(X2,X1) )
                 => v1_tex_2(X3,X1) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t14_tex_2])).

fof(c_0_15,plain,(
    ! [X22,X23] :
      ( ( ~ m1_pre_topc(X22,X23)
        | m1_pre_topc(X22,g1_pre_topc(u1_struct_0(X23),u1_pre_topc(X23)))
        | ~ l1_pre_topc(X23)
        | ~ l1_pre_topc(X22) )
      & ( ~ m1_pre_topc(X22,g1_pre_topc(u1_struct_0(X23),u1_pre_topc(X23)))
        | m1_pre_topc(X22,X23)
        | ~ l1_pre_topc(X23)
        | ~ l1_pre_topc(X22) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t65_pre_topc])])])])).

fof(c_0_16,plain,(
    ! [X18,X19] :
      ( ~ l1_pre_topc(X18)
      | ~ m1_pre_topc(X19,X18)
      | l1_pre_topc(X19) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).

fof(c_0_17,negated_conjecture,
    ( l1_pre_topc(esk3_0)
    & m1_pre_topc(esk4_0,esk3_0)
    & m1_pre_topc(esk5_0,esk3_0)
    & g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0)) = g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0))
    & v1_tex_2(esk4_0,esk3_0)
    & ~ v1_tex_2(esk5_0,esk3_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_14])])])).

cnf(c_0_18,plain,
    ( m1_pre_topc(X1,g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)))
    | ~ m1_pre_topc(X1,X2)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_15])).

cnf(c_0_19,plain,
    ( l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_20,negated_conjecture,
    ( m1_pre_topc(esk5_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_21,negated_conjecture,
    ( l1_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

fof(c_0_22,plain,(
    ! [X26] :
      ( ~ l1_pre_topc(X26)
      | m1_pre_topc(X26,X26) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_tsep_1])])).

cnf(c_0_23,plain,
    ( m1_pre_topc(X1,g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)))
    | ~ m1_pre_topc(X1,X2)
    | ~ l1_pre_topc(X2) ),
    inference(csr,[status(thm)],[c_0_18,c_0_19])).

cnf(c_0_24,negated_conjecture,
    ( g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0)) = g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_25,negated_conjecture,
    ( l1_pre_topc(esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_21])])).

cnf(c_0_26,plain,
    ( m1_pre_topc(X1,X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

fof(c_0_27,plain,(
    ! [X20,X21] :
      ( ~ l1_pre_topc(X20)
      | ~ m1_pre_topc(X21,g1_pre_topc(u1_struct_0(X20),u1_pre_topc(X20)))
      | m1_pre_topc(X21,X20) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t59_pre_topc])])])).

cnf(c_0_28,negated_conjecture,
    ( m1_pre_topc(X1,g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0)))
    | ~ m1_pre_topc(X1,esk5_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_24]),c_0_25])])).

cnf(c_0_29,negated_conjecture,
    ( m1_pre_topc(esk5_0,esk5_0) ),
    inference(spm,[status(thm)],[c_0_26,c_0_25])).

cnf(c_0_30,negated_conjecture,
    ( m1_pre_topc(esk4_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

fof(c_0_31,plain,(
    ! [X24,X25] :
      ( ~ l1_pre_topc(X24)
      | ~ m1_pre_topc(X25,X24)
      | m1_subset_1(u1_struct_0(X25),k1_zfmisc_1(u1_struct_0(X24))) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_tsep_1])])])).

cnf(c_0_32,plain,
    ( m1_pre_topc(X2,X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_27])).

cnf(c_0_33,negated_conjecture,
    ( m1_pre_topc(esk5_0,g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0))) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_34,negated_conjecture,
    ( l1_pre_topc(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_30]),c_0_21])])).

fof(c_0_35,plain,(
    ! [X27,X28,X29] :
      ( ( ~ v1_tex_2(X28,X27)
        | ~ m1_subset_1(X29,k1_zfmisc_1(u1_struct_0(X27)))
        | X29 != u1_struct_0(X28)
        | v1_subset_1(X29,u1_struct_0(X27))
        | ~ m1_pre_topc(X28,X27)
        | ~ l1_pre_topc(X27) )
      & ( m1_subset_1(esk2_2(X27,X28),k1_zfmisc_1(u1_struct_0(X27)))
        | v1_tex_2(X28,X27)
        | ~ m1_pre_topc(X28,X27)
        | ~ l1_pre_topc(X27) )
      & ( esk2_2(X27,X28) = u1_struct_0(X28)
        | v1_tex_2(X28,X27)
        | ~ m1_pre_topc(X28,X27)
        | ~ l1_pre_topc(X27) )
      & ( ~ v1_subset_1(esk2_2(X27,X28),u1_struct_0(X27))
        | v1_tex_2(X28,X27)
        | ~ m1_pre_topc(X28,X27)
        | ~ l1_pre_topc(X27) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tex_2])])])])])).

fof(c_0_36,plain,(
    ! [X6,X7,X8,X9,X10,X11] :
      ( ( ~ r2_hidden(X8,X7)
        | r1_tarski(X8,X6)
        | X7 != k1_zfmisc_1(X6) )
      & ( ~ r1_tarski(X9,X6)
        | r2_hidden(X9,X7)
        | X7 != k1_zfmisc_1(X6) )
      & ( ~ r2_hidden(esk1_2(X10,X11),X11)
        | ~ r1_tarski(esk1_2(X10,X11),X10)
        | X11 = k1_zfmisc_1(X10) )
      & ( r2_hidden(esk1_2(X10,X11),X11)
        | r1_tarski(esk1_2(X10,X11),X10)
        | X11 = k1_zfmisc_1(X10) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).

fof(c_0_37,plain,(
    ! [X16,X17] :
      ( ~ m1_subset_1(X16,X17)
      | v1_xboole_0(X17)
      | r2_hidden(X16,X17) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

cnf(c_0_38,plain,
    ( m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X1)))
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

fof(c_0_39,plain,(
    ! [X14] : ~ v1_xboole_0(k1_zfmisc_1(X14)) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc1_subset_1])])).

cnf(c_0_40,negated_conjecture,
    ( m1_pre_topc(esk5_0,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_33]),c_0_34])])).

cnf(c_0_41,plain,
    ( v1_tex_2(X2,X1)
    | ~ v1_subset_1(esk2_2(X1,X2),u1_struct_0(X1))
    | ~ m1_pre_topc(X2,X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_42,plain,
    ( esk2_2(X1,X2) = u1_struct_0(X2)
    | v1_tex_2(X2,X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_43,plain,
    ( r1_tarski(X1,X3)
    | ~ r2_hidden(X1,X2)
    | X2 != k1_zfmisc_1(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_44,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

cnf(c_0_45,negated_conjecture,
    ( m1_subset_1(u1_struct_0(esk4_0),k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_30]),c_0_21])])).

cnf(c_0_46,plain,
    ( ~ v1_xboole_0(k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_47,negated_conjecture,
    ( m1_subset_1(u1_struct_0(esk5_0),k1_zfmisc_1(u1_struct_0(esk4_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_40]),c_0_34])])).

cnf(c_0_48,negated_conjecture,
    ( ~ v1_tex_2(esk5_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_49,plain,
    ( v1_tex_2(X1,X2)
    | ~ m1_pre_topc(X1,X2)
    | ~ l1_pre_topc(X2)
    | ~ v1_subset_1(u1_struct_0(X1),u1_struct_0(X2)) ),
    inference(spm,[status(thm)],[c_0_41,c_0_42])).

fof(c_0_50,plain,(
    ! [X31,X32] :
      ( ( ~ v1_subset_1(X32,X31)
        | X32 != X31
        | ~ m1_subset_1(X32,k1_zfmisc_1(X31)) )
      & ( X32 = X31
        | v1_subset_1(X32,X31)
        | ~ m1_subset_1(X32,k1_zfmisc_1(X31)) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_subset_1])])])).

fof(c_0_51,plain,(
    ! [X4,X5] :
      ( ( r1_tarski(X4,X5)
        | X4 != X5 )
      & ( r1_tarski(X5,X4)
        | X4 != X5 )
      & ( ~ r1_tarski(X4,X5)
        | ~ r1_tarski(X5,X4)
        | X4 = X5 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_52,plain,
    ( r1_tarski(X1,X2)
    | ~ r2_hidden(X1,k1_zfmisc_1(X2)) ),
    inference(er,[status(thm)],[c_0_43])).

cnf(c_0_53,negated_conjecture,
    ( r2_hidden(u1_struct_0(esk4_0),k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_45]),c_0_46])).

cnf(c_0_54,negated_conjecture,
    ( r2_hidden(u1_struct_0(esk5_0),k1_zfmisc_1(u1_struct_0(esk4_0))) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_47]),c_0_46])).

cnf(c_0_55,negated_conjecture,
    ( ~ v1_subset_1(u1_struct_0(esk5_0),u1_struct_0(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48,c_0_49]),c_0_20]),c_0_21])])).

cnf(c_0_56,plain,
    ( X1 = X2
    | v1_subset_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(X2)) ),
    inference(split_conjunct,[status(thm)],[c_0_50])).

cnf(c_0_57,negated_conjecture,
    ( m1_subset_1(u1_struct_0(esk5_0),k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_20]),c_0_21])])).

cnf(c_0_58,plain,
    ( v1_subset_1(X3,u1_struct_0(X2))
    | ~ v1_tex_2(X1,X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))
    | X3 != u1_struct_0(X1)
    | ~ m1_pre_topc(X1,X2)
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_59,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_60,negated_conjecture,
    ( r1_tarski(u1_struct_0(esk4_0),u1_struct_0(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_52,c_0_53])).

cnf(c_0_61,negated_conjecture,
    ( r1_tarski(u1_struct_0(esk5_0),u1_struct_0(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_52,c_0_54])).

cnf(c_0_62,negated_conjecture,
    ( u1_struct_0(esk5_0) = u1_struct_0(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55,c_0_56]),c_0_57])])).

fof(c_0_63,plain,(
    ! [X15] : ~ v1_subset_1(k2_subset_1(X15),X15) ),
    inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc14_subset_1])])).

fof(c_0_64,plain,(
    ! [X13] : k2_subset_1(X13) = X13 ),
    inference(variable_rename,[status(thm)],[d4_subset_1])).

cnf(c_0_65,plain,
    ( v1_subset_1(u1_struct_0(X1),u1_struct_0(X2))
    | ~ v1_tex_2(X1,X2)
    | ~ m1_pre_topc(X1,X2)
    | ~ l1_pre_topc(X2) ),
    inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_58]),c_0_38])).

cnf(c_0_66,negated_conjecture,
    ( v1_tex_2(esk4_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_67,negated_conjecture,
    ( u1_struct_0(esk4_0) = u1_struct_0(esk3_0)
    | ~ r1_tarski(u1_struct_0(esk3_0),u1_struct_0(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_59,c_0_60])).

cnf(c_0_68,negated_conjecture,
    ( r1_tarski(u1_struct_0(esk3_0),u1_struct_0(esk4_0)) ),
    inference(rw,[status(thm)],[c_0_61,c_0_62])).

cnf(c_0_69,plain,
    ( ~ v1_subset_1(k2_subset_1(X1),X1) ),
    inference(split_conjunct,[status(thm)],[c_0_63])).

cnf(c_0_70,plain,
    ( k2_subset_1(X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_64])).

cnf(c_0_71,negated_conjecture,
    ( v1_subset_1(u1_struct_0(esk4_0),u1_struct_0(esk3_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65,c_0_66]),c_0_30]),c_0_21])])).

cnf(c_0_72,negated_conjecture,
    ( u1_struct_0(esk4_0) = u1_struct_0(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_67,c_0_68])])).

cnf(c_0_73,plain,
    ( ~ v1_subset_1(X1,X1) ),
    inference(rw,[status(thm)],[c_0_69,c_0_70])).

cnf(c_0_74,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_71,c_0_72]),c_0_73]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n011.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:38:27 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___107_B42_F1_PI_SE_Q4_CS_SP_PS_S0Y
% 0.13/0.38  # and selection function SelectMaxLComplexAvoidPosPred.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.028 s
% 0.13/0.38  # Presaturation interreduction done
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(t14_tex_2, conjecture, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>![X3]:(m1_pre_topc(X3,X1)=>((g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))=g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3))&v1_tex_2(X2,X1))=>v1_tex_2(X3,X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t14_tex_2)).
% 0.13/0.38  fof(t65_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(l1_pre_topc(X2)=>(m1_pre_topc(X1,X2)<=>m1_pre_topc(X1,g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t65_pre_topc)).
% 0.13/0.38  fof(dt_m1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>l1_pre_topc(X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_m1_pre_topc)).
% 0.13/0.38  fof(t2_tsep_1, axiom, ![X1]:(l1_pre_topc(X1)=>m1_pre_topc(X1,X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_tsep_1)).
% 0.13/0.38  fof(t59_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))=>m1_pre_topc(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t59_pre_topc)).
% 0.13/0.38  fof(t1_tsep_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_tsep_1)).
% 0.13/0.38  fof(d3_tex_2, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>(v1_tex_2(X2,X1)<=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>(X3=u1_struct_0(X2)=>v1_subset_1(X3,u1_struct_0(X1))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d3_tex_2)).
% 0.13/0.38  fof(d1_zfmisc_1, axiom, ![X1, X2]:(X2=k1_zfmisc_1(X1)<=>![X3]:(r2_hidden(X3,X2)<=>r1_tarski(X3,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d1_zfmisc_1)).
% 0.13/0.38  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t2_subset)).
% 0.13/0.38  fof(fc1_subset_1, axiom, ![X1]:~(v1_xboole_0(k1_zfmisc_1(X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc1_subset_1)).
% 0.13/0.38  fof(d7_subset_1, axiom, ![X1, X2]:(m1_subset_1(X2,k1_zfmisc_1(X1))=>(v1_subset_1(X2,X1)<=>X2!=X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d7_subset_1)).
% 0.13/0.38  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.13/0.38  fof(fc14_subset_1, axiom, ![X1]:~(v1_subset_1(k2_subset_1(X1),X1)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', fc14_subset_1)).
% 0.13/0.38  fof(d4_subset_1, axiom, ![X1]:k2_subset_1(X1)=X1, file('/export/starexec/sandbox/benchmark/theBenchmark.p', d4_subset_1)).
% 0.13/0.38  fof(c_0_14, negated_conjecture, ~(![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>![X3]:(m1_pre_topc(X3,X1)=>((g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))=g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3))&v1_tex_2(X2,X1))=>v1_tex_2(X3,X1)))))), inference(assume_negation,[status(cth)],[t14_tex_2])).
% 0.13/0.38  fof(c_0_15, plain, ![X22, X23]:((~m1_pre_topc(X22,X23)|m1_pre_topc(X22,g1_pre_topc(u1_struct_0(X23),u1_pre_topc(X23)))|~l1_pre_topc(X23)|~l1_pre_topc(X22))&(~m1_pre_topc(X22,g1_pre_topc(u1_struct_0(X23),u1_pre_topc(X23)))|m1_pre_topc(X22,X23)|~l1_pre_topc(X23)|~l1_pre_topc(X22))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t65_pre_topc])])])])).
% 0.13/0.38  fof(c_0_16, plain, ![X18, X19]:(~l1_pre_topc(X18)|(~m1_pre_topc(X19,X18)|l1_pre_topc(X19))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).
% 0.13/0.38  fof(c_0_17, negated_conjecture, (l1_pre_topc(esk3_0)&(m1_pre_topc(esk4_0,esk3_0)&(m1_pre_topc(esk5_0,esk3_0)&((g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0))=g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0))&v1_tex_2(esk4_0,esk3_0))&~v1_tex_2(esk5_0,esk3_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_14])])])).
% 0.13/0.38  cnf(c_0_18, plain, (m1_pre_topc(X1,g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)))|~m1_pre_topc(X1,X2)|~l1_pre_topc(X2)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_15])).
% 0.13/0.38  cnf(c_0_19, plain, (l1_pre_topc(X2)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.38  cnf(c_0_20, negated_conjecture, (m1_pre_topc(esk5_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.38  cnf(c_0_21, negated_conjecture, (l1_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.38  fof(c_0_22, plain, ![X26]:(~l1_pre_topc(X26)|m1_pre_topc(X26,X26)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_tsep_1])])).
% 0.13/0.38  cnf(c_0_23, plain, (m1_pre_topc(X1,g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)))|~m1_pre_topc(X1,X2)|~l1_pre_topc(X2)), inference(csr,[status(thm)],[c_0_18, c_0_19])).
% 0.13/0.38  cnf(c_0_24, negated_conjecture, (g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0))=g1_pre_topc(u1_struct_0(esk5_0),u1_pre_topc(esk5_0))), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.38  cnf(c_0_25, negated_conjecture, (l1_pre_topc(esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_21])])).
% 0.13/0.38  cnf(c_0_26, plain, (m1_pre_topc(X1,X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.13/0.38  fof(c_0_27, plain, ![X20, X21]:(~l1_pre_topc(X20)|(~m1_pre_topc(X21,g1_pre_topc(u1_struct_0(X20),u1_pre_topc(X20)))|m1_pre_topc(X21,X20))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t59_pre_topc])])])).
% 0.13/0.38  cnf(c_0_28, negated_conjecture, (m1_pre_topc(X1,g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0)))|~m1_pre_topc(X1,esk5_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_24]), c_0_25])])).
% 0.13/0.38  cnf(c_0_29, negated_conjecture, (m1_pre_topc(esk5_0,esk5_0)), inference(spm,[status(thm)],[c_0_26, c_0_25])).
% 0.13/0.38  cnf(c_0_30, negated_conjecture, (m1_pre_topc(esk4_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.38  fof(c_0_31, plain, ![X24, X25]:(~l1_pre_topc(X24)|(~m1_pre_topc(X25,X24)|m1_subset_1(u1_struct_0(X25),k1_zfmisc_1(u1_struct_0(X24))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_tsep_1])])])).
% 0.13/0.38  cnf(c_0_32, plain, (m1_pre_topc(X2,X1)|~l1_pre_topc(X1)|~m1_pre_topc(X2,g1_pre_topc(u1_struct_0(X1),u1_pre_topc(X1)))), inference(split_conjunct,[status(thm)],[c_0_27])).
% 0.13/0.38  cnf(c_0_33, negated_conjecture, (m1_pre_topc(esk5_0,g1_pre_topc(u1_struct_0(esk4_0),u1_pre_topc(esk4_0)))), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.13/0.38  cnf(c_0_34, negated_conjecture, (l1_pre_topc(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_30]), c_0_21])])).
% 0.13/0.38  fof(c_0_35, plain, ![X27, X28, X29]:((~v1_tex_2(X28,X27)|(~m1_subset_1(X29,k1_zfmisc_1(u1_struct_0(X27)))|(X29!=u1_struct_0(X28)|v1_subset_1(X29,u1_struct_0(X27))))|~m1_pre_topc(X28,X27)|~l1_pre_topc(X27))&((m1_subset_1(esk2_2(X27,X28),k1_zfmisc_1(u1_struct_0(X27)))|v1_tex_2(X28,X27)|~m1_pre_topc(X28,X27)|~l1_pre_topc(X27))&((esk2_2(X27,X28)=u1_struct_0(X28)|v1_tex_2(X28,X27)|~m1_pre_topc(X28,X27)|~l1_pre_topc(X27))&(~v1_subset_1(esk2_2(X27,X28),u1_struct_0(X27))|v1_tex_2(X28,X27)|~m1_pre_topc(X28,X27)|~l1_pre_topc(X27))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tex_2])])])])])).
% 0.13/0.38  fof(c_0_36, plain, ![X6, X7, X8, X9, X10, X11]:(((~r2_hidden(X8,X7)|r1_tarski(X8,X6)|X7!=k1_zfmisc_1(X6))&(~r1_tarski(X9,X6)|r2_hidden(X9,X7)|X7!=k1_zfmisc_1(X6)))&((~r2_hidden(esk1_2(X10,X11),X11)|~r1_tarski(esk1_2(X10,X11),X10)|X11=k1_zfmisc_1(X10))&(r2_hidden(esk1_2(X10,X11),X11)|r1_tarski(esk1_2(X10,X11),X10)|X11=k1_zfmisc_1(X10)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d1_zfmisc_1])])])])])])).
% 0.13/0.38  fof(c_0_37, plain, ![X16, X17]:(~m1_subset_1(X16,X17)|(v1_xboole_0(X17)|r2_hidden(X16,X17))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.13/0.38  cnf(c_0_38, plain, (m1_subset_1(u1_struct_0(X2),k1_zfmisc_1(u1_struct_0(X1)))|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.13/0.38  fof(c_0_39, plain, ![X14]:~v1_xboole_0(k1_zfmisc_1(X14)), inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc1_subset_1])])).
% 0.13/0.38  cnf(c_0_40, negated_conjecture, (m1_pre_topc(esk5_0,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_33]), c_0_34])])).
% 0.13/0.38  cnf(c_0_41, plain, (v1_tex_2(X2,X1)|~v1_subset_1(esk2_2(X1,X2),u1_struct_0(X1))|~m1_pre_topc(X2,X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.13/0.38  cnf(c_0_42, plain, (esk2_2(X1,X2)=u1_struct_0(X2)|v1_tex_2(X2,X1)|~m1_pre_topc(X2,X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.13/0.38  cnf(c_0_43, plain, (r1_tarski(X1,X3)|~r2_hidden(X1,X2)|X2!=k1_zfmisc_1(X3)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.13/0.38  cnf(c_0_44, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.13/0.38  cnf(c_0_45, negated_conjecture, (m1_subset_1(u1_struct_0(esk4_0),k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_30]), c_0_21])])).
% 0.13/0.38  cnf(c_0_46, plain, (~v1_xboole_0(k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.13/0.38  cnf(c_0_47, negated_conjecture, (m1_subset_1(u1_struct_0(esk5_0),k1_zfmisc_1(u1_struct_0(esk4_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_40]), c_0_34])])).
% 0.13/0.38  cnf(c_0_48, negated_conjecture, (~v1_tex_2(esk5_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.38  cnf(c_0_49, plain, (v1_tex_2(X1,X2)|~m1_pre_topc(X1,X2)|~l1_pre_topc(X2)|~v1_subset_1(u1_struct_0(X1),u1_struct_0(X2))), inference(spm,[status(thm)],[c_0_41, c_0_42])).
% 0.13/0.38  fof(c_0_50, plain, ![X31, X32]:((~v1_subset_1(X32,X31)|X32!=X31|~m1_subset_1(X32,k1_zfmisc_1(X31)))&(X32=X31|v1_subset_1(X32,X31)|~m1_subset_1(X32,k1_zfmisc_1(X31)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d7_subset_1])])])).
% 0.13/0.38  fof(c_0_51, plain, ![X4, X5]:(((r1_tarski(X4,X5)|X4!=X5)&(r1_tarski(X5,X4)|X4!=X5))&(~r1_tarski(X4,X5)|~r1_tarski(X5,X4)|X4=X5)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.13/0.38  cnf(c_0_52, plain, (r1_tarski(X1,X2)|~r2_hidden(X1,k1_zfmisc_1(X2))), inference(er,[status(thm)],[c_0_43])).
% 0.13/0.38  cnf(c_0_53, negated_conjecture, (r2_hidden(u1_struct_0(esk4_0),k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_45]), c_0_46])).
% 0.13/0.38  cnf(c_0_54, negated_conjecture, (r2_hidden(u1_struct_0(esk5_0),k1_zfmisc_1(u1_struct_0(esk4_0)))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_47]), c_0_46])).
% 0.13/0.38  cnf(c_0_55, negated_conjecture, (~v1_subset_1(u1_struct_0(esk5_0),u1_struct_0(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_48, c_0_49]), c_0_20]), c_0_21])])).
% 0.13/0.38  cnf(c_0_56, plain, (X1=X2|v1_subset_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(X2))), inference(split_conjunct,[status(thm)],[c_0_50])).
% 0.13/0.38  cnf(c_0_57, negated_conjecture, (m1_subset_1(u1_struct_0(esk5_0),k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_20]), c_0_21])])).
% 0.13/0.38  cnf(c_0_58, plain, (v1_subset_1(X3,u1_struct_0(X2))|~v1_tex_2(X1,X2)|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))|X3!=u1_struct_0(X1)|~m1_pre_topc(X1,X2)|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.13/0.38  cnf(c_0_59, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_51])).
% 0.13/0.38  cnf(c_0_60, negated_conjecture, (r1_tarski(u1_struct_0(esk4_0),u1_struct_0(esk3_0))), inference(spm,[status(thm)],[c_0_52, c_0_53])).
% 0.13/0.38  cnf(c_0_61, negated_conjecture, (r1_tarski(u1_struct_0(esk5_0),u1_struct_0(esk4_0))), inference(spm,[status(thm)],[c_0_52, c_0_54])).
% 0.13/0.38  cnf(c_0_62, negated_conjecture, (u1_struct_0(esk5_0)=u1_struct_0(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_55, c_0_56]), c_0_57])])).
% 0.13/0.38  fof(c_0_63, plain, ![X15]:~v1_subset_1(k2_subset_1(X15),X15), inference(variable_rename,[status(thm)],[inference(fof_simplification,[status(thm)],[fc14_subset_1])])).
% 0.13/0.38  fof(c_0_64, plain, ![X13]:k2_subset_1(X13)=X13, inference(variable_rename,[status(thm)],[d4_subset_1])).
% 0.13/0.38  cnf(c_0_65, plain, (v1_subset_1(u1_struct_0(X1),u1_struct_0(X2))|~v1_tex_2(X1,X2)|~m1_pre_topc(X1,X2)|~l1_pre_topc(X2)), inference(csr,[status(thm)],[inference(er,[status(thm)],[c_0_58]), c_0_38])).
% 0.13/0.38  cnf(c_0_66, negated_conjecture, (v1_tex_2(esk4_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.13/0.38  cnf(c_0_67, negated_conjecture, (u1_struct_0(esk4_0)=u1_struct_0(esk3_0)|~r1_tarski(u1_struct_0(esk3_0),u1_struct_0(esk4_0))), inference(spm,[status(thm)],[c_0_59, c_0_60])).
% 0.13/0.38  cnf(c_0_68, negated_conjecture, (r1_tarski(u1_struct_0(esk3_0),u1_struct_0(esk4_0))), inference(rw,[status(thm)],[c_0_61, c_0_62])).
% 0.13/0.38  cnf(c_0_69, plain, (~v1_subset_1(k2_subset_1(X1),X1)), inference(split_conjunct,[status(thm)],[c_0_63])).
% 0.13/0.38  cnf(c_0_70, plain, (k2_subset_1(X1)=X1), inference(split_conjunct,[status(thm)],[c_0_64])).
% 0.13/0.38  cnf(c_0_71, negated_conjecture, (v1_subset_1(u1_struct_0(esk4_0),u1_struct_0(esk3_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_65, c_0_66]), c_0_30]), c_0_21])])).
% 0.13/0.38  cnf(c_0_72, negated_conjecture, (u1_struct_0(esk4_0)=u1_struct_0(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_67, c_0_68])])).
% 0.13/0.38  cnf(c_0_73, plain, (~v1_subset_1(X1,X1)), inference(rw,[status(thm)],[c_0_69, c_0_70])).
% 0.13/0.38  cnf(c_0_74, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_71, c_0_72]), c_0_73]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 75
% 0.13/0.38  # Proof object clause steps            : 46
% 0.13/0.38  # Proof object formula steps           : 29
% 0.13/0.38  # Proof object conjectures             : 29
% 0.13/0.38  # Proof object clause conjectures      : 26
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 21
% 0.13/0.38  # Proof object initial formulas used   : 14
% 0.13/0.38  # Proof object generating inferences   : 18
% 0.13/0.38  # Proof object simplifying inferences  : 34
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 14
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 29
% 0.13/0.38  # Removed in clause preprocessing      : 1
% 0.13/0.38  # Initial clauses in saturation        : 28
% 0.13/0.38  # Processed clauses                    : 105
% 0.13/0.38  # ...of these trivial                  : 2
% 0.13/0.38  # ...subsumed                          : 4
% 0.13/0.38  # ...remaining for further processing  : 99
% 0.13/0.38  # Other redundant clauses eliminated   : 6
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 0
% 0.13/0.38  # Backward-rewritten                   : 25
% 0.13/0.38  # Generated clauses                    : 112
% 0.13/0.38  # ...of the previous two non-trivial   : 89
% 0.13/0.38  # Contextual simplify-reflections      : 2
% 0.13/0.38  # Paramodulations                      : 106
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 6
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
% 0.13/0.38  # Current number of processed clauses  : 43
% 0.13/0.38  #    Positive orientable unit clauses  : 15
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 3
% 0.13/0.38  #    Non-unit-clauses                  : 25
% 0.13/0.38  # Current number of unprocessed clauses: 32
% 0.13/0.38  # ...number of literals in the above   : 90
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 51
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 284
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 163
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 4
% 0.13/0.38  # Unit Clause-clause subsumption calls : 34
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 15
% 0.13/0.38  # BW rewrite match successes           : 4
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 3855
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.034 s
% 0.13/0.38  # System time              : 0.003 s
% 0.13/0.38  # Total time               : 0.037 s
% 0.13/0.38  # Maximum resident set size: 1580 pages
%------------------------------------------------------------------------------
