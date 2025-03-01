%------------------------------------------------------------------------------
% File       : E---2.5
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s

% Computer   : n009.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 11:02:17 EST 2020

% Result     : Theorem 0.19s
% Output     : CNFRefutation 0.19s
% Verified   : 
% Statistics : Number of formulae       :  111 (2453 expanded)
%              Number of clauses        :   69 ( 899 expanded)
%              Number of leaves         :   21 ( 609 expanded)
%              Depth                    :   18
%              Number of atoms          :  347 (12877 expanded)
%              Number of equality atoms :   68 ( 687 expanded)
%              Maximal formula depth    :   16 (   4 average)
%              Maximal clause size      :   23 (   2 average)
%              Maximal term depth       :    3 (   1 average)

% Comments   : 
%------------------------------------------------------------------------------
fof(t29_funct_2,conjecture,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ! [X4] :
          ( ( v1_funct_1(X4)
            & v1_funct_2(X4,X2,X1)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) )
         => ( r2_relset_1(X1,X1,k1_partfun1(X1,X2,X2,X1,X3,X4),k6_partfun1(X1))
           => ( v2_funct_1(X3)
              & v2_funct_2(X4,X1) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t29_funct_2)).

fof(t24_funct_2,axiom,(
    ! [X1,X2,X3] :
      ( ( v1_funct_1(X3)
        & v1_funct_2(X3,X1,X2)
        & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ! [X4] :
          ( ( v1_funct_1(X4)
            & v1_funct_2(X4,X2,X1)
            & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) )
         => ( r2_relset_1(X2,X2,k1_partfun1(X2,X1,X1,X2,X4,X3),k6_partfun1(X2))
           => k2_relset_1(X1,X2,X3) = X2 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t24_funct_2)).

fof(redefinition_k6_partfun1,axiom,(
    ! [X1] : k6_partfun1(X1) = k6_relat_1(X1) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k6_partfun1)).

fof(dt_k6_partfun1,axiom,(
    ! [X1] :
      ( v1_partfun1(k6_partfun1(X1),X1)
      & m1_subset_1(k6_partfun1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k6_partfun1)).

fof(d3_funct_2,axiom,(
    ! [X1,X2] :
      ( ( v1_relat_1(X2)
        & v5_relat_1(X2,X1) )
     => ( v2_funct_2(X2,X1)
      <=> k2_relat_1(X2) = X1 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d3_funct_2)).

fof(redefinition_k2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => k2_relset_1(X1,X2,X3) = k2_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_k2_relset_1)).

fof(cc2_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => ( v4_relat_1(X3,X1)
        & v5_relat_1(X3,X2) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc2_relset_1)).

fof(cc1_relset_1,axiom,(
    ! [X1,X2,X3] :
      ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
     => v1_relat_1(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',cc1_relset_1)).

fof(redefinition_r2_relset_1,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ( r2_relset_1(X1,X2,X3,X4)
      <=> X3 = X4 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',redefinition_r2_relset_1)).

fof(t52_funct_1,axiom,(
    ! [X1] : v2_funct_1(k6_relat_1(X1)) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t52_funct_1)).

fof(t26_funct_2,axiom,(
    ! [X1,X2,X3,X4] :
      ( ( v1_funct_1(X4)
        & v1_funct_2(X4,X1,X2)
        & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
     => ! [X5] :
          ( ( v1_funct_1(X5)
            & v1_funct_2(X5,X2,X3)
            & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) )
         => ( v2_funct_1(k1_partfun1(X1,X2,X2,X3,X4,X5))
           => ( ( X3 = k1_xboole_0
                & X2 != k1_xboole_0 )
              | v2_funct_1(X4) ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t26_funct_2)).

fof(t8_boole,axiom,(
    ! [X1,X2] :
      ~ ( v1_xboole_0(X1)
        & X1 != X2
        & v1_xboole_0(X2) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t8_boole)).

fof(dt_k1_partfun1,axiom,(
    ! [X1,X2,X3,X4,X5,X6] :
      ( ( v1_funct_1(X5)
        & m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
        & v1_funct_1(X6)
        & m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) )
     => ( v1_funct_1(k1_partfun1(X1,X2,X3,X4,X5,X6))
        & m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4))) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',dt_k1_partfun1)).

fof(fc1_xboole_0,axiom,(
    v1_xboole_0(k1_xboole_0) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc1_xboole_0)).

fof(t64_relat_1,axiom,(
    ! [X1] :
      ( v1_relat_1(X1)
     => ( ( k1_relat_1(X1) = k1_xboole_0
          | k2_relat_1(X1) = k1_xboole_0 )
       => X1 = k1_xboole_0 ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t64_relat_1)).

fof(t71_relat_1,axiom,(
    ! [X1] :
      ( k1_relat_1(k6_relat_1(X1)) = X1
      & k2_relat_1(k6_relat_1(X1)) = X1 ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t71_relat_1)).

fof(fc3_zfmisc_1,axiom,(
    ! [X1,X2] :
      ( v1_xboole_0(X2)
     => v1_xboole_0(k2_zfmisc_1(X1,X2)) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',fc3_zfmisc_1)).

fof(d18_relat_1,axiom,(
    ! [X1,X2] :
      ( v1_relat_1(X2)
     => ( v4_relat_1(X2,X1)
      <=> r1_tarski(k1_relat_1(X2),X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d18_relat_1)).

fof(d10_xboole_0,axiom,(
    ! [X1,X2] :
      ( X1 = X2
    <=> ( r1_tarski(X1,X2)
        & r1_tarski(X2,X1) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d10_xboole_0)).

fof(d8_funct_1,axiom,(
    ! [X1] :
      ( ( v1_relat_1(X1)
        & v1_funct_1(X1) )
     => ( v2_funct_1(X1)
      <=> ! [X2,X3] :
            ( ( r2_hidden(X2,k1_relat_1(X1))
              & r2_hidden(X3,k1_relat_1(X1))
              & k1_funct_1(X1,X2) = k1_funct_1(X1,X3) )
           => X2 = X3 ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',d8_funct_1)).

fof(t5_subset,axiom,(
    ! [X1,X2,X3] :
      ~ ( r2_hidden(X1,X2)
        & m1_subset_1(X2,k1_zfmisc_1(X3))
        & v1_xboole_0(X3) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',t5_subset)).

fof(c_0_21,negated_conjecture,(
    ~ ! [X1,X2,X3] :
        ( ( v1_funct_1(X3)
          & v1_funct_2(X3,X1,X2)
          & m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) )
       => ! [X4] :
            ( ( v1_funct_1(X4)
              & v1_funct_2(X4,X2,X1)
              & m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))) )
           => ( r2_relset_1(X1,X1,k1_partfun1(X1,X2,X2,X1,X3,X4),k6_partfun1(X1))
             => ( v2_funct_1(X3)
                & v2_funct_2(X4,X1) ) ) ) ) ),
    inference(assume_negation,[status(cth)],[t29_funct_2])).

fof(c_0_22,plain,(
    ! [X53,X54,X55,X56] :
      ( ~ v1_funct_1(X55)
      | ~ v1_funct_2(X55,X53,X54)
      | ~ m1_subset_1(X55,k1_zfmisc_1(k2_zfmisc_1(X53,X54)))
      | ~ v1_funct_1(X56)
      | ~ v1_funct_2(X56,X54,X53)
      | ~ m1_subset_1(X56,k1_zfmisc_1(k2_zfmisc_1(X54,X53)))
      | ~ r2_relset_1(X54,X54,k1_partfun1(X54,X53,X53,X54,X56,X55),k6_partfun1(X54))
      | k2_relset_1(X53,X54,X55) = X54 ) ),
    inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t24_funct_2])])])).

fof(c_0_23,plain,(
    ! [X52] : k6_partfun1(X52) = k6_relat_1(X52) ),
    inference(variable_rename,[status(thm)],[redefinition_k6_partfun1])).

fof(c_0_24,negated_conjecture,
    ( v1_funct_1(esk6_0)
    & v1_funct_2(esk6_0,esk4_0,esk5_0)
    & m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0)))
    & v1_funct_1(esk7_0)
    & v1_funct_2(esk7_0,esk5_0,esk4_0)
    & m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk5_0,esk4_0)))
    & r2_relset_1(esk4_0,esk4_0,k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0),k6_partfun1(esk4_0))
    & ( ~ v2_funct_1(esk6_0)
      | ~ v2_funct_2(esk7_0,esk4_0) ) ),
    inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_21])])])).

cnf(c_0_25,plain,
    ( k2_relset_1(X2,X3,X1) = X3
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ v1_funct_1(X4)
    | ~ v1_funct_2(X4,X3,X2)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
    | ~ r2_relset_1(X3,X3,k1_partfun1(X3,X2,X2,X3,X4,X1),k6_partfun1(X3)) ),
    inference(split_conjunct,[status(thm)],[c_0_22])).

cnf(c_0_26,plain,
    ( k6_partfun1(X1) = k6_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_23])).

cnf(c_0_27,negated_conjecture,
    ( r2_relset_1(esk4_0,esk4_0,k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0),k6_partfun1(esk4_0)) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

fof(c_0_28,plain,(
    ! [X51] :
      ( v1_partfun1(k6_partfun1(X51),X51)
      & m1_subset_1(k6_partfun1(X51),k1_zfmisc_1(k2_zfmisc_1(X51,X51))) ) ),
    inference(variable_rename,[status(thm)],[dt_k6_partfun1])).

fof(c_0_29,plain,(
    ! [X43,X44] :
      ( ( ~ v2_funct_2(X44,X43)
        | k2_relat_1(X44) = X43
        | ~ v1_relat_1(X44)
        | ~ v5_relat_1(X44,X43) )
      & ( k2_relat_1(X44) != X43
        | v2_funct_2(X44,X43)
        | ~ v1_relat_1(X44)
        | ~ v5_relat_1(X44,X43) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_funct_2])])])).

fof(c_0_30,plain,(
    ! [X36,X37,X38] :
      ( ~ m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37)))
      | k2_relset_1(X36,X37,X38) = k2_relat_1(X38) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).

cnf(c_0_31,plain,
    ( k2_relset_1(X2,X3,X1) = X3
    | ~ v1_funct_1(X4)
    | ~ v1_funct_1(X1)
    | ~ v1_funct_2(X4,X3,X2)
    | ~ v1_funct_2(X1,X2,X3)
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))
    | ~ r2_relset_1(X3,X3,k1_partfun1(X3,X2,X2,X3,X4,X1),k6_relat_1(X3)) ),
    inference(rw,[status(thm)],[c_0_25,c_0_26])).

cnf(c_0_32,negated_conjecture,
    ( r2_relset_1(esk4_0,esk4_0,k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0),k6_relat_1(esk4_0)) ),
    inference(rw,[status(thm)],[c_0_27,c_0_26])).

cnf(c_0_33,negated_conjecture,
    ( v1_funct_2(esk6_0,esk4_0,esk5_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_34,negated_conjecture,
    ( v1_funct_2(esk7_0,esk5_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_35,negated_conjecture,
    ( v1_funct_1(esk6_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_36,negated_conjecture,
    ( v1_funct_1(esk7_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_37,negated_conjecture,
    ( m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_38,negated_conjecture,
    ( m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk5_0,esk4_0))) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

fof(c_0_39,plain,(
    ! [X33,X34,X35] :
      ( ( v4_relat_1(X35,X33)
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))) )
      & ( v5_relat_1(X35,X34)
        | ~ m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).

fof(c_0_40,plain,(
    ! [X30,X31,X32] :
      ( ~ m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))
      | v1_relat_1(X32) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).

fof(c_0_41,plain,(
    ! [X39,X40,X41,X42] :
      ( ( ~ r2_relset_1(X39,X40,X41,X42)
        | X41 = X42
        | ~ m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X39,X40)))
        | ~ m1_subset_1(X42,k1_zfmisc_1(k2_zfmisc_1(X39,X40))) )
      & ( X41 != X42
        | r2_relset_1(X39,X40,X41,X42)
        | ~ m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X39,X40)))
        | ~ m1_subset_1(X42,k1_zfmisc_1(k2_zfmisc_1(X39,X40))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_r2_relset_1])])])).

cnf(c_0_42,plain,
    ( m1_subset_1(k6_partfun1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(split_conjunct,[status(thm)],[c_0_28])).

cnf(c_0_43,plain,
    ( v2_funct_2(X1,X2)
    | k2_relat_1(X1) != X2
    | ~ v1_relat_1(X1)
    | ~ v5_relat_1(X1,X2) ),
    inference(split_conjunct,[status(thm)],[c_0_29])).

cnf(c_0_44,plain,
    ( k2_relset_1(X2,X3,X1) = k2_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_30])).

cnf(c_0_45,negated_conjecture,
    ( k2_relset_1(esk5_0,esk4_0,esk7_0) = esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_33]),c_0_34]),c_0_35]),c_0_36]),c_0_37]),c_0_38])])).

cnf(c_0_46,plain,
    ( v5_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_47,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_40])).

fof(c_0_48,plain,(
    ! [X29] : v2_funct_1(k6_relat_1(X29)) ),
    inference(variable_rename,[status(thm)],[t52_funct_1])).

cnf(c_0_49,plain,
    ( X3 = X4
    | ~ r2_relset_1(X1,X2,X3,X4)
    | ~ m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))) ),
    inference(split_conjunct,[status(thm)],[c_0_41])).

cnf(c_0_50,plain,
    ( m1_subset_1(k6_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1))) ),
    inference(rw,[status(thm)],[c_0_42,c_0_26])).

cnf(c_0_51,plain,
    ( v2_funct_2(X1,k2_relat_1(X1))
    | ~ v5_relat_1(X1,k2_relat_1(X1))
    | ~ v1_relat_1(X1) ),
    inference(er,[status(thm)],[c_0_43])).

cnf(c_0_52,negated_conjecture,
    ( k2_relat_1(esk7_0) = esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44,c_0_45]),c_0_38])])).

cnf(c_0_53,negated_conjecture,
    ( v5_relat_1(esk7_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_46,c_0_38])).

cnf(c_0_54,negated_conjecture,
    ( v1_relat_1(esk7_0) ),
    inference(spm,[status(thm)],[c_0_47,c_0_38])).

fof(c_0_55,plain,(
    ! [X57,X58,X59,X60,X61] :
      ( ( X59 = k1_xboole_0
        | v2_funct_1(X60)
        | ~ v2_funct_1(k1_partfun1(X57,X58,X58,X59,X60,X61))
        | ~ v1_funct_1(X61)
        | ~ v1_funct_2(X61,X58,X59)
        | ~ m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X58,X59)))
        | ~ v1_funct_1(X60)
        | ~ v1_funct_2(X60,X57,X58)
        | ~ m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X57,X58))) )
      & ( X58 != k1_xboole_0
        | v2_funct_1(X60)
        | ~ v2_funct_1(k1_partfun1(X57,X58,X58,X59,X60,X61))
        | ~ v1_funct_1(X61)
        | ~ v1_funct_2(X61,X58,X59)
        | ~ m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X58,X59)))
        | ~ v1_funct_1(X60)
        | ~ v1_funct_2(X60,X57,X58)
        | ~ m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X57,X58))) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t26_funct_2])])])])).

cnf(c_0_56,plain,
    ( v2_funct_1(k6_relat_1(X1)) ),
    inference(split_conjunct,[status(thm)],[c_0_48])).

cnf(c_0_57,negated_conjecture,
    ( k6_relat_1(esk4_0) = k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0)
    | ~ m1_subset_1(k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0),k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk4_0))) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_32]),c_0_50])])).

cnf(c_0_58,negated_conjecture,
    ( ~ v2_funct_1(esk6_0)
    | ~ v2_funct_2(esk7_0,esk4_0) ),
    inference(split_conjunct,[status(thm)],[c_0_24])).

cnf(c_0_59,negated_conjecture,
    ( v2_funct_2(esk7_0,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51,c_0_52]),c_0_53]),c_0_54])])).

fof(c_0_60,plain,(
    ! [X13,X14] :
      ( ~ v1_xboole_0(X13)
      | X13 = X14
      | ~ v1_xboole_0(X14) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t8_boole])])).

cnf(c_0_61,plain,
    ( X1 = k1_xboole_0
    | v2_funct_1(X2)
    | ~ v2_funct_1(k1_partfun1(X3,X4,X4,X1,X2,X5))
    | ~ v1_funct_1(X5)
    | ~ v1_funct_2(X5,X4,X1)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X4,X1)))
    | ~ v1_funct_1(X2)
    | ~ v1_funct_2(X2,X3,X4)
    | ~ m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(split_conjunct,[status(thm)],[c_0_55])).

cnf(c_0_62,negated_conjecture,
    ( v2_funct_1(k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0))
    | ~ m1_subset_1(k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0),k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk4_0))) ),
    inference(spm,[status(thm)],[c_0_56,c_0_57])).

cnf(c_0_63,negated_conjecture,
    ( ~ v2_funct_1(esk6_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_58,c_0_59])])).

fof(c_0_64,plain,(
    ! [X45,X46,X47,X48,X49,X50] :
      ( ( v1_funct_1(k1_partfun1(X45,X46,X47,X48,X49,X50))
        | ~ v1_funct_1(X49)
        | ~ m1_subset_1(X49,k1_zfmisc_1(k2_zfmisc_1(X45,X46)))
        | ~ v1_funct_1(X50)
        | ~ m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X47,X48))) )
      & ( m1_subset_1(k1_partfun1(X45,X46,X47,X48,X49,X50),k1_zfmisc_1(k2_zfmisc_1(X45,X48)))
        | ~ v1_funct_1(X49)
        | ~ m1_subset_1(X49,k1_zfmisc_1(k2_zfmisc_1(X45,X46)))
        | ~ v1_funct_1(X50)
        | ~ m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X47,X48))) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_partfun1])])])).

cnf(c_0_65,plain,
    ( X1 = X2
    | ~ v1_xboole_0(X1)
    | ~ v1_xboole_0(X2) ),
    inference(split_conjunct,[status(thm)],[c_0_60])).

cnf(c_0_66,plain,
    ( v1_xboole_0(k1_xboole_0) ),
    inference(split_conjunct,[status(thm)],[fc1_xboole_0])).

cnf(c_0_67,negated_conjecture,
    ( k1_xboole_0 = esk4_0
    | ~ m1_subset_1(k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0),k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk4_0))) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61,c_0_62]),c_0_34]),c_0_33]),c_0_36]),c_0_35]),c_0_38]),c_0_37])]),c_0_63])).

cnf(c_0_68,plain,
    ( m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4)))
    | ~ v1_funct_1(X5)
    | ~ m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))
    | ~ v1_funct_1(X6)
    | ~ m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))) ),
    inference(split_conjunct,[status(thm)],[c_0_64])).

fof(c_0_69,plain,(
    ! [X22] :
      ( ( k1_relat_1(X22) != k1_xboole_0
        | X22 = k1_xboole_0
        | ~ v1_relat_1(X22) )
      & ( k2_relat_1(X22) != k1_xboole_0
        | X22 = k1_xboole_0
        | ~ v1_relat_1(X22) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_relat_1])])])).

fof(c_0_70,plain,(
    ! [X23] :
      ( k1_relat_1(k6_relat_1(X23)) = X23
      & k2_relat_1(k6_relat_1(X23)) = X23 ) ),
    inference(variable_rename,[status(thm)],[t71_relat_1])).

cnf(c_0_71,plain,
    ( X1 = k1_xboole_0
    | ~ v1_xboole_0(X1) ),
    inference(spm,[status(thm)],[c_0_65,c_0_66])).

cnf(c_0_72,negated_conjecture,
    ( k1_xboole_0 = esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67,c_0_68]),c_0_36]),c_0_35]),c_0_38]),c_0_37])])).

fof(c_0_73,plain,(
    ! [X15,X16] :
      ( ~ v1_xboole_0(X16)
      | v1_xboole_0(k2_zfmisc_1(X15,X16)) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc3_zfmisc_1])])).

cnf(c_0_74,plain,
    ( X1 = k1_xboole_0
    | k2_relat_1(X1) != k1_xboole_0
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_69])).

cnf(c_0_75,plain,
    ( k2_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_70])).

cnf(c_0_76,plain,
    ( X1 = esk4_0
    | ~ v1_xboole_0(X1) ),
    inference(rw,[status(thm)],[c_0_71,c_0_72])).

cnf(c_0_77,plain,
    ( v1_xboole_0(k2_zfmisc_1(X2,X1))
    | ~ v1_xboole_0(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_73])).

cnf(c_0_78,plain,
    ( k6_relat_1(k1_xboole_0) = k1_xboole_0
    | ~ v1_relat_1(k6_relat_1(k1_xboole_0)) ),
    inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_74,c_0_75])])).

cnf(c_0_79,plain,
    ( v1_relat_1(k6_relat_1(X1)) ),
    inference(spm,[status(thm)],[c_0_47,c_0_50])).

cnf(c_0_80,plain,
    ( k2_zfmisc_1(X1,X2) = esk4_0
    | ~ v1_xboole_0(X2) ),
    inference(spm,[status(thm)],[c_0_76,c_0_77])).

cnf(c_0_81,plain,
    ( v1_xboole_0(esk4_0) ),
    inference(rw,[status(thm)],[c_0_66,c_0_72])).

cnf(c_0_82,plain,
    ( k6_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_78,c_0_79])])).

fof(c_0_83,plain,(
    ! [X20,X21] :
      ( ( ~ v4_relat_1(X21,X20)
        | r1_tarski(k1_relat_1(X21),X20)
        | ~ v1_relat_1(X21) )
      & ( ~ r1_tarski(k1_relat_1(X21),X20)
        | v4_relat_1(X21,X20)
        | ~ v1_relat_1(X21) ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).

cnf(c_0_84,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3))) ),
    inference(split_conjunct,[status(thm)],[c_0_39])).

cnf(c_0_85,plain,
    ( k2_zfmisc_1(X1,esk4_0) = esk4_0 ),
    inference(spm,[status(thm)],[c_0_80,c_0_81])).

cnf(c_0_86,plain,
    ( k1_relat_1(k6_relat_1(X1)) = X1 ),
    inference(split_conjunct,[status(thm)],[c_0_70])).

cnf(c_0_87,plain,
    ( k6_relat_1(esk4_0) = esk4_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_82,c_0_72]),c_0_72])).

fof(c_0_88,plain,(
    ! [X11,X12] :
      ( ( r1_tarski(X11,X12)
        | X11 != X12 )
      & ( r1_tarski(X12,X11)
        | X11 != X12 )
      & ( ~ r1_tarski(X11,X12)
        | ~ r1_tarski(X12,X11)
        | X11 = X12 ) ) ),
    inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).

cnf(c_0_89,plain,
    ( r1_tarski(k1_relat_1(X1),X2)
    | ~ v4_relat_1(X1,X2)
    | ~ v1_relat_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_83])).

cnf(c_0_90,negated_conjecture,
    ( v4_relat_1(esk6_0,esk4_0) ),
    inference(spm,[status(thm)],[c_0_84,c_0_37])).

cnf(c_0_91,negated_conjecture,
    ( v1_relat_1(esk6_0) ),
    inference(spm,[status(thm)],[c_0_47,c_0_37])).

cnf(c_0_92,plain,
    ( v4_relat_1(X1,X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_84,c_0_85])).

cnf(c_0_93,plain,
    ( v1_relat_1(X1)
    | ~ m1_subset_1(X1,k1_zfmisc_1(esk4_0)) ),
    inference(spm,[status(thm)],[c_0_47,c_0_85])).

cnf(c_0_94,plain,
    ( k1_relat_1(k1_xboole_0) = k1_xboole_0 ),
    inference(spm,[status(thm)],[c_0_86,c_0_82])).

cnf(c_0_95,plain,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk4_0))) ),
    inference(spm,[status(thm)],[c_0_50,c_0_87])).

fof(c_0_96,plain,(
    ! [X24,X25,X26] :
      ( ( ~ v2_funct_1(X24)
        | ~ r2_hidden(X25,k1_relat_1(X24))
        | ~ r2_hidden(X26,k1_relat_1(X24))
        | k1_funct_1(X24,X25) != k1_funct_1(X24,X26)
        | X25 = X26
        | ~ v1_relat_1(X24)
        | ~ v1_funct_1(X24) )
      & ( r2_hidden(esk2_1(X24),k1_relat_1(X24))
        | v2_funct_1(X24)
        | ~ v1_relat_1(X24)
        | ~ v1_funct_1(X24) )
      & ( r2_hidden(esk3_1(X24),k1_relat_1(X24))
        | v2_funct_1(X24)
        | ~ v1_relat_1(X24)
        | ~ v1_funct_1(X24) )
      & ( k1_funct_1(X24,esk2_1(X24)) = k1_funct_1(X24,esk3_1(X24))
        | v2_funct_1(X24)
        | ~ v1_relat_1(X24)
        | ~ v1_funct_1(X24) )
      & ( esk2_1(X24) != esk3_1(X24)
        | v2_funct_1(X24)
        | ~ v1_relat_1(X24)
        | ~ v1_funct_1(X24) ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_funct_1])])])])])).

cnf(c_0_97,plain,
    ( X1 = X2
    | ~ r1_tarski(X1,X2)
    | ~ r1_tarski(X2,X1) ),
    inference(split_conjunct,[status(thm)],[c_0_88])).

cnf(c_0_98,negated_conjecture,
    ( r1_tarski(k1_relat_1(esk6_0),esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89,c_0_90]),c_0_91])])).

cnf(c_0_99,plain,
    ( r1_tarski(k1_relat_1(X1),X2)
    | ~ m1_subset_1(X1,k1_zfmisc_1(esk4_0)) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_89,c_0_92]),c_0_93])).

cnf(c_0_100,plain,
    ( k1_relat_1(esk4_0) = esk4_0 ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_94,c_0_72]),c_0_72])).

cnf(c_0_101,plain,
    ( m1_subset_1(esk4_0,k1_zfmisc_1(esk4_0)) ),
    inference(rw,[status(thm)],[c_0_95,c_0_85])).

fof(c_0_102,plain,(
    ! [X17,X18,X19] :
      ( ~ r2_hidden(X17,X18)
      | ~ m1_subset_1(X18,k1_zfmisc_1(X19))
      | ~ v1_xboole_0(X19) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t5_subset])])).

cnf(c_0_103,plain,
    ( r2_hidden(esk3_1(X1),k1_relat_1(X1))
    | v2_funct_1(X1)
    | ~ v1_relat_1(X1)
    | ~ v1_funct_1(X1) ),
    inference(split_conjunct,[status(thm)],[c_0_96])).

cnf(c_0_104,negated_conjecture,
    ( k1_relat_1(esk6_0) = esk4_0
    | ~ r1_tarski(esk4_0,k1_relat_1(esk6_0)) ),
    inference(spm,[status(thm)],[c_0_97,c_0_98])).

cnf(c_0_105,plain,
    ( r1_tarski(esk4_0,X1) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_99,c_0_100]),c_0_101])])).

cnf(c_0_106,plain,
    ( ~ r2_hidden(X1,X2)
    | ~ m1_subset_1(X2,k1_zfmisc_1(X3))
    | ~ v1_xboole_0(X3) ),
    inference(split_conjunct,[status(thm)],[c_0_102])).

cnf(c_0_107,negated_conjecture,
    ( r2_hidden(esk3_1(esk6_0),k1_relat_1(esk6_0)) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_103,c_0_35]),c_0_91])]),c_0_63])).

cnf(c_0_108,negated_conjecture,
    ( k1_relat_1(esk6_0) = esk4_0 ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_104,c_0_105])])).

cnf(c_0_109,plain,
    ( ~ r2_hidden(X1,esk4_0) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_106,c_0_101]),c_0_81])])).

cnf(c_0_110,negated_conjecture,
    ( $false ),
    inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_107,c_0_108]),c_0_109]),
    [proof]).
%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : eprover --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --auto-schedule --cpu-limit=%d %s
% 0.13/0.34  % Computer   : n009.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % WCLimit    : 600
% 0.13/0.34  % DateTime   : Tue Dec  1 16:06:41 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  # Version: 2.5pre002
% 0.13/0.34  # No SInE strategy applied
% 0.13/0.34  # Trying AutoSched0 for 299 seconds
% 0.19/0.45  # AutoSched0-Mode selected heuristic G_E___208_B07____S_F1_SE_CS_SP_PS_S5PRR_RG_S04AN
% 0.19/0.45  # and selection function SelectComplexExceptUniqMaxHorn.
% 0.19/0.45  #
% 0.19/0.45  # Preprocessing time       : 0.051 s
% 0.19/0.45  # Presaturation interreduction done
% 0.19/0.45  
% 0.19/0.45  # Proof found!
% 0.19/0.45  # SZS status Theorem
% 0.19/0.45  # SZS output start CNFRefutation
% 0.19/0.45  fof(t29_funct_2, conjecture, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X2,X1))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))))=>(r2_relset_1(X1,X1,k1_partfun1(X1,X2,X2,X1,X3,X4),k6_partfun1(X1))=>(v2_funct_1(X3)&v2_funct_2(X4,X1))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t29_funct_2)).
% 0.19/0.45  fof(t24_funct_2, axiom, ![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X2,X1))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))))=>(r2_relset_1(X2,X2,k1_partfun1(X2,X1,X1,X2,X4,X3),k6_partfun1(X2))=>k2_relset_1(X1,X2,X3)=X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t24_funct_2)).
% 0.19/0.45  fof(redefinition_k6_partfun1, axiom, ![X1]:k6_partfun1(X1)=k6_relat_1(X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k6_partfun1)).
% 0.19/0.45  fof(dt_k6_partfun1, axiom, ![X1]:(v1_partfun1(k6_partfun1(X1),X1)&m1_subset_1(k6_partfun1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k6_partfun1)).
% 0.19/0.45  fof(d3_funct_2, axiom, ![X1, X2]:((v1_relat_1(X2)&v5_relat_1(X2,X1))=>(v2_funct_2(X2,X1)<=>k2_relat_1(X2)=X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d3_funct_2)).
% 0.19/0.45  fof(redefinition_k2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>k2_relset_1(X1,X2,X3)=k2_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_k2_relset_1)).
% 0.19/0.45  fof(cc2_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>(v4_relat_1(X3,X1)&v5_relat_1(X3,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc2_relset_1)).
% 0.19/0.45  fof(cc1_relset_1, axiom, ![X1, X2, X3]:(m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))=>v1_relat_1(X3)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', cc1_relset_1)).
% 0.19/0.45  fof(redefinition_r2_relset_1, axiom, ![X1, X2, X3, X4]:((m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>(r2_relset_1(X1,X2,X3,X4)<=>X3=X4)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', redefinition_r2_relset_1)).
% 0.19/0.45  fof(t52_funct_1, axiom, ![X1]:v2_funct_1(k6_relat_1(X1)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t52_funct_1)).
% 0.19/0.45  fof(t26_funct_2, axiom, ![X1, X2, X3, X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X1,X2))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X5]:(((v1_funct_1(X5)&v1_funct_2(X5,X2,X3))&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X2,X3))))=>(v2_funct_1(k1_partfun1(X1,X2,X2,X3,X4,X5))=>((X3=k1_xboole_0&X2!=k1_xboole_0)|v2_funct_1(X4))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t26_funct_2)).
% 0.19/0.45  fof(t8_boole, axiom, ![X1, X2]:~(((v1_xboole_0(X1)&X1!=X2)&v1_xboole_0(X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t8_boole)).
% 0.19/0.45  fof(dt_k1_partfun1, axiom, ![X1, X2, X3, X4, X5, X6]:((((v1_funct_1(X5)&m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))&v1_funct_1(X6))&m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4))))=>(v1_funct_1(k1_partfun1(X1,X2,X3,X4,X5,X6))&m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4))))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', dt_k1_partfun1)).
% 0.19/0.45  fof(fc1_xboole_0, axiom, v1_xboole_0(k1_xboole_0), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc1_xboole_0)).
% 0.19/0.45  fof(t64_relat_1, axiom, ![X1]:(v1_relat_1(X1)=>((k1_relat_1(X1)=k1_xboole_0|k2_relat_1(X1)=k1_xboole_0)=>X1=k1_xboole_0)), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t64_relat_1)).
% 0.19/0.45  fof(t71_relat_1, axiom, ![X1]:(k1_relat_1(k6_relat_1(X1))=X1&k2_relat_1(k6_relat_1(X1))=X1), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t71_relat_1)).
% 0.19/0.45  fof(fc3_zfmisc_1, axiom, ![X1, X2]:(v1_xboole_0(X2)=>v1_xboole_0(k2_zfmisc_1(X1,X2))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', fc3_zfmisc_1)).
% 0.19/0.45  fof(d18_relat_1, axiom, ![X1, X2]:(v1_relat_1(X2)=>(v4_relat_1(X2,X1)<=>r1_tarski(k1_relat_1(X2),X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d18_relat_1)).
% 0.19/0.45  fof(d10_xboole_0, axiom, ![X1, X2]:(X1=X2<=>(r1_tarski(X1,X2)&r1_tarski(X2,X1))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d10_xboole_0)).
% 0.19/0.45  fof(d8_funct_1, axiom, ![X1]:((v1_relat_1(X1)&v1_funct_1(X1))=>(v2_funct_1(X1)<=>![X2, X3]:(((r2_hidden(X2,k1_relat_1(X1))&r2_hidden(X3,k1_relat_1(X1)))&k1_funct_1(X1,X2)=k1_funct_1(X1,X3))=>X2=X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', d8_funct_1)).
% 0.19/0.45  fof(t5_subset, axiom, ![X1, X2, X3]:~(((r2_hidden(X1,X2)&m1_subset_1(X2,k1_zfmisc_1(X3)))&v1_xboole_0(X3))), file('/export/starexec/sandbox2/benchmark/theBenchmark.p', t5_subset)).
% 0.19/0.45  fof(c_0_21, negated_conjecture, ~(![X1, X2, X3]:(((v1_funct_1(X3)&v1_funct_2(X3,X1,X2))&m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2))))=>![X4]:(((v1_funct_1(X4)&v1_funct_2(X4,X2,X1))&m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X2,X1))))=>(r2_relset_1(X1,X1,k1_partfun1(X1,X2,X2,X1,X3,X4),k6_partfun1(X1))=>(v2_funct_1(X3)&v2_funct_2(X4,X1)))))), inference(assume_negation,[status(cth)],[t29_funct_2])).
% 0.19/0.45  fof(c_0_22, plain, ![X53, X54, X55, X56]:(~v1_funct_1(X55)|~v1_funct_2(X55,X53,X54)|~m1_subset_1(X55,k1_zfmisc_1(k2_zfmisc_1(X53,X54)))|(~v1_funct_1(X56)|~v1_funct_2(X56,X54,X53)|~m1_subset_1(X56,k1_zfmisc_1(k2_zfmisc_1(X54,X53)))|(~r2_relset_1(X54,X54,k1_partfun1(X54,X53,X53,X54,X56,X55),k6_partfun1(X54))|k2_relset_1(X53,X54,X55)=X54))), inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t24_funct_2])])])).
% 0.19/0.45  fof(c_0_23, plain, ![X52]:k6_partfun1(X52)=k6_relat_1(X52), inference(variable_rename,[status(thm)],[redefinition_k6_partfun1])).
% 0.19/0.45  fof(c_0_24, negated_conjecture, (((v1_funct_1(esk6_0)&v1_funct_2(esk6_0,esk4_0,esk5_0))&m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0))))&(((v1_funct_1(esk7_0)&v1_funct_2(esk7_0,esk5_0,esk4_0))&m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk5_0,esk4_0))))&(r2_relset_1(esk4_0,esk4_0,k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0),k6_partfun1(esk4_0))&(~v2_funct_1(esk6_0)|~v2_funct_2(esk7_0,esk4_0))))), inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_21])])])).
% 0.19/0.45  cnf(c_0_25, plain, (k2_relset_1(X2,X3,X1)=X3|~v1_funct_1(X1)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~v1_funct_1(X4)|~v1_funct_2(X4,X3,X2)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))|~r2_relset_1(X3,X3,k1_partfun1(X3,X2,X2,X3,X4,X1),k6_partfun1(X3))), inference(split_conjunct,[status(thm)],[c_0_22])).
% 0.19/0.45  cnf(c_0_26, plain, (k6_partfun1(X1)=k6_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_23])).
% 0.19/0.45  cnf(c_0_27, negated_conjecture, (r2_relset_1(esk4_0,esk4_0,k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0),k6_partfun1(esk4_0))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.45  fof(c_0_28, plain, ![X51]:(v1_partfun1(k6_partfun1(X51),X51)&m1_subset_1(k6_partfun1(X51),k1_zfmisc_1(k2_zfmisc_1(X51,X51)))), inference(variable_rename,[status(thm)],[dt_k6_partfun1])).
% 0.19/0.45  fof(c_0_29, plain, ![X43, X44]:((~v2_funct_2(X44,X43)|k2_relat_1(X44)=X43|(~v1_relat_1(X44)|~v5_relat_1(X44,X43)))&(k2_relat_1(X44)!=X43|v2_funct_2(X44,X43)|(~v1_relat_1(X44)|~v5_relat_1(X44,X43)))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d3_funct_2])])])).
% 0.19/0.45  fof(c_0_30, plain, ![X36, X37, X38]:(~m1_subset_1(X38,k1_zfmisc_1(k2_zfmisc_1(X36,X37)))|k2_relset_1(X36,X37,X38)=k2_relat_1(X38)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_k2_relset_1])])).
% 0.19/0.45  cnf(c_0_31, plain, (k2_relset_1(X2,X3,X1)=X3|~v1_funct_1(X4)|~v1_funct_1(X1)|~v1_funct_2(X4,X3,X2)|~v1_funct_2(X1,X2,X3)|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))|~r2_relset_1(X3,X3,k1_partfun1(X3,X2,X2,X3,X4,X1),k6_relat_1(X3))), inference(rw,[status(thm)],[c_0_25, c_0_26])).
% 0.19/0.45  cnf(c_0_32, negated_conjecture, (r2_relset_1(esk4_0,esk4_0,k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0),k6_relat_1(esk4_0))), inference(rw,[status(thm)],[c_0_27, c_0_26])).
% 0.19/0.45  cnf(c_0_33, negated_conjecture, (v1_funct_2(esk6_0,esk4_0,esk5_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.45  cnf(c_0_34, negated_conjecture, (v1_funct_2(esk7_0,esk5_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.45  cnf(c_0_35, negated_conjecture, (v1_funct_1(esk6_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.45  cnf(c_0_36, negated_conjecture, (v1_funct_1(esk7_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.45  cnf(c_0_37, negated_conjecture, (m1_subset_1(esk6_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk5_0)))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.45  cnf(c_0_38, negated_conjecture, (m1_subset_1(esk7_0,k1_zfmisc_1(k2_zfmisc_1(esk5_0,esk4_0)))), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.45  fof(c_0_39, plain, ![X33, X34, X35]:((v4_relat_1(X35,X33)|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))))&(v5_relat_1(X35,X34)|~m1_subset_1(X35,k1_zfmisc_1(k2_zfmisc_1(X33,X34))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc2_relset_1])])])).
% 0.19/0.45  fof(c_0_40, plain, ![X30, X31, X32]:(~m1_subset_1(X32,k1_zfmisc_1(k2_zfmisc_1(X30,X31)))|v1_relat_1(X32)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[cc1_relset_1])])).
% 0.19/0.45  fof(c_0_41, plain, ![X39, X40, X41, X42]:((~r2_relset_1(X39,X40,X41,X42)|X41=X42|(~m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X39,X40)))|~m1_subset_1(X42,k1_zfmisc_1(k2_zfmisc_1(X39,X40)))))&(X41!=X42|r2_relset_1(X39,X40,X41,X42)|(~m1_subset_1(X41,k1_zfmisc_1(k2_zfmisc_1(X39,X40)))|~m1_subset_1(X42,k1_zfmisc_1(k2_zfmisc_1(X39,X40)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[redefinition_r2_relset_1])])])).
% 0.19/0.45  cnf(c_0_42, plain, (m1_subset_1(k6_partfun1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(split_conjunct,[status(thm)],[c_0_28])).
% 0.19/0.45  cnf(c_0_43, plain, (v2_funct_2(X1,X2)|k2_relat_1(X1)!=X2|~v1_relat_1(X1)|~v5_relat_1(X1,X2)), inference(split_conjunct,[status(thm)],[c_0_29])).
% 0.19/0.45  cnf(c_0_44, plain, (k2_relset_1(X2,X3,X1)=k2_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_30])).
% 0.19/0.45  cnf(c_0_45, negated_conjecture, (k2_relset_1(esk5_0,esk4_0,esk7_0)=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31, c_0_32]), c_0_33]), c_0_34]), c_0_35]), c_0_36]), c_0_37]), c_0_38])])).
% 0.19/0.45  cnf(c_0_46, plain, (v5_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X3,X2)))), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.19/0.45  cnf(c_0_47, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_40])).
% 0.19/0.45  fof(c_0_48, plain, ![X29]:v2_funct_1(k6_relat_1(X29)), inference(variable_rename,[status(thm)],[t52_funct_1])).
% 0.19/0.45  cnf(c_0_49, plain, (X3=X4|~r2_relset_1(X1,X2,X3,X4)|~m1_subset_1(X3,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~m1_subset_1(X4,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))), inference(split_conjunct,[status(thm)],[c_0_41])).
% 0.19/0.45  cnf(c_0_50, plain, (m1_subset_1(k6_relat_1(X1),k1_zfmisc_1(k2_zfmisc_1(X1,X1)))), inference(rw,[status(thm)],[c_0_42, c_0_26])).
% 0.19/0.45  cnf(c_0_51, plain, (v2_funct_2(X1,k2_relat_1(X1))|~v5_relat_1(X1,k2_relat_1(X1))|~v1_relat_1(X1)), inference(er,[status(thm)],[c_0_43])).
% 0.19/0.45  cnf(c_0_52, negated_conjecture, (k2_relat_1(esk7_0)=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_44, c_0_45]), c_0_38])])).
% 0.19/0.45  cnf(c_0_53, negated_conjecture, (v5_relat_1(esk7_0,esk4_0)), inference(spm,[status(thm)],[c_0_46, c_0_38])).
% 0.19/0.45  cnf(c_0_54, negated_conjecture, (v1_relat_1(esk7_0)), inference(spm,[status(thm)],[c_0_47, c_0_38])).
% 0.19/0.45  fof(c_0_55, plain, ![X57, X58, X59, X60, X61]:((X59=k1_xboole_0|v2_funct_1(X60)|~v2_funct_1(k1_partfun1(X57,X58,X58,X59,X60,X61))|(~v1_funct_1(X61)|~v1_funct_2(X61,X58,X59)|~m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X58,X59))))|(~v1_funct_1(X60)|~v1_funct_2(X60,X57,X58)|~m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X57,X58)))))&(X58!=k1_xboole_0|v2_funct_1(X60)|~v2_funct_1(k1_partfun1(X57,X58,X58,X59,X60,X61))|(~v1_funct_1(X61)|~v1_funct_2(X61,X58,X59)|~m1_subset_1(X61,k1_zfmisc_1(k2_zfmisc_1(X58,X59))))|(~v1_funct_1(X60)|~v1_funct_2(X60,X57,X58)|~m1_subset_1(X60,k1_zfmisc_1(k2_zfmisc_1(X57,X58)))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t26_funct_2])])])])).
% 0.19/0.45  cnf(c_0_56, plain, (v2_funct_1(k6_relat_1(X1))), inference(split_conjunct,[status(thm)],[c_0_48])).
% 0.19/0.45  cnf(c_0_57, negated_conjecture, (k6_relat_1(esk4_0)=k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0)|~m1_subset_1(k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0),k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk4_0)))), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49, c_0_32]), c_0_50])])).
% 0.19/0.45  cnf(c_0_58, negated_conjecture, (~v2_funct_1(esk6_0)|~v2_funct_2(esk7_0,esk4_0)), inference(split_conjunct,[status(thm)],[c_0_24])).
% 0.19/0.45  cnf(c_0_59, negated_conjecture, (v2_funct_2(esk7_0,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_51, c_0_52]), c_0_53]), c_0_54])])).
% 0.19/0.45  fof(c_0_60, plain, ![X13, X14]:(~v1_xboole_0(X13)|X13=X14|~v1_xboole_0(X14)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t8_boole])])).
% 0.19/0.45  cnf(c_0_61, plain, (X1=k1_xboole_0|v2_funct_1(X2)|~v2_funct_1(k1_partfun1(X3,X4,X4,X1,X2,X5))|~v1_funct_1(X5)|~v1_funct_2(X5,X4,X1)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X4,X1)))|~v1_funct_1(X2)|~v1_funct_2(X2,X3,X4)|~m1_subset_1(X2,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(split_conjunct,[status(thm)],[c_0_55])).
% 0.19/0.45  cnf(c_0_62, negated_conjecture, (v2_funct_1(k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0))|~m1_subset_1(k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0),k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk4_0)))), inference(spm,[status(thm)],[c_0_56, c_0_57])).
% 0.19/0.45  cnf(c_0_63, negated_conjecture, (~v2_funct_1(esk6_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_58, c_0_59])])).
% 0.19/0.45  fof(c_0_64, plain, ![X45, X46, X47, X48, X49, X50]:((v1_funct_1(k1_partfun1(X45,X46,X47,X48,X49,X50))|(~v1_funct_1(X49)|~m1_subset_1(X49,k1_zfmisc_1(k2_zfmisc_1(X45,X46)))|~v1_funct_1(X50)|~m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X47,X48)))))&(m1_subset_1(k1_partfun1(X45,X46,X47,X48,X49,X50),k1_zfmisc_1(k2_zfmisc_1(X45,X48)))|(~v1_funct_1(X49)|~m1_subset_1(X49,k1_zfmisc_1(k2_zfmisc_1(X45,X46)))|~v1_funct_1(X50)|~m1_subset_1(X50,k1_zfmisc_1(k2_zfmisc_1(X47,X48)))))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[dt_k1_partfun1])])])).
% 0.19/0.45  cnf(c_0_65, plain, (X1=X2|~v1_xboole_0(X1)|~v1_xboole_0(X2)), inference(split_conjunct,[status(thm)],[c_0_60])).
% 0.19/0.45  cnf(c_0_66, plain, (v1_xboole_0(k1_xboole_0)), inference(split_conjunct,[status(thm)],[fc1_xboole_0])).
% 0.19/0.45  cnf(c_0_67, negated_conjecture, (k1_xboole_0=esk4_0|~m1_subset_1(k1_partfun1(esk4_0,esk5_0,esk5_0,esk4_0,esk6_0,esk7_0),k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk4_0)))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_61, c_0_62]), c_0_34]), c_0_33]), c_0_36]), c_0_35]), c_0_38]), c_0_37])]), c_0_63])).
% 0.19/0.45  cnf(c_0_68, plain, (m1_subset_1(k1_partfun1(X1,X2,X3,X4,X5,X6),k1_zfmisc_1(k2_zfmisc_1(X1,X4)))|~v1_funct_1(X5)|~m1_subset_1(X5,k1_zfmisc_1(k2_zfmisc_1(X1,X2)))|~v1_funct_1(X6)|~m1_subset_1(X6,k1_zfmisc_1(k2_zfmisc_1(X3,X4)))), inference(split_conjunct,[status(thm)],[c_0_64])).
% 0.19/0.45  fof(c_0_69, plain, ![X22]:((k1_relat_1(X22)!=k1_xboole_0|X22=k1_xboole_0|~v1_relat_1(X22))&(k2_relat_1(X22)!=k1_xboole_0|X22=k1_xboole_0|~v1_relat_1(X22))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t64_relat_1])])])).
% 0.19/0.45  fof(c_0_70, plain, ![X23]:(k1_relat_1(k6_relat_1(X23))=X23&k2_relat_1(k6_relat_1(X23))=X23), inference(variable_rename,[status(thm)],[t71_relat_1])).
% 0.19/0.45  cnf(c_0_71, plain, (X1=k1_xboole_0|~v1_xboole_0(X1)), inference(spm,[status(thm)],[c_0_65, c_0_66])).
% 0.19/0.45  cnf(c_0_72, negated_conjecture, (k1_xboole_0=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_67, c_0_68]), c_0_36]), c_0_35]), c_0_38]), c_0_37])])).
% 0.19/0.45  fof(c_0_73, plain, ![X15, X16]:(~v1_xboole_0(X16)|v1_xboole_0(k2_zfmisc_1(X15,X16))), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[fc3_zfmisc_1])])).
% 0.19/0.45  cnf(c_0_74, plain, (X1=k1_xboole_0|k2_relat_1(X1)!=k1_xboole_0|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_69])).
% 0.19/0.45  cnf(c_0_75, plain, (k2_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_70])).
% 0.19/0.45  cnf(c_0_76, plain, (X1=esk4_0|~v1_xboole_0(X1)), inference(rw,[status(thm)],[c_0_71, c_0_72])).
% 0.19/0.45  cnf(c_0_77, plain, (v1_xboole_0(k2_zfmisc_1(X2,X1))|~v1_xboole_0(X1)), inference(split_conjunct,[status(thm)],[c_0_73])).
% 0.19/0.45  cnf(c_0_78, plain, (k6_relat_1(k1_xboole_0)=k1_xboole_0|~v1_relat_1(k6_relat_1(k1_xboole_0))), inference(er,[status(thm)],[inference(spm,[status(thm)],[c_0_74, c_0_75])])).
% 0.19/0.45  cnf(c_0_79, plain, (v1_relat_1(k6_relat_1(X1))), inference(spm,[status(thm)],[c_0_47, c_0_50])).
% 0.19/0.45  cnf(c_0_80, plain, (k2_zfmisc_1(X1,X2)=esk4_0|~v1_xboole_0(X2)), inference(spm,[status(thm)],[c_0_76, c_0_77])).
% 0.19/0.45  cnf(c_0_81, plain, (v1_xboole_0(esk4_0)), inference(rw,[status(thm)],[c_0_66, c_0_72])).
% 0.19/0.45  cnf(c_0_82, plain, (k6_relat_1(k1_xboole_0)=k1_xboole_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_78, c_0_79])])).
% 0.19/0.45  fof(c_0_83, plain, ![X20, X21]:((~v4_relat_1(X21,X20)|r1_tarski(k1_relat_1(X21),X20)|~v1_relat_1(X21))&(~r1_tarski(k1_relat_1(X21),X20)|v4_relat_1(X21,X20)|~v1_relat_1(X21))), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d18_relat_1])])])).
% 0.19/0.45  cnf(c_0_84, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(k2_zfmisc_1(X2,X3)))), inference(split_conjunct,[status(thm)],[c_0_39])).
% 0.19/0.45  cnf(c_0_85, plain, (k2_zfmisc_1(X1,esk4_0)=esk4_0), inference(spm,[status(thm)],[c_0_80, c_0_81])).
% 0.19/0.45  cnf(c_0_86, plain, (k1_relat_1(k6_relat_1(X1))=X1), inference(split_conjunct,[status(thm)],[c_0_70])).
% 0.19/0.45  cnf(c_0_87, plain, (k6_relat_1(esk4_0)=esk4_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_82, c_0_72]), c_0_72])).
% 0.19/0.45  fof(c_0_88, plain, ![X11, X12]:(((r1_tarski(X11,X12)|X11!=X12)&(r1_tarski(X12,X11)|X11!=X12))&(~r1_tarski(X11,X12)|~r1_tarski(X12,X11)|X11=X12)), inference(distribute,[status(thm)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d10_xboole_0])])])).
% 0.19/0.45  cnf(c_0_89, plain, (r1_tarski(k1_relat_1(X1),X2)|~v4_relat_1(X1,X2)|~v1_relat_1(X1)), inference(split_conjunct,[status(thm)],[c_0_83])).
% 0.19/0.45  cnf(c_0_90, negated_conjecture, (v4_relat_1(esk6_0,esk4_0)), inference(spm,[status(thm)],[c_0_84, c_0_37])).
% 0.19/0.45  cnf(c_0_91, negated_conjecture, (v1_relat_1(esk6_0)), inference(spm,[status(thm)],[c_0_47, c_0_37])).
% 0.19/0.45  cnf(c_0_92, plain, (v4_relat_1(X1,X2)|~m1_subset_1(X1,k1_zfmisc_1(esk4_0))), inference(spm,[status(thm)],[c_0_84, c_0_85])).
% 0.19/0.45  cnf(c_0_93, plain, (v1_relat_1(X1)|~m1_subset_1(X1,k1_zfmisc_1(esk4_0))), inference(spm,[status(thm)],[c_0_47, c_0_85])).
% 0.19/0.45  cnf(c_0_94, plain, (k1_relat_1(k1_xboole_0)=k1_xboole_0), inference(spm,[status(thm)],[c_0_86, c_0_82])).
% 0.19/0.45  cnf(c_0_95, plain, (m1_subset_1(esk4_0,k1_zfmisc_1(k2_zfmisc_1(esk4_0,esk4_0)))), inference(spm,[status(thm)],[c_0_50, c_0_87])).
% 0.19/0.45  fof(c_0_96, plain, ![X24, X25, X26]:((~v2_funct_1(X24)|(~r2_hidden(X25,k1_relat_1(X24))|~r2_hidden(X26,k1_relat_1(X24))|k1_funct_1(X24,X25)!=k1_funct_1(X24,X26)|X25=X26)|(~v1_relat_1(X24)|~v1_funct_1(X24)))&((((r2_hidden(esk2_1(X24),k1_relat_1(X24))|v2_funct_1(X24)|(~v1_relat_1(X24)|~v1_funct_1(X24)))&(r2_hidden(esk3_1(X24),k1_relat_1(X24))|v2_funct_1(X24)|(~v1_relat_1(X24)|~v1_funct_1(X24))))&(k1_funct_1(X24,esk2_1(X24))=k1_funct_1(X24,esk3_1(X24))|v2_funct_1(X24)|(~v1_relat_1(X24)|~v1_funct_1(X24))))&(esk2_1(X24)!=esk3_1(X24)|v2_funct_1(X24)|(~v1_relat_1(X24)|~v1_funct_1(X24))))), inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[d8_funct_1])])])])])).
% 0.19/0.45  cnf(c_0_97, plain, (X1=X2|~r1_tarski(X1,X2)|~r1_tarski(X2,X1)), inference(split_conjunct,[status(thm)],[c_0_88])).
% 0.19/0.45  cnf(c_0_98, negated_conjecture, (r1_tarski(k1_relat_1(esk6_0),esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_89, c_0_90]), c_0_91])])).
% 0.19/0.45  cnf(c_0_99, plain, (r1_tarski(k1_relat_1(X1),X2)|~m1_subset_1(X1,k1_zfmisc_1(esk4_0))), inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_89, c_0_92]), c_0_93])).
% 0.19/0.45  cnf(c_0_100, plain, (k1_relat_1(esk4_0)=esk4_0), inference(rw,[status(thm)],[inference(rw,[status(thm)],[c_0_94, c_0_72]), c_0_72])).
% 0.19/0.45  cnf(c_0_101, plain, (m1_subset_1(esk4_0,k1_zfmisc_1(esk4_0))), inference(rw,[status(thm)],[c_0_95, c_0_85])).
% 0.19/0.45  fof(c_0_102, plain, ![X17, X18, X19]:(~r2_hidden(X17,X18)|~m1_subset_1(X18,k1_zfmisc_1(X19))|~v1_xboole_0(X19)), inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[t5_subset])])).
% 0.19/0.45  cnf(c_0_103, plain, (r2_hidden(esk3_1(X1),k1_relat_1(X1))|v2_funct_1(X1)|~v1_relat_1(X1)|~v1_funct_1(X1)), inference(split_conjunct,[status(thm)],[c_0_96])).
% 0.19/0.45  cnf(c_0_104, negated_conjecture, (k1_relat_1(esk6_0)=esk4_0|~r1_tarski(esk4_0,k1_relat_1(esk6_0))), inference(spm,[status(thm)],[c_0_97, c_0_98])).
% 0.19/0.45  cnf(c_0_105, plain, (r1_tarski(esk4_0,X1)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_99, c_0_100]), c_0_101])])).
% 0.19/0.45  cnf(c_0_106, plain, (~r2_hidden(X1,X2)|~m1_subset_1(X2,k1_zfmisc_1(X3))|~v1_xboole_0(X3)), inference(split_conjunct,[status(thm)],[c_0_102])).
% 0.19/0.45  cnf(c_0_107, negated_conjecture, (r2_hidden(esk3_1(esk6_0),k1_relat_1(esk6_0))), inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_103, c_0_35]), c_0_91])]), c_0_63])).
% 0.19/0.45  cnf(c_0_108, negated_conjecture, (k1_relat_1(esk6_0)=esk4_0), inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_104, c_0_105])])).
% 0.19/0.45  cnf(c_0_109, plain, (~r2_hidden(X1,esk4_0)), inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_106, c_0_101]), c_0_81])])).
% 0.19/0.45  cnf(c_0_110, negated_conjecture, ($false), inference(sr,[status(thm)],[inference(rw,[status(thm)],[c_0_107, c_0_108]), c_0_109]), ['proof']).
% 0.19/0.45  # SZS output end CNFRefutation
% 0.19/0.45  # Proof object total steps             : 111
% 0.19/0.45  # Proof object clause steps            : 69
% 0.19/0.45  # Proof object formula steps           : 42
% 0.19/0.45  # Proof object conjectures             : 29
% 0.19/0.45  # Proof object clause conjectures      : 26
% 0.19/0.45  # Proof object formula conjectures     : 3
% 0.19/0.45  # Proof object initial clauses used    : 30
% 0.19/0.45  # Proof object initial formulas used   : 21
% 0.19/0.45  # Proof object generating inferences   : 26
% 0.19/0.45  # Proof object simplifying inferences  : 57
% 0.19/0.45  # Training examples: 0 positive, 0 negative
% 0.19/0.45  # Parsed axioms                        : 22
% 0.19/0.45  # Removed by relevancy pruning/SinE    : 0
% 0.19/0.45  # Initial clauses                      : 45
% 0.19/0.45  # Removed in clause preprocessing      : 1
% 0.19/0.45  # Initial clauses in saturation        : 44
% 0.19/0.45  # Processed clauses                    : 691
% 0.19/0.45  # ...of these trivial                  : 48
% 0.19/0.45  # ...subsumed                          : 281
% 0.19/0.45  # ...remaining for further processing  : 362
% 0.19/0.45  # Other redundant clauses eliminated   : 9
% 0.19/0.45  # Clauses deleted for lack of memory   : 0
% 0.19/0.45  # Backward-subsumed                    : 35
% 0.19/0.45  # Backward-rewritten                   : 108
% 0.19/0.45  # Generated clauses                    : 1532
% 0.19/0.45  # ...of the previous two non-trivial   : 1093
% 0.19/0.45  # Contextual simplify-reflections      : 9
% 0.19/0.45  # Paramodulations                      : 1522
% 0.19/0.45  # Factorizations                       : 0
% 0.19/0.45  # Equation resolutions                 : 10
% 0.19/0.45  # Propositional unsat checks           : 0
% 0.19/0.45  #    Propositional check models        : 0
% 0.19/0.45  #    Propositional check unsatisfiable : 0
% 0.19/0.45  #    Propositional clauses             : 0
% 0.19/0.45  #    Propositional clauses after purity: 0
% 0.19/0.45  #    Propositional unsat core size     : 0
% 0.19/0.45  #    Propositional preprocessing time  : 0.000
% 0.19/0.45  #    Propositional encoding time       : 0.000
% 0.19/0.45  #    Propositional solver time         : 0.000
% 0.19/0.45  #    Success case prop preproc time    : 0.000
% 0.19/0.45  #    Success case prop encoding time   : 0.000
% 0.19/0.45  #    Success case prop solver time     : 0.000
% 0.19/0.45  # Current number of processed clauses  : 171
% 0.19/0.45  #    Positive orientable unit clauses  : 39
% 0.19/0.45  #    Positive unorientable unit clauses: 0
% 0.19/0.45  #    Negative unit clauses             : 3
% 0.19/0.45  #    Non-unit-clauses                  : 129
% 0.19/0.45  # Current number of unprocessed clauses: 372
% 0.19/0.45  # ...number of literals in the above   : 1431
% 0.19/0.45  # Current number of archived formulas  : 0
% 0.19/0.45  # Current number of archived clauses   : 187
% 0.19/0.45  # Clause-clause subsumption calls (NU) : 8426
% 0.19/0.45  # Rec. Clause-clause subsumption calls : 5826
% 0.19/0.45  # Non-unit clause-clause subsumptions  : 270
% 0.19/0.45  # Unit Clause-clause subsumption calls : 413
% 0.19/0.45  # Rewrite failures with RHS unbound    : 0
% 0.19/0.45  # BW rewrite match attempts            : 21
% 0.19/0.45  # BW rewrite match successes           : 19
% 0.19/0.45  # Condensation attempts                : 0
% 0.19/0.45  # Condensation successes               : 0
% 0.19/0.45  # Termbank termtop insertions          : 21575
% 0.19/0.45  
% 0.19/0.45  # -------------------------------------------------
% 0.19/0.45  # User time                : 0.108 s
% 0.19/0.45  # System time              : 0.008 s
% 0.19/0.45  # Total time               : 0.116 s
% 0.19/0.45  # Maximum resident set size: 1608 pages
%------------------------------------------------------------------------------
