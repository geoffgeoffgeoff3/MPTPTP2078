%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n022.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:18:04 EST 2020

% Result     : Theorem 0.20s
% Output     : CNFRefutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   93 ( 288 expanded)
%              Number of clauses        :   60 ( 103 expanded)
%              Number of leaves         :   16 (  71 expanded)
%              Depth                    :   12
%              Number of atoms          :  378 (2905 expanded)
%              Number of equality atoms :   18 ( 275 expanded)
%              Maximal formula depth    :   32 (   5 average)
%              Maximal clause size      :   44 (   3 average)
%              Maximal term depth       :    4 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t88_tmap_1,conjecture,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & v2_pre_topc(X2)
            & l1_pre_topc(X2) )
         => ! [X3] :
              ( ( ~ v2_struct_0(X3)
                & m1_pre_topc(X3,X1) )
             => ! [X4] :
                  ( ( ~ v2_struct_0(X4)
                    & m1_pre_topc(X4,X1) )
                 => ! [X5] :
                      ( ( v1_funct_1(X5)
                        & v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2))
                        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2)))) )
                     => ( g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3)) = X4
                       => ! [X6] :
                            ( m1_subset_1(X6,u1_struct_0(X4))
                           => ! [X7] :
                                ( m1_subset_1(X7,u1_struct_0(X3))
                               => ( ( X6 = X7
                                    & r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X7) )
                                 => r1_tmap_1(X4,X2,X5,X6) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t88_tmap_1)).

fof(t65_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( l1_pre_topc(X2)
         => ( m1_pre_topc(X1,X2)
          <=> m1_pre_topc(X1,g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2))) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t65_pre_topc)).

fof(dt_m1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => l1_pre_topc(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_m1_pre_topc)).

fof(t83_tmap_1,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( ( ~ v2_struct_0(X2)
            & v2_pre_topc(X2)
            & l1_pre_topc(X2) )
         => ! [X3] :
              ( ( ~ v2_struct_0(X3)
                & m1_pre_topc(X3,X1) )
             => ! [X4] :
                  ( ( ~ v2_struct_0(X4)
                    & m1_pre_topc(X4,X1) )
                 => ! [X5] :
                      ( ( v1_funct_1(X5)
                        & v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2))
                        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2)))) )
                     => ( m1_pre_topc(X3,X4)
                       => ! [X6] :
                            ( m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X4)))
                           => ! [X7] :
                                ( m1_subset_1(X7,u1_struct_0(X4))
                               => ! [X8] :
                                    ( m1_subset_1(X8,u1_struct_0(X3))
                                   => ( ( r1_tarski(X6,u1_struct_0(X3))
                                        & m1_connsp_2(X6,X4,X7)
                                        & X7 = X8 )
                                     => ( r1_tmap_1(X4,X2,X5,X7)
                                      <=> r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X8) ) ) ) ) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t83_tmap_1)).

fof(t7_tsep_1,axiom,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => ! [X3] :
              ( m1_pre_topc(X3,X2)
             => m1_pre_topc(X3,X1) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t7_tsep_1)).

fof(t2_tsep_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => m1_pre_topc(X1,X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_tsep_1)).

fof(dt_k2_subset_1,axiom,(
    ! [X1] : m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k2_subset_1)).

fof(d4_subset_1,axiom,(
    ! [X1] : k2_subset_1(X1) = X1 ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d4_subset_1)).

fof(fc10_tops_1,axiom,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => v3_pre_topc(k2_struct_0(X1),X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc10_tops_1)).

fof(d3_struct_0,axiom,(
    ! [X1] :
      ( l1_struct_0(X1)
     => k2_struct_0(X1) = u1_struct_0(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_struct_0)).

fof(dt_l1_pre_topc,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => l1_struct_0(X1) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_l1_pre_topc)).

fof(t5_connsp_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ! [X3] :
              ( m1_subset_1(X3,u1_struct_0(X1))
             => ( ( v3_pre_topc(X2,X1)
                  & r2_hidden(X3,X2) )
               => m1_connsp_2(X2,X1,X3) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_connsp_2)).

fof(t2_subset,axiom,(
    ! [X1,X2] :
      ( m1_subset_1(X1,X2)
     => ( v1_xboole_0(X2)
        | r2_hidden(X1,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t2_subset)).

fof(cc1_pre_topc,axiom,(
    ! [X1] :
      ( ( v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => v2_pre_topc(X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_pre_topc)).

fof(t35_borsuk_1,axiom,(
    ! [X1] :
      ( l1_pre_topc(X1)
     => ! [X2] :
          ( m1_pre_topc(X2,X1)
         => r1_tarski(u1_struct_0(X2),u1_struct_0(X1)) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t35_borsuk_1)).

fof(fc2_struct_0,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & l1_struct_0(X1) )
     => ~ v1_xboole_0(u1_struct_0(X1)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc2_struct_0)).

fof(c_0_16,negated_conjecture,(
    ~ ! [X1] :
        ( ( ~ v2_struct_0(X1)
          & v2_pre_topc(X1)
          & l1_pre_topc(X1) )
       => ! [X2] :
            ( ( ~ v2_struct_0(X2)
              & v2_pre_topc(X2)
              & l1_pre_topc(X2) )
           => ! [X3] :
                ( ( ~ v2_struct_0(X3)
                  & m1_pre_topc(X3,X1) )
               => ! [X4] :
                    ( ( ~ v2_struct_0(X4)
                      & m1_pre_topc(X4,X1) )
                   => ! [X5] :
                        ( ( v1_funct_1(X5)
                          & v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2))
                          & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2)))) )
                       => ( g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3)) = X4
                         => ! [X6] :
                              ( m1_subset_1(X6,u1_struct_0(X4))
                             => ! [X7] :
                                  ( m1_subset_1(X7,u1_struct_0(X3))
                                 => ( ( X6 = X7
                                      & r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X7) )
                                   => r1_tmap_1(X4,X2,X5,X6) ) ) ) ) ) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t88_tmap_1])).

fof(c_0_17,plain,(
    ! [X20,X21] :
      ( ( ~ m1_pre_topc(X20,X21)
        | m1_pre_topc(X20,g1_pre_topc(u1_struct_0(X21),u1_pre_topc(X21)))
        | ~ l1_pre_topc(X21)
        | ~ l1_pre_topc(X20) )
      & ( ~ m1_pre_topc(X20,g1_pre_topc(u1_struct_0(X21),u1_pre_topc(X21)))
        | m1_pre_topc(X20,X21)
        | ~ l1_pre_topc(X21)
        | ~ l1_pre_topc(X20) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t65_pre_topc])])])])).

fof(c_0_18,plain,(
    ! [X17,X18] :
      ( ~ l1_pre_topc(X17)
      | ~ m1_pre_topc(X18,X17)
      | l1_pre_topc(X18) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).

fof(c_0_19,negated_conjecture,
    ( ~ v2_struct_0(esk1_0)
    & v2_pre_topc(esk1_0)
    & l1_pre_topc(esk1_0)
    & ~ v2_struct_0(esk2_0)
    & v2_pre_topc(esk2_0)
    & l1_pre_topc(esk2_0)
    & ~ v2_struct_0(esk3_0)
    & m1_pre_topc(esk3_0,esk1_0)
    & ~ v2_struct_0(esk4_0)
    & m1_pre_topc(esk4_0,esk1_0)
    & v1_funct_1(esk5_0)
    & v1_funct_2(esk5_0,u1_struct_0(esk4_0),u1_struct_0(esk2_0))
    & m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk4_0),u1_struct_0(esk2_0))))
    & g1_pre_topc(u1_struct_0(esk3_0),u1_pre_topc(esk3_0)) = esk4_0
    & m1_subset_1(esk6_0,u1_struct_0(esk4_0))
    & m1_subset_1(esk7_0,u1_struct_0(esk3_0))
    & esk6_0 = esk7_0
    & r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0)
    & ~ r1_tmap_1(esk4_0,esk2_0,esk5_0,esk6_0) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_16])])])])).

fof(c_0_20,plain,(
    ! [X34,X35,X36,X37,X38,X39,X40,X41] :
      ( ( ~ r1_tmap_1(X37,X35,X38,X40)
        | r1_tmap_1(X36,X35,k3_tmap_1(X34,X35,X37,X36,X38),X41)
        | ~ r1_tarski(X39,u1_struct_0(X36))
        | ~ m1_connsp_2(X39,X37,X40)
        | X40 != X41
        | ~ m1_subset_1(X41,u1_struct_0(X36))
        | ~ m1_subset_1(X40,u1_struct_0(X37))
        | ~ m1_subset_1(X39,k1_zfmisc_1(u1_struct_0(X37)))
        | ~ m1_pre_topc(X36,X37)
        | ~ v1_funct_1(X38)
        | ~ v1_funct_2(X38,u1_struct_0(X37),u1_struct_0(X35))
        | ~ m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X37),u1_struct_0(X35))))
        | v2_struct_0(X37)
        | ~ m1_pre_topc(X37,X34)
        | v2_struct_0(X36)
        | ~ m1_pre_topc(X36,X34)
        | v2_struct_0(X35)
        | ~ v2_pre_topc(X35)
        | ~ l1_pre_topc(X35)
        | v2_struct_0(X34)
        | ~ v2_pre_topc(X34)
        | ~ l1_pre_topc(X34) )
      & ( ~ r1_tmap_1(X36,X35,k3_tmap_1(X34,X35,X37,X36,X38),X41)
        | r1_tmap_1(X37,X35,X38,X40)
        | ~ r1_tarski(X39,u1_struct_0(X36))
        | ~ m1_connsp_2(X39,X37,X40)
        | X40 != X41
        | ~ m1_subset_1(X41,u1_struct_0(X36))
        | ~ m1_subset_1(X40,u1_struct_0(X37))
        | ~ m1_subset_1(X39,k1_zfmisc_1(u1_struct_0(X37)))
        | ~ m1_pre_topc(X36,X37)
        | ~ v1_funct_1(X38)
        | ~ v1_funct_2(X38,u1_struct_0(X37),u1_struct_0(X35))
        | ~ m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X37),u1_struct_0(X35))))
        | v2_struct_0(X37)
        | ~ m1_pre_topc(X37,X34)
        | v2_struct_0(X36)
        | ~ m1_pre_topc(X36,X34)
        | v2_struct_0(X35)
        | ~ v2_pre_topc(X35)
        | ~ l1_pre_topc(X35)
        | v2_struct_0(X34)
        | ~ v2_pre_topc(X34)
        | ~ l1_pre_topc(X34) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t83_tmap_1])])])])])).

fof(c_0_21,plain,(
    ! [X31,X32,X33] :
      ( ~ v2_pre_topc(X31)
      | ~ l1_pre_topc(X31)
      | ~ m1_pre_topc(X32,X31)
      | ~ m1_pre_topc(X33,X32)
      | m1_pre_topc(X33,X31) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_tsep_1])])])).

cnf(c_0_22,plain,
    ( m1_pre_topc(X1,g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)))
    | ~ m1_pre_topc(X1,X2)
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_23,plain,
    ( l1_pre_topc(X2)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_18])).

cnf(c_0_24,negated_conjecture,
    ( m1_pre_topc(esk3_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_25,negated_conjecture,
    ( l1_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

fof(c_0_26,plain,(
    ! [X28] :
      ( ~ l1_pre_topc(X28)
      | m1_pre_topc(X28,X28) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_tsep_1])])).

cnf(c_0_27,plain,
    ( r1_tmap_1(X4,X2,X5,X7)
    | v2_struct_0(X4)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ r1_tmap_1(X1,X2,k3_tmap_1(X3,X2,X4,X1,X5),X6)
    | ~ r1_tarski(X8,u1_struct_0(X1))
    | ~ m1_connsp_2(X8,X4,X7)
    | X7 != X6
    | ~ m1_subset_1(X6,u1_struct_0(X1))
    | ~ m1_subset_1(X7,u1_struct_0(X4))
    | ~ m1_subset_1(X8,k1_zfmisc_1(u1_struct_0(X4)))
    | ~ m1_pre_topc(X1,X4)
    | ~ v1_funct_1(X5)
    | ~ v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2))
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2))))
    | ~ m1_pre_topc(X4,X3)
    | ~ m1_pre_topc(X1,X3)
    | ~ v2_pre_topc(X2)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X3)
    | ~ l1_pre_topc(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_20])).

cnf(c_0_28,plain,
    ( m1_pre_topc(X3,X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1)
    | ~ m1_pre_topc(X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_21])).

cnf(c_0_29,plain,
    ( m1_pre_topc(X1,g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)))
    | ~ m1_pre_topc(X1,X2)
    | ~ l1_pre_topc(X2) ),
    inference(csr,[status(thm)],[c_0_22,c_0_23])).

cnf(c_0_30,negated_conjecture,
    ( g1_pre_topc(u1_struct_0(esk3_0),u1_pre_topc(esk3_0)) = esk4_0 ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_31,negated_conjecture,
    ( l1_pre_topc(esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_24]),c_0_25])])).

cnf(c_0_32,plain,
    ( m1_pre_topc(X1,X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_26])).

fof(c_0_33,plain,(
    ! [X10] : m1_subset_1(k2_subset_1(X10),k1_zfmisc_1(X10)) ),
    inference(variable_rename,[status(thm)],[dt_k2_subset_1])).

fof(c_0_34,plain,(
    ! [X9] : k2_subset_1(X9) = X9 ),
    inference(variable_rename,[status(thm)],[d4_subset_1])).

fof(c_0_35,plain,(
    ! [X22] :
      ( ~ v2_pre_topc(X22)
      | ~ l1_pre_topc(X22)
      | v3_pre_topc(k2_struct_0(X22),X22) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc10_tops_1])])).

fof(c_0_36,plain,(
    ! [X15] :
      ( ~ l1_struct_0(X15)
      | k2_struct_0(X15) = u1_struct_0(X15) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).

fof(c_0_37,plain,(
    ! [X16] :
      ( ~ l1_pre_topc(X16)
      | l1_struct_0(X16) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_pre_topc])])).

cnf(c_0_38,plain,
    ( r1_tmap_1(X1,X2,X3,X4)
    | v2_struct_0(X1)
    | v2_struct_0(X5)
    | v2_struct_0(X2)
    | v2_struct_0(X6)
    | ~ r1_tmap_1(X6,X2,k3_tmap_1(X5,X2,X1,X6,X3),X4)
    | ~ v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
    | ~ v1_funct_1(X3)
    | ~ r1_tarski(X7,u1_struct_0(X6))
    | ~ m1_connsp_2(X7,X1,X4)
    | ~ m1_pre_topc(X1,X5)
    | ~ m1_pre_topc(X6,X1)
    | ~ l1_pre_topc(X5)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X5)
    | ~ v2_pre_topc(X2)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ m1_subset_1(X4,u1_struct_0(X6)) ),
    inference(er,[status(thm)],[inference(csr,[status(thm)],[c_0_27,c_0_28])])).

cnf(c_0_39,negated_conjecture,
    ( m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk4_0),u1_struct_0(esk2_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_40,negated_conjecture,
    ( v1_funct_2(esk5_0,u1_struct_0(esk4_0),u1_struct_0(esk2_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_41,negated_conjecture,
    ( v1_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_42,negated_conjecture,
    ( l1_pre_topc(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_43,negated_conjecture,
    ( v2_pre_topc(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_44,negated_conjecture,
    ( ~ v2_struct_0(esk2_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_45,negated_conjecture,
    ( ~ v2_struct_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_46,negated_conjecture,
    ( r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_47,negated_conjecture,
    ( esk6_0 = esk7_0 ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_48,negated_conjecture,
    ( m1_pre_topc(X1,esk4_0)
    | ~ m1_pre_topc(X1,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29,c_0_30]),c_0_31])])).

cnf(c_0_49,negated_conjecture,
    ( m1_pre_topc(esk3_0,esk3_0) ),
    inference(spm,[status(thm)],[c_0_32,c_0_31])).

cnf(c_0_50,negated_conjecture,
    ( m1_subset_1(esk7_0,u1_struct_0(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

fof(c_0_51,plain,(
    ! [X23,X24,X25] :
      ( v2_struct_0(X23)
      | ~ v2_pre_topc(X23)
      | ~ l1_pre_topc(X23)
      | ~ m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))
      | ~ m1_subset_1(X25,u1_struct_0(X23))
      | ~ v3_pre_topc(X24,X23)
      | ~ r2_hidden(X25,X24)
      | m1_connsp_2(X24,X23,X25) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t5_connsp_2])])])])).

cnf(c_0_52,plain,
    ( m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_33])).

cnf(c_0_53,plain,
    ( k2_subset_1(X1) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_34])).

cnf(c_0_54,plain,
    ( v3_pre_topc(k2_struct_0(X1),X1)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_35])).

cnf(c_0_55,plain,
    ( k2_struct_0(X1) = u1_struct_0(X1)
    | ~ l1_struct_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_36])).

cnf(c_0_56,plain,
    ( l1_struct_0(X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_37])).

fof(c_0_57,plain,(
    ! [X11,X12] :
      ( ~ m1_subset_1(X11,X12)
      | v1_xboole_0(X12)
      | r2_hidden(X11,X12) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).

fof(c_0_58,plain,(
    ! [X13,X14] :
      ( ~ v2_pre_topc(X13)
      | ~ l1_pre_topc(X13)
      | ~ m1_pre_topc(X14,X13)
      | v2_pre_topc(X14) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_pre_topc])])])).

cnf(c_0_59,negated_conjecture,
    ( r1_tmap_1(esk4_0,esk2_0,esk5_0,X1)
    | v2_struct_0(X2)
    | v2_struct_0(X3)
    | ~ r1_tmap_1(X3,esk2_0,k3_tmap_1(X2,esk2_0,esk4_0,X3,esk5_0),X1)
    | ~ r1_tarski(X4,u1_struct_0(X3))
    | ~ m1_connsp_2(X4,esk4_0,X1)
    | ~ m1_pre_topc(esk4_0,X2)
    | ~ m1_pre_topc(X3,esk4_0)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X2)
    | ~ m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(esk4_0)))
    | ~ m1_subset_1(X1,u1_struct_0(esk4_0))
    | ~ m1_subset_1(X1,u1_struct_0(X3)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_39]),c_0_40]),c_0_41]),c_0_42]),c_0_43])]),c_0_44]),c_0_45])).

cnf(c_0_60,negated_conjecture,
    ( r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk6_0) ),
    inference(rw,[status(thm)],[c_0_46,c_0_47])).

cnf(c_0_61,negated_conjecture,
    ( m1_pre_topc(esk4_0,esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_62,negated_conjecture,
    ( m1_pre_topc(esk3_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_48,c_0_49])).

cnf(c_0_63,negated_conjecture,
    ( v2_pre_topc(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_64,negated_conjecture,
    ( m1_subset_1(esk6_0,u1_struct_0(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_65,negated_conjecture,
    ( m1_subset_1(esk6_0,u1_struct_0(esk3_0)) ),
    inference(rw,[status(thm)],[c_0_50,c_0_47])).

cnf(c_0_66,negated_conjecture,
    ( ~ r1_tmap_1(esk4_0,esk2_0,esk5_0,esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_67,negated_conjecture,
    ( ~ v2_struct_0(esk1_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_68,negated_conjecture,
    ( ~ v2_struct_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_19])).

cnf(c_0_69,plain,
    ( v2_struct_0(X1)
    | m1_connsp_2(X2,X1,X3)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ v3_pre_topc(X2,X1)
    | ~ r2_hidden(X3,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_51])).

cnf(c_0_70,plain,
    ( m1_subset_1(X1,k1_zfmisc_1(X1)) ),
    inference(rw,[status(thm)],[c_0_52,c_0_53])).

cnf(c_0_71,plain,
    ( v3_pre_topc(u1_struct_0(X1),X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_55]),c_0_56])).

cnf(c_0_72,plain,
    ( v1_xboole_0(X2)
    | r2_hidden(X1,X2)
    | ~ m1_subset_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_57])).

cnf(c_0_73,plain,
    ( v2_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_58])).

cnf(c_0_74,negated_conjecture,
    ( ~ r1_tarski(X1,u1_struct_0(esk3_0))
    | ~ m1_connsp_2(X1,esk4_0,esk6_0)
    | ~ m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0))) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59,c_0_60]),c_0_61]),c_0_62]),c_0_25]),c_0_63]),c_0_64]),c_0_65])]),c_0_66]),c_0_67]),c_0_68])).

cnf(c_0_75,plain,
    ( m1_connsp_2(u1_struct_0(X1),X1,X2)
    | v2_struct_0(X1)
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1)
    | ~ r2_hidden(X2,u1_struct_0(X1))
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_69,c_0_70]),c_0_71])).

cnf(c_0_76,negated_conjecture,
    ( r2_hidden(esk6_0,u1_struct_0(esk4_0))
    | v1_xboole_0(u1_struct_0(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_72,c_0_64])).

cnf(c_0_77,negated_conjecture,
    ( l1_pre_topc(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23,c_0_61]),c_0_25])])).

cnf(c_0_78,negated_conjecture,
    ( v2_pre_topc(esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73,c_0_61]),c_0_25]),c_0_63])])).

cnf(c_0_79,plain,
    ( m1_pre_topc(X1,X2)
    | ~ m1_pre_topc(X1,g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)))
    | ~ l1_pre_topc(X2)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_17])).

cnf(c_0_80,negated_conjecture,
    ( ~ r1_tarski(u1_struct_0(esk4_0),u1_struct_0(esk3_0))
    | ~ m1_connsp_2(u1_struct_0(esk4_0),esk4_0,esk6_0) ),
    inference(spm,[status(thm)],[c_0_74,c_0_70])).

cnf(c_0_81,negated_conjecture,
    ( m1_connsp_2(u1_struct_0(esk4_0),esk4_0,esk6_0)
    | v1_xboole_0(u1_struct_0(esk4_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75,c_0_76]),c_0_77]),c_0_78]),c_0_64])]),c_0_45])).

fof(c_0_82,plain,(
    ! [X29,X30] :
      ( ~ l1_pre_topc(X29)
      | ~ m1_pre_topc(X30,X29)
      | r1_tarski(u1_struct_0(X30),u1_struct_0(X29)) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_borsuk_1])])])).

cnf(c_0_83,negated_conjecture,
    ( m1_pre_topc(X1,esk3_0)
    | ~ m1_pre_topc(X1,esk4_0)
    | ~ l1_pre_topc(X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79,c_0_30]),c_0_31])])).

cnf(c_0_84,negated_conjecture,
    ( m1_pre_topc(esk4_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_32,c_0_77])).

fof(c_0_85,plain,(
    ! [X19] :
      ( v2_struct_0(X19)
      | ~ l1_struct_0(X19)
      | ~ v1_xboole_0(u1_struct_0(X19)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).

cnf(c_0_86,negated_conjecture,
    ( v1_xboole_0(u1_struct_0(esk4_0))
    | ~ r1_tarski(u1_struct_0(esk4_0),u1_struct_0(esk3_0)) ),
    inference(spm,[status(thm)],[c_0_80,c_0_81])).

cnf(c_0_87,plain,
    ( r1_tarski(u1_struct_0(X2),u1_struct_0(X1))
    | ~ l1_pre_topc(X1)
    | ~ m1_pre_topc(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_82])).

cnf(c_0_88,negated_conjecture,
    ( m1_pre_topc(esk4_0,esk3_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83,c_0_77]),c_0_84])])).

cnf(c_0_89,plain,
    ( v2_struct_0(X1)
    | ~ l1_struct_0(X1)
    | ~ v1_xboole_0(u1_struct_0(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_85])).

cnf(c_0_90,negated_conjecture,
    ( v1_xboole_0(u1_struct_0(esk4_0)) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_86,c_0_87]),c_0_88]),c_0_31])])).

cnf(c_0_91,negated_conjecture,
    ( ~ l1_struct_0(esk4_0) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_89,c_0_90]),c_0_45])).

cnf(c_0_92,negated_conjecture,
    ( $false ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_91,c_0_56]),c_0_77])]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n022.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 13:52:41 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.20/0.39  # AutoSched0-Mode selected heuristic G_E___208_C18AMC_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.20/0.39  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.20/0.39  #
% 0.20/0.39  # Preprocessing time       : 0.029 s
% 0.20/0.39  # Presaturation interreduction done
% 0.20/0.39  
% 0.20/0.39  # Proof found!
% 0.20/0.39  # SZS status Theorem
% 0.20/0.39  # SZS output start CNFRefutation
% 0.20/0.39  fof(t88_tmap_1, conjecture, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X1))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2)))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2)))))=>(g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3))=X4=>![X6]:(m1_subset_1(X6,u1_struct_0(X4))=>![X7]:(m1_subset_1(X7,u1_struct_0(X3))=>((X6=X7&r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X7))=>r1_tmap_1(X4,X2,X5,X6)))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t88_tmap_1)).
% 0.20/0.39  fof(t65_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(l1_pre_topc(X2)=>(m1_pre_topc(X1,X2)<=>m1_pre_topc(X1,g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t65_pre_topc)).
% 0.20/0.39  fof(dt_m1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>l1_pre_topc(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_m1_pre_topc)).
% 0.20/0.39  fof(t83_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X1))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2)))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2)))))=>(m1_pre_topc(X3,X4)=>![X6]:(m1_subset_1(X6,k1_zfmisc_1(u1_struct_0(X4)))=>![X7]:(m1_subset_1(X7,u1_struct_0(X4))=>![X8]:(m1_subset_1(X8,u1_struct_0(X3))=>(((r1_tarski(X6,u1_struct_0(X3))&m1_connsp_2(X6,X4,X7))&X7=X8)=>(r1_tmap_1(X4,X2,X5,X7)<=>r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X8)))))))))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t83_tmap_1)).
% 0.20/0.39  fof(t7_tsep_1, axiom, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_pre_topc(X2,X1)=>![X3]:(m1_pre_topc(X3,X2)=>m1_pre_topc(X3,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t7_tsep_1)).
% 0.20/0.39  fof(t2_tsep_1, axiom, ![X1]:(l1_pre_topc(X1)=>m1_pre_topc(X1,X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_tsep_1)).
% 0.20/0.39  fof(dt_k2_subset_1, axiom, ![X1]:m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k2_subset_1)).
% 0.20/0.39  fof(d4_subset_1, axiom, ![X1]:k2_subset_1(X1)=X1, file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d4_subset_1)).
% 0.20/0.39  fof(fc10_tops_1, axiom, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>v3_pre_topc(k2_struct_0(X1),X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc10_tops_1)).
% 0.20/0.39  fof(d3_struct_0, axiom, ![X1]:(l1_struct_0(X1)=>k2_struct_0(X1)=u1_struct_0(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_struct_0)).
% 0.20/0.39  fof(dt_l1_pre_topc, axiom, ![X1]:(l1_pre_topc(X1)=>l1_struct_0(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_l1_pre_topc)).
% 0.20/0.39  fof(t5_connsp_2, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>((v3_pre_topc(X2,X1)&r2_hidden(X3,X2))=>m1_connsp_2(X2,X1,X3))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t5_connsp_2)).
% 0.20/0.39  fof(t2_subset, axiom, ![X1, X2]:(m1_subset_1(X1,X2)=>(v1_xboole_0(X2)|r2_hidden(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t2_subset)).
% 0.20/0.39  fof(cc1_pre_topc, axiom, ![X1]:((v2_pre_topc(X1)&l1_pre_topc(X1))=>![X2]:(m1_pre_topc(X2,X1)=>v2_pre_topc(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_pre_topc)).
% 0.20/0.39  fof(t35_borsuk_1, axiom, ![X1]:(l1_pre_topc(X1)=>![X2]:(m1_pre_topc(X2,X1)=>r1_tarski(u1_struct_0(X2),u1_struct_0(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t35_borsuk_1)).
% 0.20/0.39  fof(fc2_struct_0, axiom, ![X1]:((~(v2_struct_0(X1))&l1_struct_0(X1))=>~(v1_xboole_0(u1_struct_0(X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc2_struct_0)).
% 0.20/0.39  fof(c_0_16, negated_conjecture, ~(![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:((~(v2_struct_0(X3))&m1_pre_topc(X3,X1))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X1))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2)))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2)))))=>(g1_pre_topc(u1_struct_0(X3),u1_pre_topc(X3))=X4=>![X6]:(m1_subset_1(X6,u1_struct_0(X4))=>![X7]:(m1_subset_1(X7,u1_struct_0(X3))=>((X6=X7&r1_tmap_1(X3,X2,k3_tmap_1(X1,X2,X4,X3,X5),X7))=>r1_tmap_1(X4,X2,X5,X6))))))))))), inference(assume_negation,[status(cth)],[t88_tmap_1])).
% 0.20/0.39  fof(c_0_17, plain, ![X20, X21]:((~m1_pre_topc(X20,X21)|m1_pre_topc(X20,g1_pre_topc(u1_struct_0(X21),u1_pre_topc(X21)))|~l1_pre_topc(X21)|~l1_pre_topc(X20))&(~m1_pre_topc(X20,g1_pre_topc(u1_struct_0(X21),u1_pre_topc(X21)))|m1_pre_topc(X20,X21)|~l1_pre_topc(X21)|~l1_pre_topc(X20))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t65_pre_topc])])])])).
% 0.20/0.39  fof(c_0_18, plain, ![X17, X18]:(~l1_pre_topc(X17)|(~m1_pre_topc(X18,X17)|l1_pre_topc(X18))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_m1_pre_topc])])])).
% 0.20/0.39  fof(c_0_19, negated_conjecture, (((~v2_struct_0(esk1_0)&v2_pre_topc(esk1_0))&l1_pre_topc(esk1_0))&(((~v2_struct_0(esk2_0)&v2_pre_topc(esk2_0))&l1_pre_topc(esk2_0))&((~v2_struct_0(esk3_0)&m1_pre_topc(esk3_0,esk1_0))&((~v2_struct_0(esk4_0)&m1_pre_topc(esk4_0,esk1_0))&(((v1_funct_1(esk5_0)&v1_funct_2(esk5_0,u1_struct_0(esk4_0),u1_struct_0(esk2_0)))&m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk4_0),u1_struct_0(esk2_0)))))&(g1_pre_topc(u1_struct_0(esk3_0),u1_pre_topc(esk3_0))=esk4_0&(m1_subset_1(esk6_0,u1_struct_0(esk4_0))&(m1_subset_1(esk7_0,u1_struct_0(esk3_0))&((esk6_0=esk7_0&r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0))&~r1_tmap_1(esk4_0,esk2_0,esk5_0,esk6_0)))))))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_16])])])])).
% 0.20/0.39  fof(c_0_20, plain, ![X34, X35, X36, X37, X38, X39, X40, X41]:((~r1_tmap_1(X37,X35,X38,X40)|r1_tmap_1(X36,X35,k3_tmap_1(X34,X35,X37,X36,X38),X41)|(~r1_tarski(X39,u1_struct_0(X36))|~m1_connsp_2(X39,X37,X40)|X40!=X41)|~m1_subset_1(X41,u1_struct_0(X36))|~m1_subset_1(X40,u1_struct_0(X37))|~m1_subset_1(X39,k1_zfmisc_1(u1_struct_0(X37)))|~m1_pre_topc(X36,X37)|(~v1_funct_1(X38)|~v1_funct_2(X38,u1_struct_0(X37),u1_struct_0(X35))|~m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X37),u1_struct_0(X35)))))|(v2_struct_0(X37)|~m1_pre_topc(X37,X34))|(v2_struct_0(X36)|~m1_pre_topc(X36,X34))|(v2_struct_0(X35)|~v2_pre_topc(X35)|~l1_pre_topc(X35))|(v2_struct_0(X34)|~v2_pre_topc(X34)|~l1_pre_topc(X34)))&(~r1_tmap_1(X36,X35,k3_tmap_1(X34,X35,X37,X36,X38),X41)|r1_tmap_1(X37,X35,X38,X40)|(~r1_tarski(X39,u1_struct_0(X36))|~m1_connsp_2(X39,X37,X40)|X40!=X41)|~m1_subset_1(X41,u1_struct_0(X36))|~m1_subset_1(X40,u1_struct_0(X37))|~m1_subset_1(X39,k1_zfmisc_1(u1_struct_0(X37)))|~m1_pre_topc(X36,X37)|(~v1_funct_1(X38)|~v1_funct_2(X38,u1_struct_0(X37),u1_struct_0(X35))|~m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X37),u1_struct_0(X35)))))|(v2_struct_0(X37)|~m1_pre_topc(X37,X34))|(v2_struct_0(X36)|~m1_pre_topc(X36,X34))|(v2_struct_0(X35)|~v2_pre_topc(X35)|~l1_pre_topc(X35))|(v2_struct_0(X34)|~v2_pre_topc(X34)|~l1_pre_topc(X34)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t83_tmap_1])])])])])).
% 0.20/0.39  fof(c_0_21, plain, ![X31, X32, X33]:(~v2_pre_topc(X31)|~l1_pre_topc(X31)|(~m1_pre_topc(X32,X31)|(~m1_pre_topc(X33,X32)|m1_pre_topc(X33,X31)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t7_tsep_1])])])).
% 0.20/0.39  cnf(c_0_22, plain, (m1_pre_topc(X1,g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)))|~m1_pre_topc(X1,X2)|~l1_pre_topc(X2)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.39  cnf(c_0_23, plain, (l1_pre_topc(X2)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_18])).
% 0.20/0.39  cnf(c_0_24, negated_conjecture, (m1_pre_topc(esk3_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_25, negated_conjecture, (l1_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  fof(c_0_26, plain, ![X28]:(~l1_pre_topc(X28)|m1_pre_topc(X28,X28)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_tsep_1])])).
% 0.20/0.39  cnf(c_0_27, plain, (r1_tmap_1(X4,X2,X5,X7)|v2_struct_0(X4)|v2_struct_0(X1)|v2_struct_0(X2)|v2_struct_0(X3)|~r1_tmap_1(X1,X2,k3_tmap_1(X3,X2,X4,X1,X5),X6)|~r1_tarski(X8,u1_struct_0(X1))|~m1_connsp_2(X8,X4,X7)|X7!=X6|~m1_subset_1(X6,u1_struct_0(X1))|~m1_subset_1(X7,u1_struct_0(X4))|~m1_subset_1(X8,k1_zfmisc_1(u1_struct_0(X4)))|~m1_pre_topc(X1,X4)|~v1_funct_1(X5)|~v1_funct_2(X5,u1_struct_0(X4),u1_struct_0(X2))|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X4),u1_struct_0(X2))))|~m1_pre_topc(X4,X3)|~m1_pre_topc(X1,X3)|~v2_pre_topc(X2)|~l1_pre_topc(X2)|~v2_pre_topc(X3)|~l1_pre_topc(X3)), inference(split_conjunct,[status(thm)],[c_0_20])).
% 0.20/0.39  cnf(c_0_28, plain, (m1_pre_topc(X3,X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)|~m1_pre_topc(X3,X2)), inference(split_conjunct,[status(thm)],[c_0_21])).
% 0.20/0.39  cnf(c_0_29, plain, (m1_pre_topc(X1,g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)))|~m1_pre_topc(X1,X2)|~l1_pre_topc(X2)), inference(csr,[status(thm)],[c_0_22, c_0_23])).
% 0.20/0.39  cnf(c_0_30, negated_conjecture, (g1_pre_topc(u1_struct_0(esk3_0),u1_pre_topc(esk3_0))=esk4_0), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_31, negated_conjecture, (l1_pre_topc(esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_24]), c_0_25])])).
% 0.20/0.39  cnf(c_0_32, plain, (m1_pre_topc(X1,X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_26])).
% 0.20/0.39  fof(c_0_33, plain, ![X10]:m1_subset_1(k2_subset_1(X10),k1_zfmisc_1(X10)), inference(variable_rename,[status(thm)],[dt_k2_subset_1])).
% 0.20/0.39  fof(c_0_34, plain, ![X9]:k2_subset_1(X9)=X9, inference(variable_rename,[status(thm)],[d4_subset_1])).
% 0.20/0.39  fof(c_0_35, plain, ![X22]:(~v2_pre_topc(X22)|~l1_pre_topc(X22)|v3_pre_topc(k2_struct_0(X22),X22)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc10_tops_1])])).
% 0.20/0.39  fof(c_0_36, plain, ![X15]:(~l1_struct_0(X15)|k2_struct_0(X15)=u1_struct_0(X15)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_struct_0])])).
% 0.20/0.39  fof(c_0_37, plain, ![X16]:(~l1_pre_topc(X16)|l1_struct_0(X16)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_l1_pre_topc])])).
% 0.20/0.39  cnf(c_0_38, plain, (r1_tmap_1(X1,X2,X3,X4)|v2_struct_0(X1)|v2_struct_0(X5)|v2_struct_0(X2)|v2_struct_0(X6)|~r1_tmap_1(X6,X2,k3_tmap_1(X5,X2,X1,X6,X3),X4)|~v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))|~v1_funct_1(X3)|~r1_tarski(X7,u1_struct_0(X6))|~m1_connsp_2(X7,X1,X4)|~m1_pre_topc(X1,X5)|~m1_pre_topc(X6,X1)|~l1_pre_topc(X5)|~l1_pre_topc(X2)|~v2_pre_topc(X5)|~v2_pre_topc(X2)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))|~m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X4,u1_struct_0(X1))|~m1_subset_1(X4,u1_struct_0(X6))), inference(er,[status(thm)],[inference(csr,[status(thm)],[c_0_27, c_0_28])])).
% 0.20/0.39  cnf(c_0_39, negated_conjecture, (m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk4_0),u1_struct_0(esk2_0))))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_40, negated_conjecture, (v1_funct_2(esk5_0,u1_struct_0(esk4_0),u1_struct_0(esk2_0))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_41, negated_conjecture, (v1_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_42, negated_conjecture, (l1_pre_topc(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_43, negated_conjecture, (v2_pre_topc(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_44, negated_conjecture, (~v2_struct_0(esk2_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_45, negated_conjecture, (~v2_struct_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_46, negated_conjecture, (r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk7_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_47, negated_conjecture, (esk6_0=esk7_0), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_48, negated_conjecture, (m1_pre_topc(X1,esk4_0)|~m1_pre_topc(X1,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_29, c_0_30]), c_0_31])])).
% 0.20/0.39  cnf(c_0_49, negated_conjecture, (m1_pre_topc(esk3_0,esk3_0)), inference(spm,[status(thm)],[c_0_32, c_0_31])).
% 0.20/0.39  cnf(c_0_50, negated_conjecture, (m1_subset_1(esk7_0,u1_struct_0(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  fof(c_0_51, plain, ![X23, X24, X25]:(v2_struct_0(X23)|~v2_pre_topc(X23)|~l1_pre_topc(X23)|(~m1_subset_1(X24,k1_zfmisc_1(u1_struct_0(X23)))|(~m1_subset_1(X25,u1_struct_0(X23))|(~v3_pre_topc(X24,X23)|~r2_hidden(X25,X24)|m1_connsp_2(X24,X23,X25))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t5_connsp_2])])])])).
% 0.20/0.39  cnf(c_0_52, plain, (m1_subset_1(k2_subset_1(X1),k1_zfmisc_1(X1))), inference(split_conjunct,[status(thm)],[c_0_33])).
% 0.20/0.39  cnf(c_0_53, plain, (k2_subset_1(X1)=X1), inference(split_conjunct,[status(thm)],[c_0_34])).
% 0.20/0.39  cnf(c_0_54, plain, (v3_pre_topc(k2_struct_0(X1),X1)|~v2_pre_topc(X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_35])).
% 0.20/0.39  cnf(c_0_55, plain, (k2_struct_0(X1)=u1_struct_0(X1)|~l1_struct_0(X1)), inference(split_conjunct,[status(thm)],[c_0_36])).
% 0.20/0.39  cnf(c_0_56, plain, (l1_struct_0(X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_37])).
% 0.20/0.39  fof(c_0_57, plain, ![X11, X12]:(~m1_subset_1(X11,X12)|(v1_xboole_0(X12)|r2_hidden(X11,X12))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t2_subset])])).
% 0.20/0.39  fof(c_0_58, plain, ![X13, X14]:(~v2_pre_topc(X13)|~l1_pre_topc(X13)|(~m1_pre_topc(X14,X13)|v2_pre_topc(X14))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_pre_topc])])])).
% 0.20/0.39  cnf(c_0_59, negated_conjecture, (r1_tmap_1(esk4_0,esk2_0,esk5_0,X1)|v2_struct_0(X2)|v2_struct_0(X3)|~r1_tmap_1(X3,esk2_0,k3_tmap_1(X2,esk2_0,esk4_0,X3,esk5_0),X1)|~r1_tarski(X4,u1_struct_0(X3))|~m1_connsp_2(X4,esk4_0,X1)|~m1_pre_topc(esk4_0,X2)|~m1_pre_topc(X3,esk4_0)|~l1_pre_topc(X2)|~v2_pre_topc(X2)|~m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(esk4_0)))|~m1_subset_1(X1,u1_struct_0(esk4_0))|~m1_subset_1(X1,u1_struct_0(X3))), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_39]), c_0_40]), c_0_41]), c_0_42]), c_0_43])]), c_0_44]), c_0_45])).
% 0.20/0.39  cnf(c_0_60, negated_conjecture, (r1_tmap_1(esk3_0,esk2_0,k3_tmap_1(esk1_0,esk2_0,esk4_0,esk3_0,esk5_0),esk6_0)), inference(rw,[status(thm)],[c_0_46, c_0_47])).
% 0.20/0.39  cnf(c_0_61, negated_conjecture, (m1_pre_topc(esk4_0,esk1_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_62, negated_conjecture, (m1_pre_topc(esk3_0,esk4_0)), inference(spm,[status(thm)],[c_0_48, c_0_49])).
% 0.20/0.39  cnf(c_0_63, negated_conjecture, (v2_pre_topc(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_64, negated_conjecture, (m1_subset_1(esk6_0,u1_struct_0(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_65, negated_conjecture, (m1_subset_1(esk6_0,u1_struct_0(esk3_0))), inference(rw,[status(thm)],[c_0_50, c_0_47])).
% 0.20/0.39  cnf(c_0_66, negated_conjecture, (~r1_tmap_1(esk4_0,esk2_0,esk5_0,esk6_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_67, negated_conjecture, (~v2_struct_0(esk1_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_68, negated_conjecture, (~v2_struct_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_19])).
% 0.20/0.39  cnf(c_0_69, plain, (v2_struct_0(X1)|m1_connsp_2(X2,X1,X3)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(X3,u1_struct_0(X1))|~v3_pre_topc(X2,X1)|~r2_hidden(X3,X2)), inference(split_conjunct,[status(thm)],[c_0_51])).
% 0.20/0.39  cnf(c_0_70, plain, (m1_subset_1(X1,k1_zfmisc_1(X1))), inference(rw,[status(thm)],[c_0_52, c_0_53])).
% 0.20/0.39  cnf(c_0_71, plain, (v3_pre_topc(u1_struct_0(X1),X1)|~l1_pre_topc(X1)|~v2_pre_topc(X1)), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_55]), c_0_56])).
% 0.20/0.39  cnf(c_0_72, plain, (v1_xboole_0(X2)|r2_hidden(X1,X2)|~m1_subset_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_57])).
% 0.20/0.39  cnf(c_0_73, plain, (v2_pre_topc(X2)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_58])).
% 0.20/0.39  cnf(c_0_74, negated_conjecture, (~r1_tarski(X1,u1_struct_0(esk3_0))|~m1_connsp_2(X1,esk4_0,esk6_0)|~m1_subset_1(X1,k1_zfmisc_1(u1_struct_0(esk4_0)))), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_59, c_0_60]), c_0_61]), c_0_62]), c_0_25]), c_0_63]), c_0_64]), c_0_65])]), c_0_66]), c_0_67]), c_0_68])).
% 0.20/0.39  cnf(c_0_75, plain, (m1_connsp_2(u1_struct_0(X1),X1,X2)|v2_struct_0(X1)|~l1_pre_topc(X1)|~v2_pre_topc(X1)|~r2_hidden(X2,u1_struct_0(X1))|~m1_subset_1(X2,u1_struct_0(X1))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_69, c_0_70]), c_0_71])).
% 0.20/0.39  cnf(c_0_76, negated_conjecture, (r2_hidden(esk6_0,u1_struct_0(esk4_0))|v1_xboole_0(u1_struct_0(esk4_0))), inference(spm,[status(thm)],[c_0_72, c_0_64])).
% 0.20/0.39  cnf(c_0_77, negated_conjecture, (l1_pre_topc(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_23, c_0_61]), c_0_25])])).
% 0.20/0.39  cnf(c_0_78, negated_conjecture, (v2_pre_topc(esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_73, c_0_61]), c_0_25]), c_0_63])])).
% 0.20/0.39  cnf(c_0_79, plain, (m1_pre_topc(X1,X2)|~m1_pre_topc(X1,g1_pre_topc(u1_struct_0(X2),u1_pre_topc(X2)))|~l1_pre_topc(X2)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_17])).
% 0.20/0.39  cnf(c_0_80, negated_conjecture, (~r1_tarski(u1_struct_0(esk4_0),u1_struct_0(esk3_0))|~m1_connsp_2(u1_struct_0(esk4_0),esk4_0,esk6_0)), inference(spm,[status(thm)],[c_0_74, c_0_70])).
% 0.20/0.39  cnf(c_0_81, negated_conjecture, (m1_connsp_2(u1_struct_0(esk4_0),esk4_0,esk6_0)|v1_xboole_0(u1_struct_0(esk4_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_75, c_0_76]), c_0_77]), c_0_78]), c_0_64])]), c_0_45])).
% 0.20/0.39  fof(c_0_82, plain, ![X29, X30]:(~l1_pre_topc(X29)|(~m1_pre_topc(X30,X29)|r1_tarski(u1_struct_0(X30),u1_struct_0(X29)))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t35_borsuk_1])])])).
% 0.20/0.39  cnf(c_0_83, negated_conjecture, (m1_pre_topc(X1,esk3_0)|~m1_pre_topc(X1,esk4_0)|~l1_pre_topc(X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_79, c_0_30]), c_0_31])])).
% 0.20/0.39  cnf(c_0_84, negated_conjecture, (m1_pre_topc(esk4_0,esk4_0)), inference(spm,[status(thm)],[c_0_32, c_0_77])).
% 0.20/0.39  fof(c_0_85, plain, ![X19]:(v2_struct_0(X19)|~l1_struct_0(X19)|~v1_xboole_0(u1_struct_0(X19))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[fc2_struct_0])])])).
% 0.20/0.39  cnf(c_0_86, negated_conjecture, (v1_xboole_0(u1_struct_0(esk4_0))|~r1_tarski(u1_struct_0(esk4_0),u1_struct_0(esk3_0))), inference(spm,[status(thm)],[c_0_80, c_0_81])).
% 0.20/0.39  cnf(c_0_87, plain, (r1_tarski(u1_struct_0(X2),u1_struct_0(X1))|~l1_pre_topc(X1)|~m1_pre_topc(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_82])).
% 0.20/0.39  cnf(c_0_88, negated_conjecture, (m1_pre_topc(esk4_0,esk3_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_83, c_0_77]), c_0_84])])).
% 0.20/0.39  cnf(c_0_89, plain, (v2_struct_0(X1)|~l1_struct_0(X1)|~v1_xboole_0(u1_struct_0(X1))), inference(split_conjunct,[status(thm)],[c_0_85])).
% 0.20/0.39  cnf(c_0_90, negated_conjecture, (v1_xboole_0(u1_struct_0(esk4_0))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_86, c_0_87]), c_0_88]), c_0_31])])).
% 0.20/0.39  cnf(c_0_91, negated_conjecture, (~l1_struct_0(esk4_0)), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_89, c_0_90]), c_0_45])).
% 0.20/0.39  cnf(c_0_92, negated_conjecture, ($false), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_91, c_0_56]), c_0_77])]), ['proof']).
% 0.20/0.39  # SZS output end CNFRefutation
% 0.20/0.39  # Proof object total steps             : 93
% 0.20/0.39  # Proof object clause steps            : 60
% 0.20/0.39  # Proof object formula steps           : 33
% 0.20/0.39  # Proof object conjectures             : 42
% 0.20/0.39  # Proof object clause conjectures      : 39
% 0.20/0.39  # Proof object formula conjectures     : 3
% 0.20/0.39  # Proof object initial clauses used    : 35
% 0.20/0.39  # Proof object initial formulas used   : 16
% 0.20/0.39  # Proof object generating inferences   : 20
% 0.20/0.39  # Proof object simplifying inferences  : 49
% 0.20/0.39  # Training examples: 0 positive, 0 negative
% 0.20/0.39  # Parsed axioms                        : 17
% 0.20/0.39  # Removed by relevancy pruning/SinE    : 0
% 0.20/0.39  # Initial clauses                      : 38
% 0.20/0.39  # Removed in clause preprocessing      : 1
% 0.20/0.39  # Initial clauses in saturation        : 37
% 0.20/0.39  # Processed clauses                    : 176
% 0.20/0.39  # ...of these trivial                  : 15
% 0.20/0.39  # ...subsumed                          : 13
% 0.20/0.39  # ...remaining for further processing  : 148
% 0.20/0.39  # Other redundant clauses eliminated   : 2
% 0.20/0.39  # Clauses deleted for lack of memory   : 0
% 0.20/0.39  # Backward-subsumed                    : 0
% 0.20/0.39  # Backward-rewritten                   : 4
% 0.20/0.39  # Generated clauses                    : 313
% 0.20/0.39  # ...of the previous two non-trivial   : 217
% 0.20/0.39  # Contextual simplify-reflections      : 7
% 0.20/0.39  # Paramodulations                      : 311
% 0.20/0.39  # Factorizations                       : 0
% 0.20/0.39  # Equation resolutions                 : 2
% 0.20/0.39  # Propositional unsat checks           : 0
% 0.20/0.39  #    Propositional check models        : 0
% 0.20/0.39  #    Propositional check unsatisfiable : 0
% 0.20/0.39  #    Propositional clauses             : 0
% 0.20/0.39  #    Propositional clauses after purity: 0
% 0.20/0.39  #    Propositional unsat core size     : 0
% 0.20/0.39  #    Propositional preprocessing time  : 0.000
% 0.20/0.39  #    Propositional encoding time       : 0.000
% 0.20/0.39  #    Propositional solver time         : 0.000
% 0.20/0.39  #    Success case prop preproc time    : 0.000
% 0.20/0.39  #    Success case prop encoding time   : 0.000
% 0.20/0.39  #    Success case prop solver time     : 0.000
% 0.20/0.39  # Current number of processed clauses  : 105
% 0.20/0.39  #    Positive orientable unit clauses  : 38
% 0.20/0.39  #    Positive unorientable unit clauses: 0
% 0.20/0.39  #    Negative unit clauses             : 6
% 0.20/0.39  #    Non-unit-clauses                  : 61
% 0.20/0.39  # Current number of unprocessed clauses: 115
% 0.20/0.39  # ...number of literals in the above   : 378
% 0.20/0.39  # Current number of archived formulas  : 0
% 0.20/0.39  # Current number of archived clauses   : 42
% 0.20/0.39  # Clause-clause subsumption calls (NU) : 1741
% 0.20/0.39  # Rec. Clause-clause subsumption calls : 437
% 0.20/0.39  # Non-unit clause-clause subsumptions  : 20
% 0.20/0.39  # Unit Clause-clause subsumption calls : 80
% 0.20/0.39  # Rewrite failures with RHS unbound    : 0
% 0.20/0.39  # BW rewrite match attempts            : 20
% 0.20/0.39  # BW rewrite match successes           : 2
% 0.20/0.39  # Condensation attempts                : 0
% 0.20/0.39  # Condensation successes               : 0
% 0.20/0.39  # Termbank termtop insertions          : 9524
% 0.20/0.39  
% 0.20/0.39  # -------------------------------------------------
% 0.20/0.39  # User time                : 0.039 s
% 0.20/0.39  # System time              : 0.007 s
% 0.20/0.39  # Total time               : 0.045 s
% 0.20/0.39  # Maximum resident set size: 1600 pages
%------------------------------------------------------------------------------
