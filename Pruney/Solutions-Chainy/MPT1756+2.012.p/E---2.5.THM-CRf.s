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
% DateTime   : Thu Dec  3 11:17:27 EST 2020

% Result     : Theorem 0.13s
% Output     : CNFRefutation 0.13s
% Verified   : 
% Statistics : Number of formulae       :   57 ( 376 expanded)
%              Number of clauses        :   44 ( 120 expanded)
%              Number of leaves         :    6 (  89 expanded)
%              Depth                    :    9
%              Number of atoms          :  388 (5557 expanded)
%              Number of equality atoms :   11 ( 251 expanded)
%              Maximal formula depth    :   28 (   7 average)
%              Maximal clause size      :   44 (   4 average)
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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t66_tmap_1)).

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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t65_tmap_1)).

fof(dt_m1_connsp_2,axiom,(
    ! [X1,X2] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1)
        & m1_subset_1(X2,u1_struct_0(X1)) )
     => ! [X3] :
          ( m1_connsp_2(X3,X1,X2)
         => m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',dt_m1_connsp_2)).

fof(t9_connsp_2,axiom,(
    ! [X1] :
      ( ( ~ v2_struct_0(X1)
        & v2_pre_topc(X1)
        & l1_pre_topc(X1) )
     => ! [X2] :
          ( m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
         => ( v3_pre_topc(X2,X1)
          <=> ! [X3] :
                ( m1_subset_1(X3,u1_struct_0(X1))
               => ~ ( r2_hidden(X3,X2)
                    & ! [X4] :
                        ( m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))
                       => ~ ( m1_connsp_2(X4,X1,X3)
                            & r1_tarski(X4,X2) ) ) ) ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t9_connsp_2)).

fof(t1_xboole_1,axiom,(
    ! [X1,X2,X3] :
      ( ( r1_tarski(X1,X2)
        & r1_tarski(X2,X3) )
     => r1_tarski(X1,X3) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t1_xboole_1)).

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
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',t64_tmap_1)).

fof(c_0_6,negated_conjecture,(
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

fof(c_0_7,plain,(
    ! [X26,X27,X28,X29,X30,X31,X32] :
      ( ( ~ r1_tmap_1(X27,X26,X28,X31)
        | r1_tmap_1(X29,X26,k2_tmap_1(X27,X26,X28,X29),X32)
        | ~ r1_tarski(X30,u1_struct_0(X29))
        | ~ m1_connsp_2(X30,X27,X31)
        | X31 != X32
        | ~ m1_subset_1(X32,u1_struct_0(X29))
        | ~ m1_subset_1(X31,u1_struct_0(X27))
        | ~ m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X27)))
        | v2_struct_0(X29)
        | ~ m1_pre_topc(X29,X27)
        | ~ v1_funct_1(X28)
        | ~ v1_funct_2(X28,u1_struct_0(X27),u1_struct_0(X26))
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X27),u1_struct_0(X26))))
        | v2_struct_0(X27)
        | ~ v2_pre_topc(X27)
        | ~ l1_pre_topc(X27)
        | v2_struct_0(X26)
        | ~ v2_pre_topc(X26)
        | ~ l1_pre_topc(X26) )
      & ( ~ r1_tmap_1(X29,X26,k2_tmap_1(X27,X26,X28,X29),X32)
        | r1_tmap_1(X27,X26,X28,X31)
        | ~ r1_tarski(X30,u1_struct_0(X29))
        | ~ m1_connsp_2(X30,X27,X31)
        | X31 != X32
        | ~ m1_subset_1(X32,u1_struct_0(X29))
        | ~ m1_subset_1(X31,u1_struct_0(X27))
        | ~ m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X27)))
        | v2_struct_0(X29)
        | ~ m1_pre_topc(X29,X27)
        | ~ v1_funct_1(X28)
        | ~ v1_funct_2(X28,u1_struct_0(X27),u1_struct_0(X26))
        | ~ m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X27),u1_struct_0(X26))))
        | v2_struct_0(X27)
        | ~ v2_pre_topc(X27)
        | ~ l1_pre_topc(X27)
        | v2_struct_0(X26)
        | ~ v2_pre_topc(X26)
        | ~ l1_pre_topc(X26) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t65_tmap_1])])])])])).

fof(c_0_8,plain,(
    ! [X11,X12,X13] :
      ( v2_struct_0(X11)
      | ~ v2_pre_topc(X11)
      | ~ l1_pre_topc(X11)
      | ~ m1_subset_1(X12,u1_struct_0(X11))
      | ~ m1_connsp_2(X13,X11,X12)
      | m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X11))) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_m1_connsp_2])])])])).

fof(c_0_9,plain,(
    ! [X14,X15,X16,X19] :
      ( ( m1_subset_1(esk1_3(X14,X15,X16),k1_zfmisc_1(u1_struct_0(X14)))
        | ~ r2_hidden(X16,X15)
        | ~ m1_subset_1(X16,u1_struct_0(X14))
        | ~ v3_pre_topc(X15,X14)
        | ~ m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))
        | v2_struct_0(X14)
        | ~ v2_pre_topc(X14)
        | ~ l1_pre_topc(X14) )
      & ( m1_connsp_2(esk1_3(X14,X15,X16),X14,X16)
        | ~ r2_hidden(X16,X15)
        | ~ m1_subset_1(X16,u1_struct_0(X14))
        | ~ v3_pre_topc(X15,X14)
        | ~ m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))
        | v2_struct_0(X14)
        | ~ v2_pre_topc(X14)
        | ~ l1_pre_topc(X14) )
      & ( r1_tarski(esk1_3(X14,X15,X16),X15)
        | ~ r2_hidden(X16,X15)
        | ~ m1_subset_1(X16,u1_struct_0(X14))
        | ~ v3_pre_topc(X15,X14)
        | ~ m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))
        | v2_struct_0(X14)
        | ~ v2_pre_topc(X14)
        | ~ l1_pre_topc(X14) )
      & ( m1_subset_1(esk2_2(X14,X15),u1_struct_0(X14))
        | v3_pre_topc(X15,X14)
        | ~ m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))
        | v2_struct_0(X14)
        | ~ v2_pre_topc(X14)
        | ~ l1_pre_topc(X14) )
      & ( r2_hidden(esk2_2(X14,X15),X15)
        | v3_pre_topc(X15,X14)
        | ~ m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))
        | v2_struct_0(X14)
        | ~ v2_pre_topc(X14)
        | ~ l1_pre_topc(X14) )
      & ( ~ m1_subset_1(X19,k1_zfmisc_1(u1_struct_0(X14)))
        | ~ m1_connsp_2(X19,X14,esk2_2(X14,X15))
        | ~ r1_tarski(X19,X15)
        | v3_pre_topc(X15,X14)
        | ~ m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))
        | v2_struct_0(X14)
        | ~ v2_pre_topc(X14)
        | ~ l1_pre_topc(X14) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t9_connsp_2])])])])])])).

fof(c_0_10,negated_conjecture,
    ( ~ v2_struct_0(esk3_0)
    & v2_pre_topc(esk3_0)
    & l1_pre_topc(esk3_0)
    & ~ v2_struct_0(esk4_0)
    & v2_pre_topc(esk4_0)
    & l1_pre_topc(esk4_0)
    & v1_funct_1(esk5_0)
    & v1_funct_2(esk5_0,u1_struct_0(esk4_0),u1_struct_0(esk3_0))
    & m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk4_0),u1_struct_0(esk3_0))))
    & ~ v2_struct_0(esk6_0)
    & m1_pre_topc(esk6_0,esk4_0)
    & m1_subset_1(esk7_0,k1_zfmisc_1(u1_struct_0(esk4_0)))
    & m1_subset_1(esk8_0,u1_struct_0(esk4_0))
    & m1_subset_1(esk9_0,u1_struct_0(esk6_0))
    & v3_pre_topc(esk7_0,esk4_0)
    & r2_hidden(esk8_0,esk7_0)
    & r1_tarski(esk7_0,u1_struct_0(esk6_0))
    & esk8_0 = esk9_0
    & ( ~ r1_tmap_1(esk4_0,esk3_0,esk5_0,esk8_0)
      | ~ r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),esk9_0) )
    & ( r1_tmap_1(esk4_0,esk3_0,esk5_0,esk8_0)
      | r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),esk9_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_6])])])])).

cnf(c_0_11,plain,
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
    inference(split_conjunct,[status(thm)],[c_0_7])).

cnf(c_0_12,plain,
    ( v2_struct_0(X1)
    | m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1)
    | ~ m1_subset_1(X2,u1_struct_0(X1))
    | ~ m1_connsp_2(X3,X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_8])).

fof(c_0_13,plain,(
    ! [X8,X9,X10] :
      ( ~ r1_tarski(X8,X9)
      | ~ r1_tarski(X9,X10)
      | r1_tarski(X8,X10) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).

cnf(c_0_14,plain,
    ( r1_tarski(esk1_3(X1,X2,X3),X2)
    | v2_struct_0(X1)
    | ~ r2_hidden(X3,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ v3_pre_topc(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_15,negated_conjecture,
    ( r2_hidden(esk8_0,esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

fof(c_0_16,plain,(
    ! [X20,X21,X22,X23,X24,X25] :
      ( v2_struct_0(X20)
      | ~ v2_pre_topc(X20)
      | ~ l1_pre_topc(X20)
      | v2_struct_0(X21)
      | ~ v2_pre_topc(X21)
      | ~ l1_pre_topc(X21)
      | ~ v1_funct_1(X22)
      | ~ v1_funct_2(X22,u1_struct_0(X21),u1_struct_0(X20))
      | ~ m1_subset_1(X22,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X21),u1_struct_0(X20))))
      | v2_struct_0(X23)
      | ~ m1_pre_topc(X23,X21)
      | ~ m1_subset_1(X24,u1_struct_0(X21))
      | ~ m1_subset_1(X25,u1_struct_0(X23))
      | X24 != X25
      | ~ r1_tmap_1(X21,X20,X22,X24)
      | r1_tmap_1(X23,X20,k2_tmap_1(X21,X20,X22,X23),X25) ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t64_tmap_1])])])])).

cnf(c_0_17,plain,
    ( r1_tmap_1(X1,X2,X3,X4)
    | v2_struct_0(X1)
    | v2_struct_0(X2)
    | v2_struct_0(X5)
    | ~ r1_tmap_1(X5,X2,k2_tmap_1(X1,X2,X3,X5),X4)
    | ~ m1_pre_topc(X5,X1)
    | ~ v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))
    | ~ v1_funct_1(X3)
    | ~ m1_connsp_2(X6,X1,X4)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))
    | ~ m1_subset_1(X4,u1_struct_0(X1))
    | ~ m1_subset_1(X4,u1_struct_0(X5))
    | ~ l1_pre_topc(X1)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X1)
    | ~ v2_pre_topc(X2)
    | ~ r1_tarski(X6,u1_struct_0(X5)) ),
    inference(er,[status(thm)],[inference(csr,[status(thm)],[c_0_11,c_0_12])])).

cnf(c_0_18,negated_conjecture,
    ( v1_funct_2(esk5_0,u1_struct_0(esk4_0),u1_struct_0(esk3_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_19,negated_conjecture,
    ( v1_funct_1(esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_20,negated_conjecture,
    ( m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk4_0),u1_struct_0(esk3_0)))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_21,negated_conjecture,
    ( l1_pre_topc(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_22,negated_conjecture,
    ( l1_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_23,negated_conjecture,
    ( v2_pre_topc(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_24,negated_conjecture,
    ( v2_pre_topc(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_25,negated_conjecture,
    ( ~ v2_struct_0(esk3_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_26,negated_conjecture,
    ( ~ v2_struct_0(esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_27,plain,
    ( m1_connsp_2(esk1_3(X1,X2,X3),X1,X3)
    | v2_struct_0(X1)
    | ~ r2_hidden(X3,X2)
    | ~ m1_subset_1(X3,u1_struct_0(X1))
    | ~ v3_pre_topc(X2,X1)
    | ~ m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ v2_pre_topc(X1)
    | ~ l1_pre_topc(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_9])).

cnf(c_0_28,plain,
    ( r1_tarski(X1,X3)
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X3) ),
    inference(split_conjunct,[status(thm)],[c_0_13])).

cnf(c_0_29,negated_conjecture,
    ( r1_tarski(esk7_0,u1_struct_0(esk6_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_30,negated_conjecture,
    ( v2_struct_0(X1)
    | r1_tarski(esk1_3(X1,esk7_0,esk8_0),esk7_0)
    | ~ v3_pre_topc(esk7_0,X1)
    | ~ m1_subset_1(esk7_0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(esk8_0,u1_struct_0(X1))
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(spm,[status(thm)],[c_0_14,c_0_15])).

cnf(c_0_31,negated_conjecture,
    ( v3_pre_topc(esk7_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_32,negated_conjecture,
    ( m1_subset_1(esk7_0,k1_zfmisc_1(u1_struct_0(esk4_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_33,negated_conjecture,
    ( m1_subset_1(esk8_0,u1_struct_0(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

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
    inference(split_conjunct,[status(thm)],[c_0_16])).

cnf(c_0_35,negated_conjecture,
    ( r1_tmap_1(esk4_0,esk3_0,esk5_0,X1)
    | v2_struct_0(X2)
    | ~ r1_tmap_1(X2,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,X2),X1)
    | ~ m1_pre_topc(X2,esk4_0)
    | ~ m1_connsp_2(X3,esk4_0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(esk4_0))
    | ~ m1_subset_1(X1,u1_struct_0(X2))
    | ~ r1_tarski(X3,u1_struct_0(X2)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17,c_0_18]),c_0_19]),c_0_20]),c_0_21]),c_0_22]),c_0_23]),c_0_24])]),c_0_25]),c_0_26])).

cnf(c_0_36,negated_conjecture,
    ( m1_pre_topc(esk6_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_37,negated_conjecture,
    ( ~ v2_struct_0(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_38,negated_conjecture,
    ( m1_connsp_2(esk1_3(X1,esk7_0,esk8_0),X1,esk8_0)
    | v2_struct_0(X1)
    | ~ v3_pre_topc(esk7_0,X1)
    | ~ m1_subset_1(esk7_0,k1_zfmisc_1(u1_struct_0(X1)))
    | ~ m1_subset_1(esk8_0,u1_struct_0(X1))
    | ~ l1_pre_topc(X1)
    | ~ v2_pre_topc(X1) ),
    inference(spm,[status(thm)],[c_0_27,c_0_15])).

cnf(c_0_39,negated_conjecture,
    ( m1_subset_1(esk9_0,u1_struct_0(esk6_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_40,negated_conjecture,
    ( esk8_0 = esk9_0 ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_41,negated_conjecture,
    ( r1_tarski(X1,u1_struct_0(esk6_0))
    | ~ r1_tarski(X1,esk7_0) ),
    inference(spm,[status(thm)],[c_0_28,c_0_29])).

cnf(c_0_42,negated_conjecture,
    ( r1_tarski(esk1_3(esk4_0,esk7_0,esk8_0),esk7_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30,c_0_31]),c_0_32]),c_0_33]),c_0_21]),c_0_23])]),c_0_26])).

cnf(c_0_43,negated_conjecture,
    ( r1_tmap_1(esk4_0,esk3_0,esk5_0,esk8_0)
    | r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),esk9_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_44,plain,
    ( r1_tmap_1(X1,X2,k2_tmap_1(X3,X2,X4,X1),X5)
    | v2_struct_0(X1)
    | v2_struct_0(X3)
    | v2_struct_0(X2)
    | ~ r1_tmap_1(X3,X2,X4,X5)
    | ~ m1_pre_topc(X1,X3)
    | ~ v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X2))
    | ~ v1_funct_1(X4)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))
    | ~ m1_subset_1(X5,u1_struct_0(X1))
    | ~ m1_subset_1(X5,u1_struct_0(X3))
    | ~ l1_pre_topc(X3)
    | ~ l1_pre_topc(X2)
    | ~ v2_pre_topc(X3)
    | ~ v2_pre_topc(X2) ),
    inference(er,[status(thm)],[c_0_34])).

cnf(c_0_45,negated_conjecture,
    ( ~ r1_tmap_1(esk4_0,esk3_0,esk5_0,esk8_0)
    | ~ r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),esk9_0) ),
    inference(split_conjunct,[status(thm)],[c_0_10])).

cnf(c_0_46,negated_conjecture,
    ( r1_tmap_1(esk4_0,esk3_0,esk5_0,X1)
    | ~ r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),X1)
    | ~ m1_connsp_2(X2,esk4_0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(esk4_0))
    | ~ m1_subset_1(X1,u1_struct_0(esk6_0))
    | ~ r1_tarski(X2,u1_struct_0(esk6_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_35,c_0_36]),c_0_37])).

cnf(c_0_47,negated_conjecture,
    ( m1_connsp_2(esk1_3(esk4_0,esk7_0,esk8_0),esk4_0,esk8_0) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38,c_0_31]),c_0_32]),c_0_33]),c_0_21]),c_0_23])]),c_0_26])).

cnf(c_0_48,negated_conjecture,
    ( m1_subset_1(esk8_0,u1_struct_0(esk6_0)) ),
    inference(rw,[status(thm)],[c_0_39,c_0_40])).

cnf(c_0_49,negated_conjecture,
    ( r1_tarski(esk1_3(esk4_0,esk7_0,esk8_0),u1_struct_0(esk6_0)) ),
    inference(spm,[status(thm)],[c_0_41,c_0_42])).

cnf(c_0_50,negated_conjecture,
    ( r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),esk8_0)
    | r1_tmap_1(esk4_0,esk3_0,esk5_0,esk8_0) ),
    inference(rw,[status(thm)],[c_0_43,c_0_40])).

cnf(c_0_51,negated_conjecture,
    ( r1_tmap_1(X1,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,X1),X2)
    | v2_struct_0(X1)
    | ~ r1_tmap_1(esk4_0,esk3_0,esk5_0,X2)
    | ~ m1_pre_topc(X1,esk4_0)
    | ~ m1_subset_1(X2,u1_struct_0(esk4_0))
    | ~ m1_subset_1(X2,u1_struct_0(X1)) ),
    inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_18]),c_0_19]),c_0_20]),c_0_21]),c_0_22]),c_0_23]),c_0_24])]),c_0_25]),c_0_26])).

cnf(c_0_52,negated_conjecture,
    ( ~ r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),esk8_0)
    | ~ r1_tmap_1(esk4_0,esk3_0,esk5_0,esk8_0) ),
    inference(rw,[status(thm)],[c_0_45,c_0_40])).

cnf(c_0_53,negated_conjecture,
    ( r1_tmap_1(esk4_0,esk3_0,esk5_0,esk8_0) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46,c_0_47]),c_0_33]),c_0_48]),c_0_49])]),c_0_50])).

cnf(c_0_54,negated_conjecture,
    ( r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),X1)
    | ~ r1_tmap_1(esk4_0,esk3_0,esk5_0,X1)
    | ~ m1_subset_1(X1,u1_struct_0(esk4_0))
    | ~ m1_subset_1(X1,u1_struct_0(esk6_0)) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_36]),c_0_37])).

cnf(c_0_55,negated_conjecture,
    ( ~ r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),esk8_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_52,c_0_53])])).

cnf(c_0_56,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54,c_0_53]),c_0_33]),c_0_48])]),c_0_55]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n018.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 15:03:12 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.35  # Version: 2.5pre002
% 0.13/0.35  # No SInE strategy applied
% 0.13/0.35  # Trying AutoSched0 for 299 seconds
% 0.13/0.38  # AutoSched0-Mode selected heuristic G_E___208_B07_F1_SE_CS_SP_PS_S4d
% 0.13/0.38  # and selection function SelectCQIPrecWNTNp.
% 0.13/0.38  #
% 0.13/0.38  # Preprocessing time       : 0.029 s
% 0.13/0.38  # Presaturation interreduction done
% 0.13/0.38  
% 0.13/0.38  # Proof found!
% 0.13/0.38  # SZS status Theorem
% 0.13/0.38  # SZS output start CNFRefutation
% 0.13/0.38  fof(t66_tmap_1, conjecture, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X2))=>![X5]:(m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X2)))=>![X6]:(m1_subset_1(X6,u1_struct_0(X2))=>![X7]:(m1_subset_1(X7,u1_struct_0(X4))=>((((v3_pre_topc(X5,X2)&r2_hidden(X6,X5))&r1_tarski(X5,u1_struct_0(X4)))&X6=X7)=>(r1_tmap_1(X2,X1,X3,X6)<=>r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X7)))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t66_tmap_1)).
% 0.13/0.38  fof(t65_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X2))=>![X5]:(m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X2)))=>![X6]:(m1_subset_1(X6,u1_struct_0(X2))=>![X7]:(m1_subset_1(X7,u1_struct_0(X4))=>(((r1_tarski(X5,u1_struct_0(X4))&m1_connsp_2(X5,X2,X6))&X6=X7)=>(r1_tmap_1(X2,X1,X3,X6)<=>r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X7)))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t65_tmap_1)).
% 0.13/0.38  fof(dt_m1_connsp_2, axiom, ![X1, X2]:((((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))&m1_subset_1(X2,u1_struct_0(X1)))=>![X3]:(m1_connsp_2(X3,X1,X2)=>m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', dt_m1_connsp_2)).
% 0.13/0.38  fof(t9_connsp_2, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))=>(v3_pre_topc(X2,X1)<=>![X3]:(m1_subset_1(X3,u1_struct_0(X1))=>~((r2_hidden(X3,X2)&![X4]:(m1_subset_1(X4,k1_zfmisc_1(u1_struct_0(X1)))=>~((m1_connsp_2(X4,X1,X3)&r1_tarski(X4,X2)))))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t9_connsp_2)).
% 0.13/0.38  fof(t1_xboole_1, axiom, ![X1, X2, X3]:((r1_tarski(X1,X2)&r1_tarski(X2,X3))=>r1_tarski(X1,X3)), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t1_xboole_1)).
% 0.13/0.38  fof(t64_tmap_1, axiom, ![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X2))=>![X5]:(m1_subset_1(X5,u1_struct_0(X2))=>![X6]:(m1_subset_1(X6,u1_struct_0(X4))=>((X5=X6&r1_tmap_1(X2,X1,X3,X5))=>r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X6)))))))), file('/export/starexec/sandbox/benchmark/theBenchmark.p', t64_tmap_1)).
% 0.13/0.38  fof(c_0_6, negated_conjecture, ~(![X1]:(((~(v2_struct_0(X1))&v2_pre_topc(X1))&l1_pre_topc(X1))=>![X2]:(((~(v2_struct_0(X2))&v2_pre_topc(X2))&l1_pre_topc(X2))=>![X3]:(((v1_funct_1(X3)&v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1)))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1)))))=>![X4]:((~(v2_struct_0(X4))&m1_pre_topc(X4,X2))=>![X5]:(m1_subset_1(X5,k1_zfmisc_1(u1_struct_0(X2)))=>![X6]:(m1_subset_1(X6,u1_struct_0(X2))=>![X7]:(m1_subset_1(X7,u1_struct_0(X4))=>((((v3_pre_topc(X5,X2)&r2_hidden(X6,X5))&r1_tarski(X5,u1_struct_0(X4)))&X6=X7)=>(r1_tmap_1(X2,X1,X3,X6)<=>r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X7))))))))))), inference(assume_negation,[status(cth)],[t66_tmap_1])).
% 0.13/0.38  fof(c_0_7, plain, ![X26, X27, X28, X29, X30, X31, X32]:((~r1_tmap_1(X27,X26,X28,X31)|r1_tmap_1(X29,X26,k2_tmap_1(X27,X26,X28,X29),X32)|(~r1_tarski(X30,u1_struct_0(X29))|~m1_connsp_2(X30,X27,X31)|X31!=X32)|~m1_subset_1(X32,u1_struct_0(X29))|~m1_subset_1(X31,u1_struct_0(X27))|~m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X27)))|(v2_struct_0(X29)|~m1_pre_topc(X29,X27))|(~v1_funct_1(X28)|~v1_funct_2(X28,u1_struct_0(X27),u1_struct_0(X26))|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X27),u1_struct_0(X26)))))|(v2_struct_0(X27)|~v2_pre_topc(X27)|~l1_pre_topc(X27))|(v2_struct_0(X26)|~v2_pre_topc(X26)|~l1_pre_topc(X26)))&(~r1_tmap_1(X29,X26,k2_tmap_1(X27,X26,X28,X29),X32)|r1_tmap_1(X27,X26,X28,X31)|(~r1_tarski(X30,u1_struct_0(X29))|~m1_connsp_2(X30,X27,X31)|X31!=X32)|~m1_subset_1(X32,u1_struct_0(X29))|~m1_subset_1(X31,u1_struct_0(X27))|~m1_subset_1(X30,k1_zfmisc_1(u1_struct_0(X27)))|(v2_struct_0(X29)|~m1_pre_topc(X29,X27))|(~v1_funct_1(X28)|~v1_funct_2(X28,u1_struct_0(X27),u1_struct_0(X26))|~m1_subset_1(X28,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X27),u1_struct_0(X26)))))|(v2_struct_0(X27)|~v2_pre_topc(X27)|~l1_pre_topc(X27))|(v2_struct_0(X26)|~v2_pre_topc(X26)|~l1_pre_topc(X26)))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t65_tmap_1])])])])])).
% 0.13/0.38  fof(c_0_8, plain, ![X11, X12, X13]:(v2_struct_0(X11)|~v2_pre_topc(X11)|~l1_pre_topc(X11)|~m1_subset_1(X12,u1_struct_0(X11))|(~m1_connsp_2(X13,X11,X12)|m1_subset_1(X13,k1_zfmisc_1(u1_struct_0(X11))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[dt_m1_connsp_2])])])])).
% 0.13/0.38  fof(c_0_9, plain, ![X14, X15, X16, X19]:(((m1_subset_1(esk1_3(X14,X15,X16),k1_zfmisc_1(u1_struct_0(X14)))|~r2_hidden(X16,X15)|~m1_subset_1(X16,u1_struct_0(X14))|~v3_pre_topc(X15,X14)|~m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))|(v2_struct_0(X14)|~v2_pre_topc(X14)|~l1_pre_topc(X14)))&((m1_connsp_2(esk1_3(X14,X15,X16),X14,X16)|~r2_hidden(X16,X15)|~m1_subset_1(X16,u1_struct_0(X14))|~v3_pre_topc(X15,X14)|~m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))|(v2_struct_0(X14)|~v2_pre_topc(X14)|~l1_pre_topc(X14)))&(r1_tarski(esk1_3(X14,X15,X16),X15)|~r2_hidden(X16,X15)|~m1_subset_1(X16,u1_struct_0(X14))|~v3_pre_topc(X15,X14)|~m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))|(v2_struct_0(X14)|~v2_pre_topc(X14)|~l1_pre_topc(X14)))))&((m1_subset_1(esk2_2(X14,X15),u1_struct_0(X14))|v3_pre_topc(X15,X14)|~m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))|(v2_struct_0(X14)|~v2_pre_topc(X14)|~l1_pre_topc(X14)))&((r2_hidden(esk2_2(X14,X15),X15)|v3_pre_topc(X15,X14)|~m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))|(v2_struct_0(X14)|~v2_pre_topc(X14)|~l1_pre_topc(X14)))&(~m1_subset_1(X19,k1_zfmisc_1(u1_struct_0(X14)))|(~m1_connsp_2(X19,X14,esk2_2(X14,X15))|~r1_tarski(X19,X15))|v3_pre_topc(X15,X14)|~m1_subset_1(X15,k1_zfmisc_1(u1_struct_0(X14)))|(v2_struct_0(X14)|~v2_pre_topc(X14)|~l1_pre_topc(X14)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t9_connsp_2])])])])])])).
% 0.13/0.38  fof(c_0_10, negated_conjecture, (((~v2_struct_0(esk3_0)&v2_pre_topc(esk3_0))&l1_pre_topc(esk3_0))&(((~v2_struct_0(esk4_0)&v2_pre_topc(esk4_0))&l1_pre_topc(esk4_0))&(((v1_funct_1(esk5_0)&v1_funct_2(esk5_0,u1_struct_0(esk4_0),u1_struct_0(esk3_0)))&m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk4_0),u1_struct_0(esk3_0)))))&((~v2_struct_0(esk6_0)&m1_pre_topc(esk6_0,esk4_0))&(m1_subset_1(esk7_0,k1_zfmisc_1(u1_struct_0(esk4_0)))&(m1_subset_1(esk8_0,u1_struct_0(esk4_0))&(m1_subset_1(esk9_0,u1_struct_0(esk6_0))&((((v3_pre_topc(esk7_0,esk4_0)&r2_hidden(esk8_0,esk7_0))&r1_tarski(esk7_0,u1_struct_0(esk6_0)))&esk8_0=esk9_0)&((~r1_tmap_1(esk4_0,esk3_0,esk5_0,esk8_0)|~r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),esk9_0))&(r1_tmap_1(esk4_0,esk3_0,esk5_0,esk8_0)|r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),esk9_0))))))))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[c_0_6])])])])).
% 0.13/0.38  cnf(c_0_11, plain, (r1_tmap_1(X3,X2,X4,X6)|v2_struct_0(X1)|v2_struct_0(X3)|v2_struct_0(X2)|~r1_tmap_1(X1,X2,k2_tmap_1(X3,X2,X4,X1),X5)|~r1_tarski(X7,u1_struct_0(X1))|~m1_connsp_2(X7,X3,X6)|X6!=X5|~m1_subset_1(X5,u1_struct_0(X1))|~m1_subset_1(X6,u1_struct_0(X3))|~m1_subset_1(X7,k1_zfmisc_1(u1_struct_0(X3)))|~m1_pre_topc(X1,X3)|~v1_funct_1(X4)|~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X2))|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))|~v2_pre_topc(X3)|~l1_pre_topc(X3)|~v2_pre_topc(X2)|~l1_pre_topc(X2)), inference(split_conjunct,[status(thm)],[c_0_7])).
% 0.13/0.38  cnf(c_0_12, plain, (v2_struct_0(X1)|m1_subset_1(X3,k1_zfmisc_1(u1_struct_0(X1)))|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~m1_subset_1(X2,u1_struct_0(X1))|~m1_connsp_2(X3,X1,X2)), inference(split_conjunct,[status(thm)],[c_0_8])).
% 0.13/0.38  fof(c_0_13, plain, ![X8, X9, X10]:(~r1_tarski(X8,X9)|~r1_tarski(X9,X10)|r1_tarski(X8,X10)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t1_xboole_1])])).
% 0.13/0.38  cnf(c_0_14, plain, (r1_tarski(esk1_3(X1,X2,X3),X2)|v2_struct_0(X1)|~r2_hidden(X3,X2)|~m1_subset_1(X3,u1_struct_0(X1))|~v3_pre_topc(X2,X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~v2_pre_topc(X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_15, negated_conjecture, (r2_hidden(esk8_0,esk7_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  fof(c_0_16, plain, ![X20, X21, X22, X23, X24, X25]:(v2_struct_0(X20)|~v2_pre_topc(X20)|~l1_pre_topc(X20)|(v2_struct_0(X21)|~v2_pre_topc(X21)|~l1_pre_topc(X21)|(~v1_funct_1(X22)|~v1_funct_2(X22,u1_struct_0(X21),u1_struct_0(X20))|~m1_subset_1(X22,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X21),u1_struct_0(X20))))|(v2_struct_0(X23)|~m1_pre_topc(X23,X21)|(~m1_subset_1(X24,u1_struct_0(X21))|(~m1_subset_1(X25,u1_struct_0(X23))|(X24!=X25|~r1_tmap_1(X21,X20,X22,X24)|r1_tmap_1(X23,X20,k2_tmap_1(X21,X20,X22,X23),X25)))))))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[inference(fof_simplification,[status(thm)],[t64_tmap_1])])])])).
% 0.13/0.38  cnf(c_0_17, plain, (r1_tmap_1(X1,X2,X3,X4)|v2_struct_0(X1)|v2_struct_0(X2)|v2_struct_0(X5)|~r1_tmap_1(X5,X2,k2_tmap_1(X1,X2,X3,X5),X4)|~m1_pre_topc(X5,X1)|~v1_funct_2(X3,u1_struct_0(X1),u1_struct_0(X2))|~v1_funct_1(X3)|~m1_connsp_2(X6,X1,X4)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X1),u1_struct_0(X2))))|~m1_subset_1(X4,u1_struct_0(X1))|~m1_subset_1(X4,u1_struct_0(X5))|~l1_pre_topc(X1)|~l1_pre_topc(X2)|~v2_pre_topc(X1)|~v2_pre_topc(X2)|~r1_tarski(X6,u1_struct_0(X5))), inference(er,[status(thm)],[inference(csr,[status(thm)],[c_0_11, c_0_12])])).
% 0.13/0.38  cnf(c_0_18, negated_conjecture, (v1_funct_2(esk5_0,u1_struct_0(esk4_0),u1_struct_0(esk3_0))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_19, negated_conjecture, (v1_funct_1(esk5_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_20, negated_conjecture, (m1_subset_1(esk5_0,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(esk4_0),u1_struct_0(esk3_0))))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_21, negated_conjecture, (l1_pre_topc(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_22, negated_conjecture, (l1_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_23, negated_conjecture, (v2_pre_topc(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_24, negated_conjecture, (v2_pre_topc(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_25, negated_conjecture, (~v2_struct_0(esk3_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_26, negated_conjecture, (~v2_struct_0(esk4_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_27, plain, (m1_connsp_2(esk1_3(X1,X2,X3),X1,X3)|v2_struct_0(X1)|~r2_hidden(X3,X2)|~m1_subset_1(X3,u1_struct_0(X1))|~v3_pre_topc(X2,X1)|~m1_subset_1(X2,k1_zfmisc_1(u1_struct_0(X1)))|~v2_pre_topc(X1)|~l1_pre_topc(X1)), inference(split_conjunct,[status(thm)],[c_0_9])).
% 0.13/0.38  cnf(c_0_28, plain, (r1_tarski(X1,X3)|~r1_tarski(X1,X2)|~r1_tarski(X2,X3)), inference(split_conjunct,[status(thm)],[c_0_13])).
% 0.13/0.38  cnf(c_0_29, negated_conjecture, (r1_tarski(esk7_0,u1_struct_0(esk6_0))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_30, negated_conjecture, (v2_struct_0(X1)|r1_tarski(esk1_3(X1,esk7_0,esk8_0),esk7_0)|~v3_pre_topc(esk7_0,X1)|~m1_subset_1(esk7_0,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(esk8_0,u1_struct_0(X1))|~l1_pre_topc(X1)|~v2_pre_topc(X1)), inference(spm,[status(thm)],[c_0_14, c_0_15])).
% 0.13/0.38  cnf(c_0_31, negated_conjecture, (v3_pre_topc(esk7_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_32, negated_conjecture, (m1_subset_1(esk7_0,k1_zfmisc_1(u1_struct_0(esk4_0)))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_33, negated_conjecture, (m1_subset_1(esk8_0,u1_struct_0(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_34, plain, (v2_struct_0(X1)|v2_struct_0(X2)|v2_struct_0(X4)|r1_tmap_1(X4,X1,k2_tmap_1(X2,X1,X3,X4),X6)|~v2_pre_topc(X1)|~l1_pre_topc(X1)|~v2_pre_topc(X2)|~l1_pre_topc(X2)|~v1_funct_1(X3)|~v1_funct_2(X3,u1_struct_0(X2),u1_struct_0(X1))|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X2),u1_struct_0(X1))))|~m1_pre_topc(X4,X2)|~m1_subset_1(X5,u1_struct_0(X2))|~m1_subset_1(X6,u1_struct_0(X4))|X5!=X6|~r1_tmap_1(X2,X1,X3,X5)), inference(split_conjunct,[status(thm)],[c_0_16])).
% 0.13/0.38  cnf(c_0_35, negated_conjecture, (r1_tmap_1(esk4_0,esk3_0,esk5_0,X1)|v2_struct_0(X2)|~r1_tmap_1(X2,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,X2),X1)|~m1_pre_topc(X2,esk4_0)|~m1_connsp_2(X3,esk4_0,X1)|~m1_subset_1(X1,u1_struct_0(esk4_0))|~m1_subset_1(X1,u1_struct_0(X2))|~r1_tarski(X3,u1_struct_0(X2))), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_17, c_0_18]), c_0_19]), c_0_20]), c_0_21]), c_0_22]), c_0_23]), c_0_24])]), c_0_25]), c_0_26])).
% 0.13/0.38  cnf(c_0_36, negated_conjecture, (m1_pre_topc(esk6_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_37, negated_conjecture, (~v2_struct_0(esk6_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_38, negated_conjecture, (m1_connsp_2(esk1_3(X1,esk7_0,esk8_0),X1,esk8_0)|v2_struct_0(X1)|~v3_pre_topc(esk7_0,X1)|~m1_subset_1(esk7_0,k1_zfmisc_1(u1_struct_0(X1)))|~m1_subset_1(esk8_0,u1_struct_0(X1))|~l1_pre_topc(X1)|~v2_pre_topc(X1)), inference(spm,[status(thm)],[c_0_27, c_0_15])).
% 0.13/0.38  cnf(c_0_39, negated_conjecture, (m1_subset_1(esk9_0,u1_struct_0(esk6_0))), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_40, negated_conjecture, (esk8_0=esk9_0), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_41, negated_conjecture, (r1_tarski(X1,u1_struct_0(esk6_0))|~r1_tarski(X1,esk7_0)), inference(spm,[status(thm)],[c_0_28, c_0_29])).
% 0.13/0.38  cnf(c_0_42, negated_conjecture, (r1_tarski(esk1_3(esk4_0,esk7_0,esk8_0),esk7_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_30, c_0_31]), c_0_32]), c_0_33]), c_0_21]), c_0_23])]), c_0_26])).
% 0.13/0.38  cnf(c_0_43, negated_conjecture, (r1_tmap_1(esk4_0,esk3_0,esk5_0,esk8_0)|r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),esk9_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_44, plain, (r1_tmap_1(X1,X2,k2_tmap_1(X3,X2,X4,X1),X5)|v2_struct_0(X1)|v2_struct_0(X3)|v2_struct_0(X2)|~r1_tmap_1(X3,X2,X4,X5)|~m1_pre_topc(X1,X3)|~v1_funct_2(X4,u1_struct_0(X3),u1_struct_0(X2))|~v1_funct_1(X4)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(u1_struct_0(X3),u1_struct_0(X2))))|~m1_subset_1(X5,u1_struct_0(X1))|~m1_subset_1(X5,u1_struct_0(X3))|~l1_pre_topc(X3)|~l1_pre_topc(X2)|~v2_pre_topc(X3)|~v2_pre_topc(X2)), inference(er,[status(thm)],[c_0_34])).
% 0.13/0.38  cnf(c_0_45, negated_conjecture, (~r1_tmap_1(esk4_0,esk3_0,esk5_0,esk8_0)|~r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),esk9_0)), inference(split_conjunct,[status(thm)],[c_0_10])).
% 0.13/0.38  cnf(c_0_46, negated_conjecture, (r1_tmap_1(esk4_0,esk3_0,esk5_0,X1)|~r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),X1)|~m1_connsp_2(X2,esk4_0,X1)|~m1_subset_1(X1,u1_struct_0(esk4_0))|~m1_subset_1(X1,u1_struct_0(esk6_0))|~r1_tarski(X2,u1_struct_0(esk6_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_35, c_0_36]), c_0_37])).
% 0.13/0.38  cnf(c_0_47, negated_conjecture, (m1_connsp_2(esk1_3(esk4_0,esk7_0,esk8_0),esk4_0,esk8_0)), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_38, c_0_31]), c_0_32]), c_0_33]), c_0_21]), c_0_23])]), c_0_26])).
% 0.13/0.38  cnf(c_0_48, negated_conjecture, (m1_subset_1(esk8_0,u1_struct_0(esk6_0))), inference(rw,[status(thm)],[c_0_39, c_0_40])).
% 0.13/0.38  cnf(c_0_49, negated_conjecture, (r1_tarski(esk1_3(esk4_0,esk7_0,esk8_0),u1_struct_0(esk6_0))), inference(spm,[status(thm)],[c_0_41, c_0_42])).
% 0.13/0.38  cnf(c_0_50, negated_conjecture, (r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),esk8_0)|r1_tmap_1(esk4_0,esk3_0,esk5_0,esk8_0)), inference(rw,[status(thm)],[c_0_43, c_0_40])).
% 0.13/0.38  cnf(c_0_51, negated_conjecture, (r1_tmap_1(X1,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,X1),X2)|v2_struct_0(X1)|~r1_tmap_1(esk4_0,esk3_0,esk5_0,X2)|~m1_pre_topc(X1,esk4_0)|~m1_subset_1(X2,u1_struct_0(esk4_0))|~m1_subset_1(X2,u1_struct_0(X1))), inference(sr,[status(thm)],[inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_18]), c_0_19]), c_0_20]), c_0_21]), c_0_22]), c_0_23]), c_0_24])]), c_0_25]), c_0_26])).
% 0.13/0.38  cnf(c_0_52, negated_conjecture, (~r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),esk8_0)|~r1_tmap_1(esk4_0,esk3_0,esk5_0,esk8_0)), inference(rw,[status(thm)],[c_0_45, c_0_40])).
% 0.13/0.38  cnf(c_0_53, negated_conjecture, (r1_tmap_1(esk4_0,esk3_0,esk5_0,esk8_0)), inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_46, c_0_47]), c_0_33]), c_0_48]), c_0_49])]), c_0_50])).
% 0.13/0.38  cnf(c_0_54, negated_conjecture, (r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),X1)|~r1_tmap_1(esk4_0,esk3_0,esk5_0,X1)|~m1_subset_1(X1,u1_struct_0(esk4_0))|~m1_subset_1(X1,u1_struct_0(esk6_0))), inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_36]), c_0_37])).
% 0.13/0.38  cnf(c_0_55, negated_conjecture, (~r1_tmap_1(esk6_0,esk3_0,k2_tmap_1(esk4_0,esk3_0,esk5_0,esk6_0),esk8_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_52, c_0_53])])).
% 0.13/0.38  cnf(c_0_56, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_54, c_0_53]), c_0_33]), c_0_48])]), c_0_55]), ['proof']).
% 0.13/0.38  # SZS output end CNFRefutation
% 0.13/0.38  # Proof object total steps             : 57
% 0.13/0.38  # Proof object clause steps            : 44
% 0.13/0.38  # Proof object formula steps           : 13
% 0.13/0.38  # Proof object conjectures             : 39
% 0.13/0.38  # Proof object clause conjectures      : 36
% 0.13/0.38  # Proof object formula conjectures     : 3
% 0.13/0.38  # Proof object initial clauses used    : 26
% 0.13/0.38  # Proof object initial formulas used   : 6
% 0.13/0.38  # Proof object generating inferences   : 12
% 0.13/0.38  # Proof object simplifying inferences  : 49
% 0.13/0.38  # Training examples: 0 positive, 0 negative
% 0.13/0.38  # Parsed axioms                        : 6
% 0.13/0.38  # Removed by relevancy pruning/SinE    : 0
% 0.13/0.38  # Initial clauses                      : 31
% 0.13/0.38  # Removed in clause preprocessing      : 0
% 0.13/0.38  # Initial clauses in saturation        : 31
% 0.13/0.38  # Processed clauses                    : 86
% 0.13/0.38  # ...of these trivial                  : 0
% 0.13/0.38  # ...subsumed                          : 1
% 0.13/0.38  # ...remaining for further processing  : 84
% 0.13/0.38  # Other redundant clauses eliminated   : 3
% 0.13/0.38  # Clauses deleted for lack of memory   : 0
% 0.13/0.38  # Backward-subsumed                    : 0
% 0.13/0.38  # Backward-rewritten                   : 2
% 0.13/0.38  # Generated clauses                    : 27
% 0.13/0.38  # ...of the previous two non-trivial   : 25
% 0.13/0.38  # Contextual simplify-reflections      : 3
% 0.13/0.38  # Paramodulations                      : 24
% 0.13/0.38  # Factorizations                       : 0
% 0.13/0.38  # Equation resolutions                 : 3
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
% 0.13/0.38  # Current number of processed clauses  : 49
% 0.13/0.38  #    Positive orientable unit clauses  : 20
% 0.13/0.38  #    Positive unorientable unit clauses: 0
% 0.13/0.38  #    Negative unit clauses             : 4
% 0.13/0.38  #    Non-unit-clauses                  : 25
% 0.13/0.38  # Current number of unprocessed clauses: 0
% 0.13/0.38  # ...number of literals in the above   : 0
% 0.13/0.38  # Current number of archived formulas  : 0
% 0.13/0.38  # Current number of archived clauses   : 32
% 0.13/0.38  # Clause-clause subsumption calls (NU) : 673
% 0.13/0.38  # Rec. Clause-clause subsumption calls : 15
% 0.13/0.38  # Non-unit clause-clause subsumptions  : 4
% 0.13/0.38  # Unit Clause-clause subsumption calls : 12
% 0.13/0.38  # Rewrite failures with RHS unbound    : 0
% 0.13/0.38  # BW rewrite match attempts            : 3
% 0.13/0.38  # BW rewrite match successes           : 1
% 0.13/0.38  # Condensation attempts                : 0
% 0.13/0.38  # Condensation successes               : 0
% 0.13/0.38  # Termbank termtop insertions          : 5099
% 0.13/0.38  
% 0.13/0.38  # -------------------------------------------------
% 0.13/0.38  # User time                : 0.035 s
% 0.13/0.38  # System time              : 0.004 s
% 0.13/0.38  # Total time               : 0.039 s
% 0.13/0.38  # Maximum resident set size: 1588 pages
%------------------------------------------------------------------------------
