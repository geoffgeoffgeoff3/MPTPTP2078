%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.PdRngo2uoO

% Computer   : n002.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:08:23 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   79 ( 110 expanded)
%              Number of leaves         :   45 (  58 expanded)
%              Depth                    :   15
%              Number of atoms          :  531 ( 878 expanded)
%              Number of equality atoms :   24 (  41 expanded)
%              Maximal formula depth    :   16 (   6 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v2_pre_topc_type,type,(
    v2_pre_topc: $i > $o )).

thf(zip_tseitin_1_type,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(k2_yellow_1_type,type,(
    k2_yellow_1: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(v2_struct_0_type,type,(
    v2_struct_0: $i > $o )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(u1_struct_0_type,type,(
    u1_struct_0: $i > $i )).

thf(k3_tarski_type,type,(
    k3_tarski: $i > $i )).

thf(k4_yellow_0_type,type,(
    k4_yellow_0: $i > $i )).

thf(l1_pre_topc_type,type,(
    l1_pre_topc: $i > $o )).

thf(u1_pre_topc_type,type,(
    u1_pre_topc: $i > $i )).

thf(zip_tseitin_2_type,type,(
    zip_tseitin_2: $i > $i > $i > $o )).

thf(zip_tseitin_0_type,type,(
    zip_tseitin_0: $i > $i > $i > $o )).

thf(zip_tseitin_4_type,type,(
    zip_tseitin_4: $i > $i > $o )).

thf(zip_tseitin_3_type,type,(
    zip_tseitin_3: $i > $i > $o )).

thf(zip_tseitin_5_type,type,(
    zip_tseitin_5: $i > $i > $o )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(k9_subset_1_type,type,(
    k9_subset_1: $i > $i > $i > $i )).

thf(m1_setfam_1_type,type,(
    m1_setfam_1: $i > $i > $o )).

thf(k5_setfam_1_type,type,(
    k5_setfam_1: $i > $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(dt_u1_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ( m1_subset_1 @ ( u1_pre_topc @ A ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) ) )).

thf('0',plain,(
    ! [X37: $i] :
      ( ( m1_subset_1 @ ( u1_pre_topc @ X37 ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X37 ) ) ) )
      | ~ ( l1_pre_topc @ X37 ) ) ),
    inference(cnf,[status(esa)],[dt_u1_pre_topc])).

thf(redefinition_k5_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) )
     => ( ( k5_setfam_1 @ A @ B )
        = ( k3_tarski @ B ) ) ) )).

thf('1',plain,(
    ! [X8: $i,X9: $i] :
      ( ( ( k5_setfam_1 @ X9 @ X8 )
        = ( k3_tarski @ X8 ) )
      | ~ ( m1_subset_1 @ X8 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ X9 ) ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k5_setfam_1])).

thf('2',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ X0 )
      | ( ( k5_setfam_1 @ ( u1_struct_0 @ X0 ) @ ( u1_pre_topc @ X0 ) )
        = ( k3_tarski @ ( u1_pre_topc @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf(d1_pre_topc,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ( ( v2_pre_topc @ A )
      <=> ( ! [B: $i] :
              ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
             => ! [C: $i] :
                  ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
                 => ( ( ( r2_hidden @ C @ ( u1_pre_topc @ A ) )
                      & ( r2_hidden @ B @ ( u1_pre_topc @ A ) ) )
                   => ( r2_hidden @ ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ C ) @ ( u1_pre_topc @ A ) ) ) ) )
          & ! [B: $i] :
              ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
             => ( ( r1_tarski @ B @ ( u1_pre_topc @ A ) )
               => ( r2_hidden @ ( k5_setfam_1 @ ( u1_struct_0 @ A ) @ B ) @ ( u1_pre_topc @ A ) ) ) )
          & ( r2_hidden @ ( u1_struct_0 @ A ) @ ( u1_pre_topc @ A ) ) ) ) ) )).

thf(zf_stmt_0,type,(
    zip_tseitin_5: $i > $i > $o )).

thf(zf_stmt_1,axiom,(
    ! [B: $i,A: $i] :
      ( ( zip_tseitin_5 @ B @ A )
    <=> ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) )
       => ( zip_tseitin_4 @ B @ A ) ) ) )).

thf(zf_stmt_2,type,(
    zip_tseitin_4: $i > $i > $o )).

thf(zf_stmt_3,axiom,(
    ! [B: $i,A: $i] :
      ( ( zip_tseitin_4 @ B @ A )
    <=> ( ( r1_tarski @ B @ ( u1_pre_topc @ A ) )
       => ( r2_hidden @ ( k5_setfam_1 @ ( u1_struct_0 @ A ) @ B ) @ ( u1_pre_topc @ A ) ) ) ) )).

thf(zf_stmt_4,type,(
    zip_tseitin_3: $i > $i > $o )).

thf(zf_stmt_5,axiom,(
    ! [B: $i,A: $i] :
      ( ( zip_tseitin_3 @ B @ A )
    <=> ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
       => ! [C: $i] :
            ( zip_tseitin_2 @ C @ B @ A ) ) ) )).

thf(zf_stmt_6,type,(
    zip_tseitin_2: $i > $i > $i > $o )).

thf(zf_stmt_7,axiom,(
    ! [C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_2 @ C @ B @ A )
    <=> ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) )
       => ( zip_tseitin_1 @ C @ B @ A ) ) ) )).

thf(zf_stmt_8,type,(
    zip_tseitin_1: $i > $i > $i > $o )).

thf(zf_stmt_9,axiom,(
    ! [C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_1 @ C @ B @ A )
    <=> ( ( zip_tseitin_0 @ C @ B @ A )
       => ( r2_hidden @ ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ C ) @ ( u1_pre_topc @ A ) ) ) ) )).

thf(zf_stmt_10,type,(
    zip_tseitin_0: $i > $i > $i > $o )).

thf(zf_stmt_11,axiom,(
    ! [C: $i,B: $i,A: $i] :
      ( ( zip_tseitin_0 @ C @ B @ A )
    <=> ( ( r2_hidden @ B @ ( u1_pre_topc @ A ) )
        & ( r2_hidden @ C @ ( u1_pre_topc @ A ) ) ) ) )).

thf(zf_stmt_12,axiom,(
    ! [A: $i] :
      ( ( l1_pre_topc @ A )
     => ( ( v2_pre_topc @ A )
      <=> ( ( r2_hidden @ ( u1_struct_0 @ A ) @ ( u1_pre_topc @ A ) )
          & ! [B: $i] :
              ( zip_tseitin_5 @ B @ A )
          & ! [B: $i] :
              ( zip_tseitin_3 @ B @ A ) ) ) ) )).

thf('3',plain,(
    ! [X34: $i] :
      ( ~ ( v2_pre_topc @ X34 )
      | ( r2_hidden @ ( u1_struct_0 @ X34 ) @ ( u1_pre_topc @ X34 ) )
      | ~ ( l1_pre_topc @ X34 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_12])).

thf(l49_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_hidden @ A @ B )
     => ( r1_tarski @ A @ ( k3_tarski @ B ) ) ) )).

thf('4',plain,(
    ! [X3: $i,X4: $i] :
      ( ( r1_tarski @ X3 @ ( k3_tarski @ X4 ) )
      | ~ ( r2_hidden @ X3 @ X4 ) ) ),
    inference(cnf,[status(esa)],[l49_zfmisc_1])).

thf('5',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( r1_tarski @ ( u1_struct_0 @ X0 ) @ ( k3_tarski @ ( u1_pre_topc @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf(d12_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_setfam_1 @ B @ A )
    <=> ( r1_tarski @ A @ ( k3_tarski @ B ) ) ) )).

thf('6',plain,(
    ! [X5: $i,X7: $i] :
      ( ( m1_setfam_1 @ X7 @ X5 )
      | ~ ( r1_tarski @ X5 @ ( k3_tarski @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[d12_setfam_1])).

thf('7',plain,(
    ! [X0: $i] :
      ( ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( m1_setfam_1 @ ( u1_pre_topc @ X0 ) @ ( u1_struct_0 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['5','6'])).

thf('8',plain,(
    ! [X37: $i] :
      ( ( m1_subset_1 @ ( u1_pre_topc @ X37 ) @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ X37 ) ) ) )
      | ~ ( l1_pre_topc @ X37 ) ) ),
    inference(cnf,[status(esa)],[dt_u1_pre_topc])).

thf(t60_setfam_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) )
     => ( ( m1_setfam_1 @ B @ A )
      <=> ( ( k5_setfam_1 @ A @ B )
          = A ) ) ) )).

thf('9',plain,(
    ! [X10: $i,X11: $i] :
      ( ~ ( m1_setfam_1 @ X11 @ X10 )
      | ( ( k5_setfam_1 @ X10 @ X11 )
        = X10 )
      | ~ ( m1_subset_1 @ X11 @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ X10 ) ) ) ) ),
    inference(cnf,[status(esa)],[t60_setfam_1])).

thf('10',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ X0 )
      | ( ( k5_setfam_1 @ ( u1_struct_0 @ X0 ) @ ( u1_pre_topc @ X0 ) )
        = ( u1_struct_0 @ X0 ) )
      | ~ ( m1_setfam_1 @ ( u1_pre_topc @ X0 ) @ ( u1_struct_0 @ X0 ) ) ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf('11',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( ( k5_setfam_1 @ ( u1_struct_0 @ X0 ) @ ( u1_pre_topc @ X0 ) )
        = ( u1_struct_0 @ X0 ) )
      | ~ ( l1_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['7','10'])).

thf('12',plain,(
    ! [X0: $i] :
      ( ( ( k5_setfam_1 @ ( u1_struct_0 @ X0 ) @ ( u1_pre_topc @ X0 ) )
        = ( u1_struct_0 @ X0 ) )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 ) ) ),
    inference(simplify,[status(thm)],['11'])).

thf('13',plain,(
    ! [X0: $i] :
      ( ( ( k3_tarski @ ( u1_pre_topc @ X0 ) )
        = ( u1_struct_0 @ X0 ) )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 ) ) ),
    inference('sup+',[status(thm)],['2','12'])).

thf('14',plain,(
    ! [X0: $i] :
      ( ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( ( k3_tarski @ ( u1_pre_topc @ X0 ) )
        = ( u1_struct_0 @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['13'])).

thf('15',plain,(
    ! [X34: $i] :
      ( ~ ( v2_pre_topc @ X34 )
      | ( r2_hidden @ ( u1_struct_0 @ X34 ) @ ( u1_pre_topc @ X34 ) )
      | ~ ( l1_pre_topc @ X34 ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_12])).

thf('16',plain,(
    ! [X0: $i] :
      ( ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 )
      | ( ( k3_tarski @ ( u1_pre_topc @ X0 ) )
        = ( u1_struct_0 @ X0 ) ) ) ),
    inference(simplify,[status(thm)],['13'])).

thf(t14_yellow_1,axiom,(
    ! [A: $i] :
      ( ~ ( v1_xboole_0 @ A )
     => ( ( r2_hidden @ ( k3_tarski @ A ) @ A )
       => ( ( k4_yellow_0 @ ( k2_yellow_1 @ A ) )
          = ( k3_tarski @ A ) ) ) ) )).

thf('17',plain,(
    ! [X38: $i] :
      ( ~ ( r2_hidden @ ( k3_tarski @ X38 ) @ X38 )
      | ( ( k4_yellow_0 @ ( k2_yellow_1 @ X38 ) )
        = ( k3_tarski @ X38 ) )
      | ( v1_xboole_0 @ X38 ) ) ),
    inference(cnf,[status(esa)],[t14_yellow_1])).

thf(d1_xboole_0,axiom,(
    ! [A: $i] :
      ( ( v1_xboole_0 @ A )
    <=> ! [B: $i] :
          ~ ( r2_hidden @ B @ A ) ) )).

thf('18',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[d1_xboole_0])).

thf('19',plain,(
    ! [X38: $i] :
      ( ( ( k4_yellow_0 @ ( k2_yellow_1 @ X38 ) )
        = ( k3_tarski @ X38 ) )
      | ~ ( r2_hidden @ ( k3_tarski @ X38 ) @ X38 ) ) ),
    inference(clc,[status(thm)],['17','18'])).

thf('20',plain,(
    ! [X0: $i] :
      ( ~ ( r2_hidden @ ( u1_struct_0 @ X0 ) @ ( u1_pre_topc @ X0 ) )
      | ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( ( k4_yellow_0 @ ( k2_yellow_1 @ ( u1_pre_topc @ X0 ) ) )
        = ( k3_tarski @ ( u1_pre_topc @ X0 ) ) ) ) ),
    inference('sup-',[status(thm)],['16','19'])).

thf('21',plain,(
    ! [X0: $i] :
      ( ~ ( l1_pre_topc @ X0 )
      | ~ ( v2_pre_topc @ X0 )
      | ( ( k4_yellow_0 @ ( k2_yellow_1 @ ( u1_pre_topc @ X0 ) ) )
        = ( k3_tarski @ ( u1_pre_topc @ X0 ) ) )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 ) ) ),
    inference('sup-',[status(thm)],['15','20'])).

thf('22',plain,(
    ! [X0: $i] :
      ( ( ( k4_yellow_0 @ ( k2_yellow_1 @ ( u1_pre_topc @ X0 ) ) )
        = ( k3_tarski @ ( u1_pre_topc @ X0 ) ) )
      | ~ ( v2_pre_topc @ X0 )
      | ~ ( l1_pre_topc @ X0 ) ) ),
    inference(simplify,[status(thm)],['21'])).

thf(t24_yellow_1,conjecture,(
    ! [A: $i] :
      ( ( ~ ( v2_struct_0 @ A )
        & ( v2_pre_topc @ A )
        & ( l1_pre_topc @ A ) )
     => ( ( k4_yellow_0 @ ( k2_yellow_1 @ ( u1_pre_topc @ A ) ) )
        = ( u1_struct_0 @ A ) ) ) )).

thf(zf_stmt_13,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ~ ( v2_struct_0 @ A )
          & ( v2_pre_topc @ A )
          & ( l1_pre_topc @ A ) )
       => ( ( k4_yellow_0 @ ( k2_yellow_1 @ ( u1_pre_topc @ A ) ) )
          = ( u1_struct_0 @ A ) ) ) ),
    inference('cnf.neg',[status(esa)],[t24_yellow_1])).

thf('23',plain,(
    ( k4_yellow_0 @ ( k2_yellow_1 @ ( u1_pre_topc @ sk_A ) ) )
 != ( u1_struct_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_13])).

thf('24',plain,
    ( ( ( k3_tarski @ ( u1_pre_topc @ sk_A ) )
     != ( u1_struct_0 @ sk_A ) )
    | ~ ( l1_pre_topc @ sk_A )
    | ~ ( v2_pre_topc @ sk_A ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_13])).

thf('26',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_13])).

thf('27',plain,(
    ( k3_tarski @ ( u1_pre_topc @ sk_A ) )
 != ( u1_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['24','25','26'])).

thf('28',plain,
    ( ( ( u1_struct_0 @ sk_A )
     != ( u1_struct_0 @ sk_A ) )
    | ~ ( l1_pre_topc @ sk_A )
    | ~ ( v2_pre_topc @ sk_A ) ),
    inference('sup-',[status(thm)],['14','27'])).

thf('29',plain,(
    l1_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_13])).

thf('30',plain,(
    v2_pre_topc @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_13])).

thf('31',plain,(
    ( u1_struct_0 @ sk_A )
 != ( u1_struct_0 @ sk_A ) ),
    inference(demod,[status(thm)],['28','29','30'])).

thf('32',plain,(
    $false ),
    inference(simplify,[status(thm)],['31'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.04/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.04/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.PdRngo2uoO
% 0.13/0.34  % Computer   : n002.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 11:32:52 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 0.20/0.50  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.20/0.50  % Solved by: fo/fo7.sh
% 0.20/0.50  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.50  % done 95 iterations in 0.049s
% 0.20/0.50  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.20/0.50  % SZS output start Refutation
% 0.20/0.50  thf(v2_pre_topc_type, type, v2_pre_topc: $i > $o).
% 0.20/0.50  thf(zip_tseitin_1_type, type, zip_tseitin_1: $i > $i > $i > $o).
% 0.20/0.50  thf(k2_yellow_1_type, type, k2_yellow_1: $i > $i).
% 0.20/0.50  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.50  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.50  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.50  thf(v2_struct_0_type, type, v2_struct_0: $i > $o).
% 0.20/0.50  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.20/0.50  thf(u1_struct_0_type, type, u1_struct_0: $i > $i).
% 0.20/0.50  thf(k3_tarski_type, type, k3_tarski: $i > $i).
% 0.20/0.50  thf(k4_yellow_0_type, type, k4_yellow_0: $i > $i).
% 0.20/0.50  thf(l1_pre_topc_type, type, l1_pre_topc: $i > $o).
% 0.20/0.50  thf(u1_pre_topc_type, type, u1_pre_topc: $i > $i).
% 0.20/0.50  thf(zip_tseitin_2_type, type, zip_tseitin_2: $i > $i > $i > $o).
% 0.20/0.50  thf(zip_tseitin_0_type, type, zip_tseitin_0: $i > $i > $i > $o).
% 0.20/0.50  thf(zip_tseitin_4_type, type, zip_tseitin_4: $i > $i > $o).
% 0.20/0.50  thf(zip_tseitin_3_type, type, zip_tseitin_3: $i > $i > $o).
% 0.20/0.50  thf(zip_tseitin_5_type, type, zip_tseitin_5: $i > $i > $o).
% 0.20/0.50  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.50  thf(k9_subset_1_type, type, k9_subset_1: $i > $i > $i > $i).
% 0.20/0.50  thf(m1_setfam_1_type, type, m1_setfam_1: $i > $i > $o).
% 0.20/0.50  thf(k5_setfam_1_type, type, k5_setfam_1: $i > $i > $i).
% 0.20/0.50  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.20/0.50  thf(dt_u1_pre_topc, axiom,
% 0.20/0.50    (![A:$i]:
% 0.20/0.50     ( ( l1_pre_topc @ A ) =>
% 0.20/0.50       ( m1_subset_1 @
% 0.20/0.50         ( u1_pre_topc @ A ) @ 
% 0.20/0.50         ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) ))).
% 0.20/0.50  thf('0', plain,
% 0.20/0.50      (![X37 : $i]:
% 0.20/0.50         ((m1_subset_1 @ (u1_pre_topc @ X37) @ 
% 0.20/0.50           (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X37))))
% 0.20/0.50          | ~ (l1_pre_topc @ X37))),
% 0.20/0.50      inference('cnf', [status(esa)], [dt_u1_pre_topc])).
% 0.20/0.50  thf(redefinition_k5_setfam_1, axiom,
% 0.20/0.50    (![A:$i,B:$i]:
% 0.20/0.50     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.20/0.50       ( ( k5_setfam_1 @ A @ B ) = ( k3_tarski @ B ) ) ))).
% 0.20/0.50  thf('1', plain,
% 0.20/0.50      (![X8 : $i, X9 : $i]:
% 0.20/0.50         (((k5_setfam_1 @ X9 @ X8) = (k3_tarski @ X8))
% 0.20/0.50          | ~ (m1_subset_1 @ X8 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ X9))))),
% 0.20/0.50      inference('cnf', [status(esa)], [redefinition_k5_setfam_1])).
% 0.20/0.50  thf('2', plain,
% 0.20/0.50      (![X0 : $i]:
% 0.20/0.50         (~ (l1_pre_topc @ X0)
% 0.20/0.50          | ((k5_setfam_1 @ (u1_struct_0 @ X0) @ (u1_pre_topc @ X0))
% 0.20/0.50              = (k3_tarski @ (u1_pre_topc @ X0))))),
% 0.20/0.50      inference('sup-', [status(thm)], ['0', '1'])).
% 0.20/0.50  thf(d1_pre_topc, axiom,
% 0.20/0.50    (![A:$i]:
% 0.20/0.50     ( ( l1_pre_topc @ A ) =>
% 0.20/0.50       ( ( v2_pre_topc @ A ) <=>
% 0.20/0.50         ( ( ![B:$i]:
% 0.20/0.50             ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.50               ( ![C:$i]:
% 0.20/0.50                 ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.50                   ( ( ( r2_hidden @ C @ ( u1_pre_topc @ A ) ) & 
% 0.20/0.50                       ( r2_hidden @ B @ ( u1_pre_topc @ A ) ) ) =>
% 0.20/0.50                     ( r2_hidden @
% 0.20/0.50                       ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ C ) @ 
% 0.20/0.50                       ( u1_pre_topc @ A ) ) ) ) ) ) ) & 
% 0.20/0.50           ( ![B:$i]:
% 0.20/0.50             ( ( m1_subset_1 @
% 0.20/0.50                 B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.20/0.50               ( ( r1_tarski @ B @ ( u1_pre_topc @ A ) ) =>
% 0.20/0.50                 ( r2_hidden @
% 0.20/0.50                   ( k5_setfam_1 @ ( u1_struct_0 @ A ) @ B ) @ 
% 0.20/0.50                   ( u1_pre_topc @ A ) ) ) ) ) & 
% 0.20/0.50           ( r2_hidden @ ( u1_struct_0 @ A ) @ ( u1_pre_topc @ A ) ) ) ) ))).
% 0.20/0.50  thf(zf_stmt_0, type, zip_tseitin_5 : $i > $i > $o).
% 0.20/0.50  thf(zf_stmt_1, axiom,
% 0.20/0.50    (![B:$i,A:$i]:
% 0.20/0.50     ( ( zip_tseitin_5 @ B @ A ) <=>
% 0.20/0.50       ( ( m1_subset_1 @
% 0.20/0.50           B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) ) =>
% 0.20/0.50         ( zip_tseitin_4 @ B @ A ) ) ))).
% 0.20/0.50  thf(zf_stmt_2, type, zip_tseitin_4 : $i > $i > $o).
% 0.20/0.50  thf(zf_stmt_3, axiom,
% 0.20/0.50    (![B:$i,A:$i]:
% 0.20/0.50     ( ( zip_tseitin_4 @ B @ A ) <=>
% 0.20/0.50       ( ( r1_tarski @ B @ ( u1_pre_topc @ A ) ) =>
% 0.20/0.50         ( r2_hidden @
% 0.20/0.50           ( k5_setfam_1 @ ( u1_struct_0 @ A ) @ B ) @ ( u1_pre_topc @ A ) ) ) ))).
% 0.20/0.50  thf(zf_stmt_4, type, zip_tseitin_3 : $i > $i > $o).
% 0.20/0.50  thf(zf_stmt_5, axiom,
% 0.20/0.50    (![B:$i,A:$i]:
% 0.20/0.50     ( ( zip_tseitin_3 @ B @ A ) <=>
% 0.20/0.50       ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.50         ( ![C:$i]: ( zip_tseitin_2 @ C @ B @ A ) ) ) ))).
% 0.20/0.50  thf(zf_stmt_6, type, zip_tseitin_2 : $i > $i > $i > $o).
% 0.20/0.50  thf(zf_stmt_7, axiom,
% 0.20/0.50    (![C:$i,B:$i,A:$i]:
% 0.20/0.50     ( ( zip_tseitin_2 @ C @ B @ A ) <=>
% 0.20/0.50       ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ ( u1_struct_0 @ A ) ) ) =>
% 0.20/0.50         ( zip_tseitin_1 @ C @ B @ A ) ) ))).
% 0.20/0.50  thf(zf_stmt_8, type, zip_tseitin_1 : $i > $i > $i > $o).
% 0.20/0.50  thf(zf_stmt_9, axiom,
% 0.20/0.50    (![C:$i,B:$i,A:$i]:
% 0.20/0.50     ( ( zip_tseitin_1 @ C @ B @ A ) <=>
% 0.20/0.50       ( ( zip_tseitin_0 @ C @ B @ A ) =>
% 0.20/0.50         ( r2_hidden @
% 0.20/0.50           ( k9_subset_1 @ ( u1_struct_0 @ A ) @ B @ C ) @ ( u1_pre_topc @ A ) ) ) ))).
% 0.20/0.50  thf(zf_stmt_10, type, zip_tseitin_0 : $i > $i > $i > $o).
% 0.20/0.50  thf(zf_stmt_11, axiom,
% 0.20/0.50    (![C:$i,B:$i,A:$i]:
% 0.20/0.50     ( ( zip_tseitin_0 @ C @ B @ A ) <=>
% 0.20/0.50       ( ( r2_hidden @ B @ ( u1_pre_topc @ A ) ) & 
% 0.20/0.50         ( r2_hidden @ C @ ( u1_pre_topc @ A ) ) ) ))).
% 0.20/0.50  thf(zf_stmt_12, axiom,
% 0.20/0.50    (![A:$i]:
% 0.20/0.50     ( ( l1_pre_topc @ A ) =>
% 0.20/0.50       ( ( v2_pre_topc @ A ) <=>
% 0.20/0.50         ( ( r2_hidden @ ( u1_struct_0 @ A ) @ ( u1_pre_topc @ A ) ) & 
% 0.20/0.50           ( ![B:$i]: ( zip_tseitin_5 @ B @ A ) ) & 
% 0.20/0.50           ( ![B:$i]: ( zip_tseitin_3 @ B @ A ) ) ) ) ))).
% 0.20/0.50  thf('3', plain,
% 0.20/0.50      (![X34 : $i]:
% 0.20/0.50         (~ (v2_pre_topc @ X34)
% 0.20/0.50          | (r2_hidden @ (u1_struct_0 @ X34) @ (u1_pre_topc @ X34))
% 0.20/0.50          | ~ (l1_pre_topc @ X34))),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_12])).
% 0.20/0.50  thf(l49_zfmisc_1, axiom,
% 0.20/0.50    (![A:$i,B:$i]:
% 0.20/0.50     ( ( r2_hidden @ A @ B ) => ( r1_tarski @ A @ ( k3_tarski @ B ) ) ))).
% 0.20/0.50  thf('4', plain,
% 0.20/0.50      (![X3 : $i, X4 : $i]:
% 0.20/0.50         ((r1_tarski @ X3 @ (k3_tarski @ X4)) | ~ (r2_hidden @ X3 @ X4))),
% 0.20/0.50      inference('cnf', [status(esa)], [l49_zfmisc_1])).
% 0.20/0.50  thf('5', plain,
% 0.20/0.50      (![X0 : $i]:
% 0.20/0.50         (~ (l1_pre_topc @ X0)
% 0.20/0.50          | ~ (v2_pre_topc @ X0)
% 0.20/0.50          | (r1_tarski @ (u1_struct_0 @ X0) @ (k3_tarski @ (u1_pre_topc @ X0))))),
% 0.20/0.50      inference('sup-', [status(thm)], ['3', '4'])).
% 0.20/0.50  thf(d12_setfam_1, axiom,
% 0.20/0.50    (![A:$i,B:$i]:
% 0.20/0.50     ( ( m1_setfam_1 @ B @ A ) <=> ( r1_tarski @ A @ ( k3_tarski @ B ) ) ))).
% 0.20/0.50  thf('6', plain,
% 0.20/0.50      (![X5 : $i, X7 : $i]:
% 0.20/0.50         ((m1_setfam_1 @ X7 @ X5) | ~ (r1_tarski @ X5 @ (k3_tarski @ X7)))),
% 0.20/0.50      inference('cnf', [status(esa)], [d12_setfam_1])).
% 0.20/0.50  thf('7', plain,
% 0.20/0.50      (![X0 : $i]:
% 0.20/0.50         (~ (v2_pre_topc @ X0)
% 0.20/0.50          | ~ (l1_pre_topc @ X0)
% 0.20/0.50          | (m1_setfam_1 @ (u1_pre_topc @ X0) @ (u1_struct_0 @ X0)))),
% 0.20/0.50      inference('sup-', [status(thm)], ['5', '6'])).
% 0.20/0.50  thf('8', plain,
% 0.20/0.50      (![X37 : $i]:
% 0.20/0.50         ((m1_subset_1 @ (u1_pre_topc @ X37) @ 
% 0.20/0.50           (k1_zfmisc_1 @ (k1_zfmisc_1 @ (u1_struct_0 @ X37))))
% 0.20/0.50          | ~ (l1_pre_topc @ X37))),
% 0.20/0.50      inference('cnf', [status(esa)], [dt_u1_pre_topc])).
% 0.20/0.50  thf(t60_setfam_1, axiom,
% 0.20/0.50    (![A:$i,B:$i]:
% 0.20/0.50     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.20/0.50       ( ( m1_setfam_1 @ B @ A ) <=> ( ( k5_setfam_1 @ A @ B ) = ( A ) ) ) ))).
% 0.20/0.50  thf('9', plain,
% 0.20/0.50      (![X10 : $i, X11 : $i]:
% 0.20/0.50         (~ (m1_setfam_1 @ X11 @ X10)
% 0.20/0.50          | ((k5_setfam_1 @ X10 @ X11) = (X10))
% 0.20/0.50          | ~ (m1_subset_1 @ X11 @ (k1_zfmisc_1 @ (k1_zfmisc_1 @ X10))))),
% 0.20/0.50      inference('cnf', [status(esa)], [t60_setfam_1])).
% 0.20/0.50  thf('10', plain,
% 0.20/0.50      (![X0 : $i]:
% 0.20/0.50         (~ (l1_pre_topc @ X0)
% 0.20/0.50          | ((k5_setfam_1 @ (u1_struct_0 @ X0) @ (u1_pre_topc @ X0))
% 0.20/0.50              = (u1_struct_0 @ X0))
% 0.20/0.50          | ~ (m1_setfam_1 @ (u1_pre_topc @ X0) @ (u1_struct_0 @ X0)))),
% 0.20/0.50      inference('sup-', [status(thm)], ['8', '9'])).
% 0.20/0.50  thf('11', plain,
% 0.20/0.50      (![X0 : $i]:
% 0.20/0.50         (~ (l1_pre_topc @ X0)
% 0.20/0.50          | ~ (v2_pre_topc @ X0)
% 0.20/0.50          | ((k5_setfam_1 @ (u1_struct_0 @ X0) @ (u1_pre_topc @ X0))
% 0.20/0.50              = (u1_struct_0 @ X0))
% 0.20/0.50          | ~ (l1_pre_topc @ X0))),
% 0.20/0.50      inference('sup-', [status(thm)], ['7', '10'])).
% 0.20/0.50  thf('12', plain,
% 0.20/0.50      (![X0 : $i]:
% 0.20/0.50         (((k5_setfam_1 @ (u1_struct_0 @ X0) @ (u1_pre_topc @ X0))
% 0.20/0.50            = (u1_struct_0 @ X0))
% 0.20/0.50          | ~ (v2_pre_topc @ X0)
% 0.20/0.50          | ~ (l1_pre_topc @ X0))),
% 0.20/0.50      inference('simplify', [status(thm)], ['11'])).
% 0.20/0.50  thf('13', plain,
% 0.20/0.50      (![X0 : $i]:
% 0.20/0.50         (((k3_tarski @ (u1_pre_topc @ X0)) = (u1_struct_0 @ X0))
% 0.20/0.50          | ~ (l1_pre_topc @ X0)
% 0.20/0.50          | ~ (l1_pre_topc @ X0)
% 0.20/0.50          | ~ (v2_pre_topc @ X0))),
% 0.20/0.50      inference('sup+', [status(thm)], ['2', '12'])).
% 0.20/0.50  thf('14', plain,
% 0.20/0.50      (![X0 : $i]:
% 0.20/0.50         (~ (v2_pre_topc @ X0)
% 0.20/0.50          | ~ (l1_pre_topc @ X0)
% 0.20/0.50          | ((k3_tarski @ (u1_pre_topc @ X0)) = (u1_struct_0 @ X0)))),
% 0.20/0.50      inference('simplify', [status(thm)], ['13'])).
% 0.20/0.50  thf('15', plain,
% 0.20/0.50      (![X34 : $i]:
% 0.20/0.50         (~ (v2_pre_topc @ X34)
% 0.20/0.50          | (r2_hidden @ (u1_struct_0 @ X34) @ (u1_pre_topc @ X34))
% 0.20/0.50          | ~ (l1_pre_topc @ X34))),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_12])).
% 0.20/0.50  thf('16', plain,
% 0.20/0.50      (![X0 : $i]:
% 0.20/0.50         (~ (v2_pre_topc @ X0)
% 0.20/0.50          | ~ (l1_pre_topc @ X0)
% 0.20/0.50          | ((k3_tarski @ (u1_pre_topc @ X0)) = (u1_struct_0 @ X0)))),
% 0.20/0.50      inference('simplify', [status(thm)], ['13'])).
% 0.20/0.50  thf(t14_yellow_1, axiom,
% 0.20/0.50    (![A:$i]:
% 0.20/0.50     ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.20/0.50       ( ( r2_hidden @ ( k3_tarski @ A ) @ A ) =>
% 0.20/0.50         ( ( k4_yellow_0 @ ( k2_yellow_1 @ A ) ) = ( k3_tarski @ A ) ) ) ))).
% 0.20/0.50  thf('17', plain,
% 0.20/0.50      (![X38 : $i]:
% 0.20/0.50         (~ (r2_hidden @ (k3_tarski @ X38) @ X38)
% 0.20/0.50          | ((k4_yellow_0 @ (k2_yellow_1 @ X38)) = (k3_tarski @ X38))
% 0.20/0.50          | (v1_xboole_0 @ X38))),
% 0.20/0.50      inference('cnf', [status(esa)], [t14_yellow_1])).
% 0.20/0.50  thf(d1_xboole_0, axiom,
% 0.20/0.50    (![A:$i]:
% 0.20/0.50     ( ( v1_xboole_0 @ A ) <=> ( ![B:$i]: ( ~( r2_hidden @ B @ A ) ) ) ))).
% 0.20/0.50  thf('18', plain,
% 0.20/0.50      (![X0 : $i, X1 : $i]: (~ (r2_hidden @ X0 @ X1) | ~ (v1_xboole_0 @ X1))),
% 0.20/0.50      inference('cnf', [status(esa)], [d1_xboole_0])).
% 0.20/0.50  thf('19', plain,
% 0.20/0.50      (![X38 : $i]:
% 0.20/0.50         (((k4_yellow_0 @ (k2_yellow_1 @ X38)) = (k3_tarski @ X38))
% 0.20/0.50          | ~ (r2_hidden @ (k3_tarski @ X38) @ X38))),
% 0.20/0.50      inference('clc', [status(thm)], ['17', '18'])).
% 0.20/0.50  thf('20', plain,
% 0.20/0.50      (![X0 : $i]:
% 0.20/0.50         (~ (r2_hidden @ (u1_struct_0 @ X0) @ (u1_pre_topc @ X0))
% 0.20/0.50          | ~ (l1_pre_topc @ X0)
% 0.20/0.50          | ~ (v2_pre_topc @ X0)
% 0.20/0.50          | ((k4_yellow_0 @ (k2_yellow_1 @ (u1_pre_topc @ X0)))
% 0.20/0.50              = (k3_tarski @ (u1_pre_topc @ X0))))),
% 0.20/0.50      inference('sup-', [status(thm)], ['16', '19'])).
% 0.20/0.50  thf('21', plain,
% 0.20/0.50      (![X0 : $i]:
% 0.20/0.50         (~ (l1_pre_topc @ X0)
% 0.20/0.50          | ~ (v2_pre_topc @ X0)
% 0.20/0.50          | ((k4_yellow_0 @ (k2_yellow_1 @ (u1_pre_topc @ X0)))
% 0.20/0.50              = (k3_tarski @ (u1_pre_topc @ X0)))
% 0.20/0.50          | ~ (v2_pre_topc @ X0)
% 0.20/0.50          | ~ (l1_pre_topc @ X0))),
% 0.20/0.50      inference('sup-', [status(thm)], ['15', '20'])).
% 0.20/0.50  thf('22', plain,
% 0.20/0.50      (![X0 : $i]:
% 0.20/0.50         (((k4_yellow_0 @ (k2_yellow_1 @ (u1_pre_topc @ X0)))
% 0.20/0.50            = (k3_tarski @ (u1_pre_topc @ X0)))
% 0.20/0.50          | ~ (v2_pre_topc @ X0)
% 0.20/0.50          | ~ (l1_pre_topc @ X0))),
% 0.20/0.50      inference('simplify', [status(thm)], ['21'])).
% 0.20/0.50  thf(t24_yellow_1, conjecture,
% 0.20/0.50    (![A:$i]:
% 0.20/0.50     ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & ( l1_pre_topc @ A ) ) =>
% 0.20/0.50       ( ( k4_yellow_0 @ ( k2_yellow_1 @ ( u1_pre_topc @ A ) ) ) =
% 0.20/0.50         ( u1_struct_0 @ A ) ) ))).
% 0.20/0.50  thf(zf_stmt_13, negated_conjecture,
% 0.20/0.50    (~( ![A:$i]:
% 0.20/0.50        ( ( ( ~( v2_struct_0 @ A ) ) & ( v2_pre_topc @ A ) & 
% 0.20/0.50            ( l1_pre_topc @ A ) ) =>
% 0.20/0.50          ( ( k4_yellow_0 @ ( k2_yellow_1 @ ( u1_pre_topc @ A ) ) ) =
% 0.20/0.50            ( u1_struct_0 @ A ) ) ) )),
% 0.20/0.50    inference('cnf.neg', [status(esa)], [t24_yellow_1])).
% 0.20/0.50  thf('23', plain,
% 0.20/0.50      (((k4_yellow_0 @ (k2_yellow_1 @ (u1_pre_topc @ sk_A)))
% 0.20/0.50         != (u1_struct_0 @ sk_A))),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_13])).
% 0.20/0.50  thf('24', plain,
% 0.20/0.50      ((((k3_tarski @ (u1_pre_topc @ sk_A)) != (u1_struct_0 @ sk_A))
% 0.20/0.50        | ~ (l1_pre_topc @ sk_A)
% 0.20/0.50        | ~ (v2_pre_topc @ sk_A))),
% 0.20/0.50      inference('sup-', [status(thm)], ['22', '23'])).
% 0.20/0.50  thf('25', plain, ((l1_pre_topc @ sk_A)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_13])).
% 0.20/0.50  thf('26', plain, ((v2_pre_topc @ sk_A)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_13])).
% 0.20/0.50  thf('27', plain,
% 0.20/0.50      (((k3_tarski @ (u1_pre_topc @ sk_A)) != (u1_struct_0 @ sk_A))),
% 0.20/0.50      inference('demod', [status(thm)], ['24', '25', '26'])).
% 0.20/0.50  thf('28', plain,
% 0.20/0.50      ((((u1_struct_0 @ sk_A) != (u1_struct_0 @ sk_A))
% 0.20/0.50        | ~ (l1_pre_topc @ sk_A)
% 0.20/0.50        | ~ (v2_pre_topc @ sk_A))),
% 0.20/0.50      inference('sup-', [status(thm)], ['14', '27'])).
% 0.20/0.50  thf('29', plain, ((l1_pre_topc @ sk_A)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_13])).
% 0.20/0.50  thf('30', plain, ((v2_pre_topc @ sk_A)),
% 0.20/0.50      inference('cnf', [status(esa)], [zf_stmt_13])).
% 0.20/0.50  thf('31', plain, (((u1_struct_0 @ sk_A) != (u1_struct_0 @ sk_A))),
% 0.20/0.50      inference('demod', [status(thm)], ['28', '29', '30'])).
% 0.20/0.50  thf('32', plain, ($false), inference('simplify', [status(thm)], ['31'])).
% 0.20/0.50  
% 0.20/0.50  % SZS output end Refutation
% 0.20/0.50  
% 0.20/0.51  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
