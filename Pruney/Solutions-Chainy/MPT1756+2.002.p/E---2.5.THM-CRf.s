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
% DateTime   : Thu Dec  3 11:17:26 EST 2020

% Result     : Theorem 0.12s
% Output     : CNFRefutation 0.12s
% Verified   : 
% Statistics : Number of formulae       :   59 ( 352 expanded)
%              Number of clauses        :   44 ( 114 expanded)
%              Number of leaves         :    7 (  83 expanded)
%              Depth                    :   12
%              Number of atoms          :  357 (5009 expanded)
%              Number of equality atoms :   16 ( 243 expanded)
%              Maximal formula depth    :   28 (   7 average)
%              Maximal clause size      :   38 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t66_tmap_1,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & v2_pre_topc(X2)
            & l1_pre_topc(X2) )
         => ! [X3] :
              ( ( v1_funct_1(X3)
                & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) )
             => ! [X4] :
                  ( ( ~ v2_struct_0(X4)
                    & m1_pre_topc(X4,X2) )
                 => ! [X5] :
                      ( m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X2)))
                     => ! [X6] :
                          ( m1_subset_1(X6,u1_struct_0(X2))
                         => ! [X7] :
                              ( m1_subset_1(X7,u1_struct_0(X4))
                             => ( ( v3_pre_topc(X5,X2)
                                  & r2_hidden(X6,X5)
                                  & r1_tarski(X5,u1_struct_0(X4))
                                  & X6 = X7 )
                               => ( r1_tmap_1(X2,X1,X3,X6)
                                <=> r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X7) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t66_tmap_1)).

fof(t56_tops_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
             => ( ( v3_pre_topc(X2,X1)
                  & r1_tarski(X2,X3) )
               => r1_tarski(X2,k1_tops_1(X1,X3)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t56_tops_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(d3_tarski,axiom,(
    ! [X1,X2] :
      ( r1_tarski(X1,X2)
    <=> ! [X3] :
          ( r2_hidden(X3,X1)
         => r2_hidden(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_tarski)).

fof(t65_tmap_1,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & v2_pre_topc(X2)
            & l1_pre_topc(X2) )
         => ! [X3] :
              ( ( v1_funct_1(X3)
                & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) )
             => ! [X4] :
                  ( ( ~ v2_struct_0(X4)
                    & m1_pre_topc(X4,X2) )
                 => ! [X5] :
                      ( m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X2)))
                     => ! [X6] :
                          ( m1_subset_1(X6,u1_struct_0(X2))
                         => ! [X7] :
                              ( m1_subset_1(X7,u1_struct_0(X4))
                             => ( ( r1_tarski(X5,u1_struct_0(X4))
                                  & m1_connsp_2(X5,X2,X6)
                                  & X6 = X7 )
                               => ( r1_tmap_1(X2,X1,X3,X6)
                                <=> r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X7) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t65_tmap_1)).

fof(d1_connsp_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,u1_struct_0(X1))
         => ! [X3] :
              ( m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
             => ( m1_connsp_2(X3,X1,X2)
              <=> r2_hidden(X2,k1_tops_1(X1,X3)) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d1_connsp_2)).

fof(t64_tmap_1,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & v2_pre_topc(X2)
            & l1_pre_topc(X2) )
         => ! [X3] :
              ( ( v1_funct_1(X3)
                & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
                & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) )
             => ! [X4] :
                  ( ( ~ v2_struct_0(X4)
                    & m1_pre_topc(X4,X2) )
                 => ! [X5] :
                      ( m1_subset_1(X5,u1_struct_0(X2))
                     => ! [X6] :
                          ( m1_subset_1(X6,u1_struct_0(X4))
                         => ( ( X5 = X6
                              & r1_tmap_1(X2,X1,X3,X5) )
                           => r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X6) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t64_tmap_1)).

fof(c_0_7,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( ( ~ v2_struct_0(X2)
              & v2_pre_topc(X2)
              & l1_pre_topc(X2) )
           => ! [X3] :
                ( ( v1_funct_1(X3)
                  & v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
                  & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))) )
               => ! [X4] :
                    ( ( ~ v2_struct_0(X4)
                      & m1_pre_topc(X4,X2) )
                   => ! [X5] :
                        ( m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X2)))
                       => ! [X6] :
                            ( m1_subset_1(X6,u1_struct_0(X2))
                           => ! [X7] :
                                ( m1_subset_1(X7,u1_struct_0(X4))
                               => ( ( v3_pre_topc(X5,X2)
                                    & r2_hidden(X6,X5)
                                    & r1_tarski(X5,u1_struct_0(X4))
                                    & X6 = X7 )
                                 => ( r1_tmap_1(X2,X1,X3,X6)
                                  <=> r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X7) ) ) ) ) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t66_tmap_1])).

fof(c_0_8,plain,(
    ! [X16,X17,X18] :
      ( ~ l1_pre_topc(X16)
      | ~ m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X16)))
      | ~ m1_subset_1(X18,k1_zfmisc_1(u1_struct_0(X16)))
      | ~ v3_pre_topc(X17,X16)
      | ~ r1_tarski(X17,X18)
      | r1_tarski(X17,k1_tops_1(X16,X18)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_tops_1])])])).

fof(c_0_9,negated_conjecture,
    ( ~ v2_struct_0(esk2_0)
    & v2_pre_topc(esk2_0)
    & l1_pre_topc(esk2_0)
    & ~ v2_struct_0(esk3_0)
    & v2_pre_topc(esk3_0)
    & l1_pre_topc(esk3_0)
    & v1_funct_1(esk4_0)
    & v1_funct_2(esk4_0,u1_struct_0(esk3_0),u1_struct_0(esk2_0))
    & m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0))))
    & ~ v2_struct_0(esk5_0)
    & m1_pre_topc(esk5_0,esk3_0)
    & m1_subset_1(esk6_0,k1_zfmisc_1(u1_struct_0(esk3_0)))
    & m1_subset_1(esk7_0,u1_struct_0(esk3_0))
    & m1_subset_1(esk8_0,u1_struct_0(esk5_0))
    & v3_pre_topc(esk6_0,esk3_0)
    & r2_hidden(esk7_0,esk6_0)
    & r1_tarski(esk6_0,u1_struct_0(esk5_0))
    & esk7_0 = esk8_0
    & ( ~ r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0)
      | ~ r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),esk8_0) )
    & ( r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0)
      | r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),esk8_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_7])])])])).

fof(c_0_10,plain,(
    ! [X14,X15] :
      ( ( r1_tarski(X14,X15)
        | X14 != X15 )
      & ( r1_tarski(X15,X14)
        | X14 != X15 )
      & ( ~ r1_tarski(X14,X15)
        | ~ r1_tarski(X15,X14)
        | X14 = X15 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

fof(c_0_11,plain,(
    ! [X8,X9,X10,X11,X12] :
      ( ( ~ r1_tarski(X8,X9)
        | ~ r2_hidden(X10,X8)
        | r2_hidden(X10,X9) )
      & ( r2_hidden(esk1_2(X11,X12),X11)
        | r1_tarski(X11,X12) )
      & ( ~ r2_hidden(esk1_2(X11,X12),X12)
        | r1_tarski(X11,X12) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).

cnf(c_0_12,plain,
    ( r1_tarski(X2,k1_tops_1(X1,X3))
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v3_pre_topc(X2,X1)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

cnf(c_0_13,negated_conjecture,
    ( v3_pre_topc(esk6_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_14,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(u1_struct_0(esk3_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,negated_conjecture,
    ( l1_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_16,plain,
    ( r1_tarski(X1,X2)
    | X2 != X1 ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_17,plain,
    ( r2_hidden(X3,X2)
    | ~ r1_tarski(X1,X2)
    | ~ r2_hidden(X3,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_11])).

cnf(c_0_18,negated_conjecture,
    ( r2_hidden(esk7_0,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_19,negated_conjecture,
    ( r1_tarski(esk6_0,k1_tops_1(esk3_0,X1))
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))
    | ~ r1_tarski(esk6_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_12,c_0_13]),c_0_14]),c_0_15])])).

cnf(c_0_20,plain,
    ( r1_tarski(X1,X1) ),
    inference(er,[status(thm)],[c_0_16])).

fof(c_0_21,plain,(
    ! [X28,X29,X30,X31,X32,X33,X34] :
      ( ( ~ r1_tmap_1(X29,X28,X30,X33)
        | r1_tmap_1(X31,X28,k2_tmap_1(X29,X28,X30,X31),X34)
        | ~ r1_tarski(X32,u1_struct_0(X31))
        | ~ m1_connsp_2(X32,X29,X33)
        | X33 != X34
        | ~ m1_subset_1(X34,u1_struct_0(X31))
        | ~ m1_subset_1(X33,u1_struct_0(X29))
        | ~ m1_subset_1(X32,k1_zfmisc_1(u1_struct_0(X29)))
        | v2_struct_0(X31)
        | ~ m1_pre_topc(X31,X29)
        | ~ v1_funct_1(X30)
        | ~ v1_funct_2(X30,u1_struct_0(X29),u1_struct_0(X28))
        | ~ m1_subset_1(X30,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X29),u1_struct_0(X28))))
        | v2_struct_0(X29)
        | ~ v2_pre_topc(X29)
        | ~ l1_pre_topc(X29)
        | v2_struct_0(X28)
        | ~ v2_pre_topc(X28)
        | ~ l1_pre_topc(X28) )
      & ( ~ r1_tmap_1(X31,X28,k2_tmap_1(X29,X28,X30,X31),X34)
        | r1_tmap_1(X29,X28,X30,X33)
        | ~ r1_tarski(X32,u1_struct_0(X31))
        | ~ m1_connsp_2(X32,X29,X33)
        | X33 != X34
        | ~ m1_subset_1(X34,u1_struct_0(X31))
        | ~ m1_subset_1(X33,u1_struct_0(X29))
        | ~ m1_subset_1(X32,k1_zfmisc_1(u1_struct_0(X29)))
        | v2_struct_0(X31)
        | ~ m1_pre_topc(X31,X29)
        | ~ v1_funct_1(X30)
        | ~ v1_funct_2(X30,u1_struct_0(X29),u1_struct_0(X28))
        | ~ m1_subset_1(X30,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X29),u1_struct_0(X28))))
        | v2_struct_0(X29)
        | ~ v2_pre_topc(X29)
        | ~ l1_pre_topc(X29)
        | v2_struct_0(X28)
        | ~ v2_pre_topc(X28)
        | ~ l1_pre_topc(X28) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t65_tmap_1])])])])])).

fof(c_0_22,plain,(
    ! [X19,X20,X21] :
      ( ( ~ m1_connsp_2(X21,X19,X20)
        | r2_hidden(X20,k1_tops_1(X19,X21))
        | ~ m1_subset_1(X21,k1_zfmisc_1(u1_struct_0(X19)))
        | ~ m1_subset_1(X20,u1_struct_0(X19))
        | v2_struct_0(X19)
        | ~ v2_pre_topc(X19)
        | ~ l1_pre_topc(X19) )
      & ( ~ r2_hidden(X20,k1_tops_1(X19,X21))
        | m1_connsp_2(X21,X19,X20)
        | ~ m1_subset_1(X21,k1_zfmisc_1(u1_struct_0(X19)))
        | ~ m1_subset_1(X20,u1_struct_0(X19))
        | v2_struct_0(X19)
        | ~ v2_pre_topc(X19)
        | ~ l1_pre_topc(X19) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_connsp_2])])])])])).

cnf(c_0_23,negated_conjecture,
    ( r2_hidden(esk7_0,X1)
    | ~ r1_tarski(esk6_0,X1) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18])).

cnf(c_0_24,negated_conjecture,
    ( r1_tarski(esk6_0,k1_tops_1(esk3_0,esk6_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19,c_0_20]),c_0_14])])).

cnf(c_0_25,plain,
    ( r1_tmap_1(X3,X2,X4,X6)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | v2_struct_0(X2)
    | ~ r1_tmap_1(X1,X2,k2_tmap_1(X3,X2,X4,X1),X5)
    | ~ r1_tarski(X7,u1_struct_0(X1))
    | ~ m1_connsp_2(X7,X3,X6)
    | X6 != X5
    | ~ m1_subset_1(X5,u1_struct_0(X1))
    | ~ m1_subset_1(X6,u1_struct_0(X3))
    | ~ m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(X3)))
    | ~ m1_pre_topc(X1,X3)
    | ~ v1_funct_1(X4)
    | ~ v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X2))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))
    | ~ v2_pre_topc(X3)
    | ~ l1_pre_topc(X3)
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_26,plain,
    ( m1_connsp_2(X3,X2,X1)
    | v2_struct_0(X2)
    | ~ r2_hidden(X1,k1_tops_1(X2,X3))
    | ~ m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))
    | ~ m1_subset_1(X1,u1_struct_0(X2))
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_27,negated_conjecture,
    ( r2_hidden(esk7_0,k1_tops_1(esk3_0,esk6_0)) ),
    inference(spm,[status(thm)],[c_0_23,c_0_24])).

cnf(c_0_28,negated_conjecture,
    ( v2_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_29,negated_conjecture,
    ( m1_subset_1(esk7_0,u1_struct_0(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_30,negated_conjecture,
    ( ~ v2_struct_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

fof(c_0_31,plain,(
    ! [X22,X23,X24,X25,X26,X27] :
      ( v2_struct_0(X22)
      | ~ v2_pre_topc(X22)
      | ~ l1_pre_topc(X22)
      | v2_struct_0(X23)
      | ~ v2_pre_topc(X23)
      | ~ l1_pre_topc(X23)
      | ~ v1_funct_1(X24)
      | ~ v1_funct_2(X24,u1_struct_0(X23),u1_struct_0(X22))
      | ~ m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X23),u1_struct_0(X22))))
      | v2_struct_0(X25)
      | ~ m1_pre_topc(X25,X23)
      | ~ m1_subset_1(X26,u1_struct_0(X23))
      | ~ m1_subset_1(X27,u1_struct_0(X25))
      | X26 != X27
      | ~ r1_tmap_1(X23,X22,X24,X26)
      | r1_tmap_1(X25,X22,k2_tmap_1(X23,X22,X24,X25),X27) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t64_tmap_1])])])])).

cnf(c_0_32,plain,
    ( r1_tmap_1(X1,X2,X3,X4)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X5)
    | ~ r1_tmap_1(X5,X2,k2_tmap_1(X1,X2,X3,X5),X4)
    | ~ m1_pre_topc(X5,X1)
    | ~ v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
    | ~ v1_funct_1(X3)
    | ~ m1_connsp_2(X6,X1,X4)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ m1_subset_1(X4,u1_struct_0(X5))
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ r1_tarski(X6,u1_struct_0(X5)) ),
    inference(er,[status(thm)],[c_0_25])).

cnf(c_0_33,negated_conjecture,
    ( m1_connsp_2(esk6_0,esk3_0,esk7_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26,c_0_27]),c_0_28]),c_0_14]),c_0_29]),c_0_15])]),c_0_30])).

cnf(c_0_34,plain,
    ( v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X4)
    | r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X6)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2)
    | ~ v1_funct_1(X3)
    | ~ v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))
    | ~ m1_pre_topc(X4,X2)
    | ~ m1_subset_1(X5,u1_struct_0(X2))
    | ~ m1_subset_1(X6,u1_struct_0(X4))
    | X5 != X6
    | ~ r1_tmap_1(X2,X1,X3,X5) ),
    inference(split_conjunct,[status(thm)],[c_0_31])).

cnf(c_0_35,negated_conjecture,
    ( r1_tmap_1(esk3_0,X1,X2,esk7_0)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | ~ r1_tmap_1(X3,X1,k2_tmap_1(esk3_0,X1,X2,X3),esk7_0)
    | ~ m1_pre_topc(X3,esk3_0)
    | ~ v1_funct_2(X2,u1_struct_0(esk3_0),u1_struct_0(X1))
    | ~ v1_funct_1(X2)
    | ~ v2_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(X1))))
    | ~ m1_subset_1(esk7_0,u1_struct_0(X3))
    | ~ l1_pre_topc(X1)
    | ~ r1_tarski(esk6_0,u1_struct_0(X3)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32,c_0_33]),c_0_28]),c_0_14]),c_0_29]),c_0_15])]),c_0_30])).

cnf(c_0_36,negated_conjecture,
    ( v1_funct_2(esk4_0,u1_struct_0(esk3_0),u1_struct_0(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_37,negated_conjecture,
    ( v1_funct_1(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_38,negated_conjecture,
    ( v2_pre_topc(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_39,negated_conjecture,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_40,negated_conjecture,
    ( l1_pre_topc(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_41,negated_conjecture,
    ( ~ v2_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_42,negated_conjecture,
    ( m1_subset_1(esk8_0,u1_struct_0(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_43,negated_conjecture,
    ( esk7_0 = esk8_0 ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_44,negated_conjecture,
    ( r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0)
    | r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_45,plain,
    ( r1_tmap_1(X1,X2,k2_tmap_1(X3,X2,X4,X1),X5)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | v2_struct_0(X2)
    | ~ r1_tmap_1(X3,X2,X4,X5)
    | ~ m1_pre_topc(X1,X3)
    | ~ v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X2))
    | ~ v1_funct_1(X4)
    | ~ v2_pre_topc(X3)
    | ~ v2_pre_topc(X2)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))
    | ~ m1_subset_1(X5,u1_struct_0(X1))
    | ~ m1_subset_1(X5,u1_struct_0(X3))
    | ~ l1_pre_topc(X3)
    | ~ l1_pre_topc(X2) ),
    inference(er,[status(thm)],[c_0_34])).

cnf(c_0_46,negated_conjecture,
    ( ~ r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0)
    | ~ r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),esk8_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_47,negated_conjecture,
    ( r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0)
    | v2_struct_0(X1)
    | ~ r1_tmap_1(X1,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,X1),esk7_0)
    | ~ m1_pre_topc(X1,esk3_0)
    | ~ m1_subset_1(esk7_0,u1_struct_0(X1))
    | ~ r1_tarski(esk6_0,u1_struct_0(X1)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_36]),c_0_37]),c_0_38]),c_0_39]),c_0_40])]),c_0_41])).

cnf(c_0_48,negated_conjecture,
    ( m1_pre_topc(esk5_0,esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_49,negated_conjecture,
    ( m1_subset_1(esk7_0,u1_struct_0(esk5_0)) ),
    inference(rw,[status(thm)],[c_0_42,c_0_43])).

cnf(c_0_50,negated_conjecture,
    ( r1_tarski(esk6_0,u1_struct_0(esk5_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_51,negated_conjecture,
    ( ~ v2_struct_0(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_52,negated_conjecture,
    ( r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),esk7_0)
    | r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0) ),
    inference(rw,[status(thm)],[c_0_44,c_0_43])).

cnf(c_0_53,negated_conjecture,
    ( r1_tmap_1(X1,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,X1),X2)
    | v2_struct_0(X1)
    | ~ r1_tmap_1(esk3_0,esk2_0,esk4_0,X2)
    | ~ m1_pre_topc(X1,esk3_0)
    | ~ m1_subset_1(X2,u1_struct_0(esk3_0))
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45,c_0_36]),c_0_37]),c_0_28]),c_0_38]),c_0_39]),c_0_15]),c_0_40])]),c_0_41]),c_0_30])).

cnf(c_0_54,negated_conjecture,
    ( ~ r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),esk7_0)
    | ~ r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0) ),
    inference(rw,[status(thm)],[c_0_46,c_0_43])).

cnf(c_0_55,negated_conjecture,
    ( r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0) ),
    inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47,c_0_48]),c_0_49]),c_0_50])]),c_0_51]),c_0_52])).

cnf(c_0_56,negated_conjecture,
    ( r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),X1)
    | ~ r1_tmap_1(esk3_0,esk2_0,esk4_0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(esk3_0))
    | ~ m1_subset_1(X1,u1_struct_0(esk5_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_48]),c_0_51])).

cnf(c_0_57,negated_conjecture,
    ( ~ r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),esk7_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_54,c_0_55])])).

cnf(c_0_58,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56,c_0_55]),c_0_29]),c_0_49])]),c_0_57]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.12  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.12/0.33  % Computer   : n004.cluster.edu
% 0.12/0.33  % Model      : x86_64 x86_64
% 0.12/0.33  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.33  % Memory     : 8042.1875MB
% 0.12/0.33  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.33  % CPULimit   : 60
% 0.12/0.33  % WCLimit    : 600
% 0.12/0.33  % DateTime   : Tue Dec  1 18:10:53 EST 2020
% 0.12/0.33  % CPUTime    : 
% 0.12/0.33  # Version: 2.5pre002
% 0.12/0.34  # No SInE strategy applied
% 0.12/0.34  # Trying AutoSched0 for 299 seconds
% 0.12/0.37  # AutoSched0-Mode selected heuristic G_E___208_B07_F1_SE_CS_SP_PS_S4d
% 0.12/0.37  # and selection function SelectCQIPrecWNTNp.
% 0.12/0.37  #
% 0.12/0.37  # Preprocessing time       : 0.030 s
% 0.12/0.37  # Presaturation interreduction done
% 0.12/0.37  
% 0.12/0.37  # Proof found!
% 0.12/0.37  # SZS status Theorem
% 0.12/0.37  # SZS output start CNFRefutation
% 0.12/0.37  fof(t66_tmap_1, conjecture, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X2))=>![X5]:(m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X2)))=>![X6]:(m1_subset_1(X6,u1_struct_0(X2))=>![X7]:(m1_subset_1(X7,u1_struct_0(X4))=>((((v3_pre_topc(X5,X2)&r2_hidden(X6,X5))&r1_tarski(X5,u1_struct_0(X4)))&X6=X7)=>(r1_tmap_1(X2,X1,X3,X6)<=>r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X7)))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t66_tmap_1)).
% 0.12/0.37  fof(t56_tops_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>((v3_pre_topc(X2,X1)&r1_tarski(X2,X3))=>r1_tarski(X2,k1_tops_1(X1,X3)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t56_tops_1)).
% 0.12/0.37  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.12/0.37  fof(d3_tarski, axiom, ![X1, X2]:(r1_tarski(X1,X2)<=>![X3]:(r2_hidden(X3,X1)=>r2_hidden(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_tarski)).
% 0.12/0.37  fof(t65_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X2))=>![X5]:(m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X2)))=>![X6]:(m1_subset_1(X6,u1_struct_0(X2))=>![X7]:(m1_subset_1(X7,u1_struct_0(X4))=>(((r1_tarski(X5,u1_struct_0(X4))&m1_connsp_2(X5,X2,X6))&X6=X7)=>(r1_tmap_1(X2,X1,X3,X6)<=>r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X7)))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t65_tmap_1)).
% 0.12/0.37  fof(d1_connsp_2, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,u1_struct_0(X1))=>![X3]:(m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))=>(m1_connsp_2(X3,X1,X2)<=>r2_hidden(X2,k1_tops_1(X1,X3)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d1_connsp_2)).
% 0.12/0.37  fof(t64_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X2))=>![X5]:(m1_subset_1(X5,u1_struct_0(X2))=>![X6]:(m1_subset_1(X6,u1_struct_0(X4))=>((X5=X6&r1_tmap_1(X2,X1,X3,X5))=>r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X6)))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t64_tmap_1)).
% 0.12/0.37  fof(c_0_7, negated_conjecture, ~(![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X2))=>![X5]:(m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X2)))=>![X6]:(m1_subset_1(X6,u1_struct_0(X2))=>![X7]:(m1_subset_1(X7,u1_struct_0(X4))=>((((v3_pre_topc(X5,X2)&r2_hidden(X6,X5))&r1_tarski(X5,u1_struct_0(X4)))&X6=X7)=>(r1_tmap_1(X2,X1,X3,X6)<=>r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X7))))))))))), inference(assume_negation,[status(cth)],[t66_tmap_1])).
% 0.12/0.37  fof(c_0_8, plain, ![X16, X17, X18]:(~l1_pre_topc(X16)|(~m1_subset_1(X17,k1_zfmisc_1(u1_struct_0(X16)))|(~m1_subset_1(X18,k1_zfmisc_1(u1_struct_0(X16)))|(~v3_pre_topc(X17,X16)|~r1_tarski(X17,X18)|r1_tarski(X17,k1_tops_1(X16,X18)))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t56_tops_1])])])).
% 0.12/0.37  fof(c_0_9, negated_conjecture, (((~v2_struct_0(esk2_0)&v2_pre_topc(esk2_0))&l1_pre_topc(esk2_0))&(((~v2_struct_0(esk3_0)&v2_pre_topc(esk3_0))&l1_pre_topc(esk3_0))&(((v1_funct_1(esk4_0)&v1_funct_2(esk4_0,u1_struct_0(esk3_0),u1_struct_0(esk2_0)))&m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0)))))&((~v2_struct_0(esk5_0)&m1_pre_topc(esk5_0,esk3_0))&(m1_subset_1(esk6_0,k1_zfmisc_1(u1_struct_0(esk3_0)))&(m1_subset_1(esk7_0,u1_struct_0(esk3_0))&(m1_subset_1(esk8_0,u1_struct_0(esk5_0))&((((v3_pre_topc(esk6_0,esk3_0)&r2_hidden(esk7_0,esk6_0))&r1_tarski(esk6_0,u1_struct_0(esk5_0)))&esk7_0=esk8_0)&((~r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0)|~r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),esk8_0))&(r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0)|r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),esk8_0))))))))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_7])])])])).
% 0.12/0.37  fof(c_0_10, plain, ![X14, X15]:(((r1_tarski(X14,X15)|X14!=X15)&(r1_tarski(X15,X14)|X14!=X15))&(~r1_tarski(X14,X15)|~r1_tarski(X15,X14)|X14=X15)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.12/0.37  fof(c_0_11, plain, ![X8, X9, X10, X11, X12]:((~r1_tarski(X8,X9)|(~r2_hidden(X10,X8)|r2_hidden(X10,X9)))&((r2_hidden(esk1_2(X11,X12),X11)|r1_tarski(X11,X12))&(~r2_hidden(esk1_2(X11,X12),X12)|r1_tarski(X11,X12)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_tarski])])])])])])).
% 0.12/0.37  cnf(c_0_12, plain, (r1_tarski(X2,k1_tops_1(X1,X3))|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~v3_pre_topc(X2,X1)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.12/0.37  cnf(c_0_13, negated_conjecture, (v3_pre_topc(esk6_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_14, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(u1_struct_0(esk3_0)))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_15, negated_conjecture, (l1_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_16, plain, (r1_tarski(X1,X2)|X2!=X1), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.12/0.37  cnf(c_0_17, plain, (r2_hidden(X3,X2)|~r1_tarski(X1,X2)|~r2_hidden(X3,X1)), inference(split_conjunct,[status(thm)],[c_0_11])).
% 0.12/0.37  cnf(c_0_18, negated_conjecture, (r2_hidden(esk7_0,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_19, negated_conjecture, (r1_tarski(esk6_0,k1_tops_1(esk3_0,X1))|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk3_0)))|~r1_tarski(esk6_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_12, c_0_13]), c_0_14]), c_0_15])])).
% 0.12/0.37  cnf(c_0_20, plain, (r1_tarski(X1,X1)), inference(er,[status(thm)],[c_0_16])).
% 0.12/0.37  fof(c_0_21, plain, ![X28, X29, X30, X31, X32, X33, X34]:((~r1_tmap_1(X29,X28,X30,X33)|r1_tmap_1(X31,X28,k2_tmap_1(X29,X28,X30,X31),X34)|(~r1_tarski(X32,u1_struct_0(X31))|~m1_connsp_2(X32,X29,X33)|X33!=X34)|~m1_subset_1(X34,u1_struct_0(X31))|~m1_subset_1(X33,u1_struct_0(X29))|~m1_subset_1(X32,k1_zfmisc_1(u1_struct_0(X29)))|(v2_struct_0(X31)|~m1_pre_topc(X31,X29))|(~v1_funct_1(X30)|~v1_funct_2(X30,u1_struct_0(X29),u1_struct_0(X28))|~m1_subset_1(X30,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X29),u1_struct_0(X28)))))|(v2_struct_0(X29)|~v2_pre_topc(X29)|~l1_pre_topc(X29))|(v2_struct_0(X28)|~v2_pre_topc(X28)|~l1_pre_topc(X28)))&(~r1_tmap_1(X31,X28,k2_tmap_1(X29,X28,X30,X31),X34)|r1_tmap_1(X29,X28,X30,X33)|(~r1_tarski(X32,u1_struct_0(X31))|~m1_connsp_2(X32,X29,X33)|X33!=X34)|~m1_subset_1(X34,u1_struct_0(X31))|~m1_subset_1(X33,u1_struct_0(X29))|~m1_subset_1(X32,k1_zfmisc_1(u1_struct_0(X29)))|(v2_struct_0(X31)|~m1_pre_topc(X31,X29))|(~v1_funct_1(X30)|~v1_funct_2(X30,u1_struct_0(X29),u1_struct_0(X28))|~m1_subset_1(X30,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X29),u1_struct_0(X28)))))|(v2_struct_0(X29)|~v2_pre_topc(X29)|~l1_pre_topc(X29))|(v2_struct_0(X28)|~v2_pre_topc(X28)|~l1_pre_topc(X28)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t65_tmap_1])])])])])).
% 0.12/0.37  fof(c_0_22, plain, ![X19, X20, X21]:((~m1_connsp_2(X21,X19,X20)|r2_hidden(X20,k1_tops_1(X19,X21))|~m1_subset_1(X21,k1_zfmisc_1(u1_struct_0(X19)))|~m1_subset_1(X20,u1_struct_0(X19))|(v2_struct_0(X19)|~v2_pre_topc(X19)|~l1_pre_topc(X19)))&(~r2_hidden(X20,k1_tops_1(X19,X21))|m1_connsp_2(X21,X19,X20)|~m1_subset_1(X21,k1_zfmisc_1(u1_struct_0(X19)))|~m1_subset_1(X20,u1_struct_0(X19))|(v2_struct_0(X19)|~v2_pre_topc(X19)|~l1_pre_topc(X19)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[d1_connsp_2])])])])])).
% 0.12/0.37  cnf(c_0_23, negated_conjecture, (r2_hidden(esk7_0,X1)|~r1_tarski(esk6_0,X1)), inference(spm,[status(thm)],[c_0_17, c_0_18])).
% 0.12/0.37  cnf(c_0_24, negated_conjecture, (r1_tarski(esk6_0,k1_tops_1(esk3_0,esk6_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_19, c_0_20]), c_0_14])])).
% 0.12/0.37  cnf(c_0_25, plain, (r1_tmap_1(X3,X2,X4,X6)|v2_struct_0(X1)|v2_struct_0(X3)|v2_struct_0(X2)|~r1_tmap_1(X1,X2,k2_tmap_1(X3,X2,X4,X1),X5)|~r1_tarski(X7,u1_struct_0(X1))|~m1_connsp_2(X7,X3,X6)|X6!=X5|~m1_subset_1(X5,u1_struct_0(X1))|~m1_subset_1(X6,u1_struct_0(X3))|~m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(X3)))|~m1_pre_topc(X1,X3)|~v1_funct_1(X4)|~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X2))|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))|~v2_pre_topc(X3)|~l1_pre_topc(X3)|~v2_pre_topc(X2)|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.12/0.37  cnf(c_0_26, plain, (m1_connsp_2(X3,X2,X1)|v2_struct_0(X2)|~r2_hidden(X1,k1_tops_1(X2,X3))|~m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X2)))|~m1_subset_1(X1,u1_struct_0(X2))|~v2_pre_topc(X2)|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.12/0.37  cnf(c_0_27, negated_conjecture, (r2_hidden(esk7_0,k1_tops_1(esk3_0,esk6_0))), inference(spm,[status(thm)],[c_0_23, c_0_24])).
% 0.12/0.37  cnf(c_0_28, negated_conjecture, (v2_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_29, negated_conjecture, (m1_subset_1(esk7_0,u1_struct_0(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_30, negated_conjecture, (~v2_struct_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  fof(c_0_31, plain, ![X22, X23, X24, X25, X26, X27]:(v2_struct_0(X22)|~v2_pre_topc(X22)|~l1_pre_topc(X22)|(v2_struct_0(X23)|~v2_pre_topc(X23)|~l1_pre_topc(X23)|(~v1_funct_1(X24)|~v1_funct_2(X24,u1_struct_0(X23),u1_struct_0(X22))|~m1_subset_1(X24,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X23),u1_struct_0(X22))))|(v2_struct_0(X25)|~m1_pre_topc(X25,X23)|(~m1_subset_1(X26,u1_struct_0(X23))|(~m1_subset_1(X27,u1_struct_0(X25))|(X26!=X27|~r1_tmap_1(X23,X22,X24,X26)|r1_tmap_1(X25,X22,k2_tmap_1(X23,X22,X24,X25),X27)))))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t64_tmap_1])])])])).
% 0.12/0.37  cnf(c_0_32, plain, (r1_tmap_1(X1,X2,X3,X4)|v2_struct_0(X1)|v2_struct_0(X2)|v2_struct_0(X5)|~r1_tmap_1(X5,X2,k2_tmap_1(X1,X2,X3,X5),X4)|~m1_pre_topc(X5,X1)|~v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))|~v1_funct_1(X3)|~m1_connsp_2(X6,X1,X4)|~v2_pre_topc(X1)|~v2_pre_topc(X2)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))|~m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X4,u1_struct_0(X1))|~m1_subset_1(X4,u1_struct_0(X5))|~l1_pre_topc(X1)|~l1_pre_topc(X2)|~r1_tarski(X6,u1_struct_0(X5))), inference(er,[status(thm)],[c_0_25])).
% 0.12/0.37  cnf(c_0_33, negated_conjecture, (m1_connsp_2(esk6_0,esk3_0,esk7_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_26, c_0_27]), c_0_28]), c_0_14]), c_0_29]), c_0_15])]), c_0_30])).
% 0.12/0.37  cnf(c_0_34, plain, (v2_struct_0(X1)|v2_struct_0(X2)|v2_struct_0(X4)|r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X6)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~v2_pre_topc(X2)|~l1_pre_topc(X2)|~v1_funct_1(X3)|~v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))|~m1_pre_topc(X4,X2)|~m1_subset_1(X5,u1_struct_0(X2))|~m1_subset_1(X6,u1_struct_0(X4))|X5!=X6|~r1_tmap_1(X2,X1,X3,X5)), inference(split_conjunct,[status(thm)],[c_0_31])).
% 0.12/0.37  cnf(c_0_35, negated_conjecture, (r1_tmap_1(esk3_0,X1,X2,esk7_0)|v2_struct_0(X1)|v2_struct_0(X3)|~r1_tmap_1(X3,X1,k2_tmap_1(esk3_0,X1,X2,X3),esk7_0)|~m1_pre_topc(X3,esk3_0)|~v1_funct_2(X2,u1_struct_0(esk3_0),u1_struct_0(X1))|~v1_funct_1(X2)|~v2_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(X1))))|~m1_subset_1(esk7_0,u1_struct_0(X3))|~l1_pre_topc(X1)|~r1_tarski(esk6_0,u1_struct_0(X3))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_32, c_0_33]), c_0_28]), c_0_14]), c_0_29]), c_0_15])]), c_0_30])).
% 0.12/0.37  cnf(c_0_36, negated_conjecture, (v1_funct_2(esk4_0,u1_struct_0(esk3_0),u1_struct_0(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_37, negated_conjecture, (v1_funct_1(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_38, negated_conjecture, (v2_pre_topc(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_39, negated_conjecture, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk3_0),u1_struct_0(esk2_0))))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_40, negated_conjecture, (l1_pre_topc(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_41, negated_conjecture, (~v2_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_42, negated_conjecture, (m1_subset_1(esk8_0,u1_struct_0(esk5_0))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_43, negated_conjecture, (esk7_0=esk8_0), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_44, negated_conjecture, (r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0)|r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),esk8_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_45, plain, (r1_tmap_1(X1,X2,k2_tmap_1(X3,X2,X4,X1),X5)|v2_struct_0(X1)|v2_struct_0(X3)|v2_struct_0(X2)|~r1_tmap_1(X3,X2,X4,X5)|~m1_pre_topc(X1,X3)|~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X2))|~v1_funct_1(X4)|~v2_pre_topc(X3)|~v2_pre_topc(X2)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))|~m1_subset_1(X5,u1_struct_0(X1))|~m1_subset_1(X5,u1_struct_0(X3))|~l1_pre_topc(X3)|~l1_pre_topc(X2)), inference(er,[status(thm)],[c_0_34])).
% 0.12/0.37  cnf(c_0_46, negated_conjecture, (~r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0)|~r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),esk8_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_47, negated_conjecture, (r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0)|v2_struct_0(X1)|~r1_tmap_1(X1,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,X1),esk7_0)|~m1_pre_topc(X1,esk3_0)|~m1_subset_1(esk7_0,u1_struct_0(X1))|~r1_tarski(esk6_0,u1_struct_0(X1))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_36]), c_0_37]), c_0_38]), c_0_39]), c_0_40])]), c_0_41])).
% 0.12/0.37  cnf(c_0_48, negated_conjecture, (m1_pre_topc(esk5_0,esk3_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_49, negated_conjecture, (m1_subset_1(esk7_0,u1_struct_0(esk5_0))), inference(rw,[status(thm)],[c_0_42, c_0_43])).
% 0.12/0.37  cnf(c_0_50, negated_conjecture, (r1_tarski(esk6_0,u1_struct_0(esk5_0))), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_51, negated_conjecture, (~v2_struct_0(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.12/0.37  cnf(c_0_52, negated_conjecture, (r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),esk7_0)|r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0)), inference(rw,[status(thm)],[c_0_44, c_0_43])).
% 0.12/0.37  cnf(c_0_53, negated_conjecture, (r1_tmap_1(X1,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,X1),X2)|v2_struct_0(X1)|~r1_tmap_1(esk3_0,esk2_0,esk4_0,X2)|~m1_pre_topc(X1,esk3_0)|~m1_subset_1(X2,u1_struct_0(esk3_0))|~m1_subset_1(X2,u1_struct_0(X1))), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_45, c_0_36]), c_0_37]), c_0_28]), c_0_38]), c_0_39]), c_0_15]), c_0_40])]), c_0_41]), c_0_30])).
% 0.12/0.37  cnf(c_0_54, negated_conjecture, (~r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),esk7_0)|~r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0)), inference(rw,[status(thm)],[c_0_46, c_0_43])).
% 0.12/0.37  cnf(c_0_55, negated_conjecture, (r1_tmap_1(esk3_0,esk2_0,esk4_0,esk7_0)), inference(csr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_47, c_0_48]), c_0_49]), c_0_50])]), c_0_51]), c_0_52])).
% 0.12/0.37  cnf(c_0_56, negated_conjecture, (r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),X1)|~r1_tmap_1(esk3_0,esk2_0,esk4_0,X1)|~m1_subset_1(X1,u1_struct_0(esk3_0))|~m1_subset_1(X1,u1_struct_0(esk5_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_53, c_0_48]), c_0_51])).
% 0.12/0.37  cnf(c_0_57, negated_conjecture, (~r1_tmap_1(esk5_0,esk2_0,k2_tmap_1(esk3_0,esk2_0,esk4_0,esk5_0),esk7_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_54, c_0_55])])).
% 0.12/0.37  cnf(c_0_58, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_56, c_0_55]), c_0_29]), c_0_49])]), c_0_57]), ['proof']).
% 0.12/0.37  # SZS output end CNFRefutation
% 0.12/0.37  # Proof object total steps             : 59
% 0.12/0.37  # Proof object clause steps            : 44
% 0.12/0.37  # Proof object formula steps           : 15
% 0.12/0.37  # Proof object conjectures             : 38
% 0.12/0.37  # Proof object clause conjectures      : 35
% 0.12/0.37  # Proof object formula conjectures     : 3
% 0.12/0.37  # Proof object initial clauses used    : 26
% 0.12/0.37  # Proof object initial formulas used   : 7
% 0.12/0.37  # Proof object generating inferences   : 11
% 0.12/0.37  # Proof object simplifying inferences  : 50
% 0.12/0.37  # Training examples: 0 positive, 0 negative
% 0.12/0.37  # Parsed axioms                        : 7
% 0.12/0.37  # Removed by relevancy pruning/SinE    : 0
% 0.12/0.37  # Initial clauses                      : 32
% 0.12/0.37  # Removed in clause preprocessing      : 0
% 0.12/0.37  # Initial clauses in saturation        : 32
% 0.12/0.37  # Processed clauses                    : 81
% 0.12/0.37  # ...of these trivial                  : 0
% 0.12/0.37  # ...subsumed                          : 1
% 0.12/0.37  # ...remaining for further processing  : 79
% 0.12/0.37  # Other redundant clauses eliminated   : 5
% 0.12/0.37  # Clauses deleted for lack of memory   : 0
% 0.12/0.37  # Backward-subsumed                    : 0
% 0.12/0.37  # Backward-rewritten                   : 3
% 0.12/0.37  # Generated clauses                    : 29
% 0.12/0.37  # ...of the previous two non-trivial   : 25
% 0.12/0.37  # Contextual simplify-reflections      : 1
% 0.12/0.37  # Paramodulations                      : 24
% 0.12/0.37  # Factorizations                       : 0
% 0.12/0.37  # Equation resolutions                 : 5
% 0.12/0.37  # Propositional unsat checks           : 0
% 0.12/0.37  #    Propositional check models        : 0
% 0.12/0.37  #    Propositional check unsatisfiable : 0
% 0.12/0.37  #    Propositional clauses             : 0
% 0.12/0.37  #    Propositional clauses after purity: 0
% 0.12/0.37  #    Propositional unsat core size     : 0
% 0.12/0.37  #    Propositional preprocessing time  : 0.000
% 0.12/0.37  #    Propositional encoding time       : 0.000
% 0.12/0.37  #    Propositional solver time         : 0.000
% 0.12/0.37  #    Success case prop preproc time    : 0.000
% 0.12/0.37  #    Success case prop encoding time   : 0.000
% 0.12/0.37  #    Success case prop solver time     : 0.000
% 0.12/0.37  # Current number of processed clauses  : 41
% 0.12/0.37  #    Positive orientable unit clauses  : 21
% 0.12/0.37  #    Positive unorientable unit clauses: 0
% 0.12/0.37  #    Negative unit clauses             : 4
% 0.12/0.37  #    Non-unit-clauses                  : 16
% 0.12/0.37  # Current number of unprocessed clauses: 6
% 0.12/0.37  # ...number of literals in the above   : 18
% 0.12/0.37  # Current number of archived formulas  : 0
% 0.12/0.37  # Current number of archived clauses   : 33
% 0.12/0.37  # Clause-clause subsumption calls (NU) : 574
% 0.12/0.37  # Rec. Clause-clause subsumption calls : 14
% 0.12/0.37  # Non-unit clause-clause subsumptions  : 2
% 0.12/0.37  # Unit Clause-clause subsumption calls : 6
% 0.12/0.37  # Rewrite failures with RHS unbound    : 0
% 0.12/0.37  # BW rewrite match attempts            : 4
% 0.12/0.37  # BW rewrite match successes           : 1
% 0.12/0.37  # Condensation attempts                : 0
% 0.12/0.37  # Condensation successes               : 0
% 0.12/0.37  # Termbank termtop insertions          : 4193
% 0.12/0.37  
% 0.12/0.37  # -------------------------------------------------
% 0.12/0.37  # User time                : 0.034 s
% 0.12/0.37  # System time              : 0.005 s
% 0.12/0.37  # Total time               : 0.039 s
% 0.12/0.37  # Maximum resident set size: 1592 pages
%------------------------------------------------------------------------------
