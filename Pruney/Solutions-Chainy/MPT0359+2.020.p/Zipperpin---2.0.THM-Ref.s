%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.dAhwi23g9Q

% Computer   : n021.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:37:33 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :  114 ( 252 expanded)
%              Number of leaves         :   30 (  82 expanded)
%              Depth                    :   18
%              Number of atoms          :  749 (2019 expanded)
%              Number of equality atoms :   89 ( 230 expanded)
%              Maximal formula depth    :   10 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k5_xboole_0_type,type,(
    k5_xboole_0: $i > $i > $i )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(k2_subset_1_type,type,(
    k2_subset_1: $i > $i )).

thf(k3_subset_1_type,type,(
    k3_subset_1: $i > $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(t39_subset_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( r1_tarski @ ( k3_subset_1 @ A @ B ) @ B )
      <=> ( B
          = ( k2_subset_1 @ A ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
       => ( ( r1_tarski @ ( k3_subset_1 @ A @ B ) @ B )
        <=> ( B
            = ( k2_subset_1 @ A ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t39_subset_1])).

thf('0',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d2_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( v1_xboole_0 @ A )
       => ( ( m1_subset_1 @ B @ A )
        <=> ( v1_xboole_0 @ B ) ) )
      & ( ~ ( v1_xboole_0 @ A )
       => ( ( m1_subset_1 @ B @ A )
        <=> ( r2_hidden @ B @ A ) ) ) ) )).

thf('1',plain,(
    ! [X24: $i,X25: $i] :
      ( ~ ( m1_subset_1 @ X24 @ X25 )
      | ( r2_hidden @ X24 @ X25 )
      | ( v1_xboole_0 @ X25 ) ) ),
    inference(cnf,[status(esa)],[d2_subset_1])).

thf('2',plain,
    ( ( v1_xboole_0 @ ( k1_zfmisc_1 @ sk_A ) )
    | ( r2_hidden @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf(fc1_subset_1,axiom,(
    ! [A: $i] :
      ~ ( v1_xboole_0 @ ( k1_zfmisc_1 @ A ) ) )).

thf('3',plain,(
    ! [X30: $i] :
      ~ ( v1_xboole_0 @ ( k1_zfmisc_1 @ X30 ) ) ),
    inference(cnf,[status(esa)],[fc1_subset_1])).

thf('4',plain,(
    r2_hidden @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(clc,[status(thm)],['2','3'])).

thf(d1_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k1_zfmisc_1 @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ( r1_tarski @ C @ A ) ) ) )).

thf('5',plain,(
    ! [X20: $i,X21: $i,X22: $i] :
      ( ~ ( r2_hidden @ X22 @ X21 )
      | ( r1_tarski @ X22 @ X20 )
      | ( X21
       != ( k1_zfmisc_1 @ X20 ) ) ) ),
    inference(cnf,[status(esa)],[d1_zfmisc_1])).

thf('6',plain,(
    ! [X20: $i,X22: $i] :
      ( ( r1_tarski @ X22 @ X20 )
      | ~ ( r2_hidden @ X22 @ ( k1_zfmisc_1 @ X20 ) ) ) ),
    inference(simplify,[status(thm)],['5'])).

thf('7',plain,(
    r1_tarski @ sk_B @ sk_A ),
    inference('sup-',[status(thm)],['4','6'])).

thf(t28_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k3_xboole_0 @ A @ B )
        = A ) ) )).

thf('8',plain,(
    ! [X9: $i,X10: $i] :
      ( ( ( k3_xboole_0 @ X9 @ X10 )
        = X9 )
      | ~ ( r1_tarski @ X9 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('9',plain,
    ( ( k3_xboole_0 @ sk_B @ sk_A )
    = sk_B ),
    inference('sup-',[status(thm)],['7','8'])).

thf(commutativity_k3_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_xboole_0 @ A @ B )
      = ( k3_xboole_0 @ B @ A ) ) )).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('11',plain,
    ( ( k3_xboole_0 @ sk_A @ sk_B )
    = sk_B ),
    inference(demod,[status(thm)],['9','10'])).

thf(t100_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ) )).

thf('12',plain,(
    ! [X7: $i,X8: $i] :
      ( ( k4_xboole_0 @ X7 @ X8 )
      = ( k5_xboole_0 @ X7 @ ( k3_xboole_0 @ X7 @ X8 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('13',plain,
    ( ( k4_xboole_0 @ sk_A @ sk_B )
    = ( k5_xboole_0 @ sk_A @ sk_B ) ),
    inference('sup+',[status(thm)],['11','12'])).

thf(commutativity_k5_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( k5_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ B @ A ) ) )).

thf('14',plain,(
    ! [X2: $i,X3: $i] :
      ( ( k5_xboole_0 @ X3 @ X2 )
      = ( k5_xboole_0 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k5_xboole_0])).

thf(t92_xboole_1,axiom,(
    ! [A: $i] :
      ( ( k5_xboole_0 @ A @ A )
      = k1_xboole_0 ) )).

thf('15',plain,(
    ! [X18: $i] :
      ( ( k5_xboole_0 @ X18 @ X18 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t92_xboole_1])).

thf(t91_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( k5_xboole_0 @ ( k5_xboole_0 @ A @ B ) @ C )
      = ( k5_xboole_0 @ A @ ( k5_xboole_0 @ B @ C ) ) ) )).

thf('16',plain,(
    ! [X15: $i,X16: $i,X17: $i] :
      ( ( k5_xboole_0 @ ( k5_xboole_0 @ X15 @ X16 ) @ X17 )
      = ( k5_xboole_0 @ X15 @ ( k5_xboole_0 @ X16 @ X17 ) ) ) ),
    inference(cnf,[status(esa)],[t91_xboole_1])).

thf('17',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k5_xboole_0 @ k1_xboole_0 @ X0 )
      = ( k5_xboole_0 @ X1 @ ( k5_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['15','16'])).

thf('18',plain,(
    ! [X2: $i,X3: $i] :
      ( ( k5_xboole_0 @ X3 @ X2 )
      = ( k5_xboole_0 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k5_xboole_0])).

thf(t5_boole,axiom,(
    ! [A: $i] :
      ( ( k5_xboole_0 @ A @ k1_xboole_0 )
      = A ) )).

thf('19',plain,(
    ! [X12: $i] :
      ( ( k5_xboole_0 @ X12 @ k1_xboole_0 )
      = X12 ) ),
    inference(cnf,[status(esa)],[t5_boole])).

thf('20',plain,(
    ! [X0: $i] :
      ( ( k5_xboole_0 @ k1_xboole_0 @ X0 )
      = X0 ) ),
    inference('sup+',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X0: $i,X1: $i] :
      ( X0
      = ( k5_xboole_0 @ X1 @ ( k5_xboole_0 @ X1 @ X0 ) ) ) ),
    inference(demod,[status(thm)],['17','20'])).

thf('22',plain,(
    ! [X0: $i,X1: $i] :
      ( X1
      = ( k5_xboole_0 @ X0 @ ( k5_xboole_0 @ X1 @ X0 ) ) ) ),
    inference('sup+',[status(thm)],['14','21'])).

thf('23',plain,
    ( sk_A
    = ( k5_xboole_0 @ sk_B @ ( k4_xboole_0 @ sk_A @ sk_B ) ) ),
    inference('sup+',[status(thm)],['13','22'])).

thf('24',plain,
    ( ( sk_B
      = ( k2_subset_1 @ sk_A ) )
    | ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('25',plain,
    ( ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B )
   <= ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B ) ),
    inference(split,[status(esa)],['24'])).

thf('26',plain,(
    ! [X9: $i,X10: $i] :
      ( ( ( k3_xboole_0 @ X9 @ X10 )
        = X9 )
      | ~ ( r1_tarski @ X9 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('27',plain,
    ( ( ( k3_xboole_0 @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B )
      = ( k3_subset_1 @ sk_A @ sk_B ) )
   <= ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B ) ),
    inference('sup-',[status(thm)],['25','26'])).

thf('28',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('29',plain,
    ( ( ( k3_xboole_0 @ sk_B @ ( k3_subset_1 @ sk_A @ sk_B ) )
      = ( k3_subset_1 @ sk_A @ sk_B ) )
   <= ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B ) ),
    inference(demod,[status(thm)],['27','28'])).

thf('30',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d5_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( k3_subset_1 @ A @ B )
        = ( k4_xboole_0 @ A @ B ) ) ) )).

thf('31',plain,(
    ! [X28: $i,X29: $i] :
      ( ( ( k3_subset_1 @ X28 @ X29 )
        = ( k4_xboole_0 @ X28 @ X29 ) )
      | ~ ( m1_subset_1 @ X29 @ ( k1_zfmisc_1 @ X28 ) ) ) ),
    inference(cnf,[status(esa)],[d5_subset_1])).

thf('32',plain,
    ( ( k3_subset_1 @ sk_A @ sk_B )
    = ( k4_xboole_0 @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf(t79_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( r1_xboole_0 @ ( k4_xboole_0 @ A @ B ) @ B ) )).

thf('33',plain,(
    ! [X13: $i,X14: $i] :
      ( r1_xboole_0 @ ( k4_xboole_0 @ X13 @ X14 ) @ X14 ) ),
    inference(cnf,[status(esa)],[t79_xboole_1])).

thf(d7_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_xboole_0 @ A @ B )
    <=> ( ( k3_xboole_0 @ A @ B )
        = k1_xboole_0 ) ) )).

thf('34',plain,(
    ! [X4: $i,X5: $i] :
      ( ( ( k3_xboole_0 @ X4 @ X5 )
        = k1_xboole_0 )
      | ~ ( r1_xboole_0 @ X4 @ X5 ) ) ),
    inference(cnf,[status(esa)],[d7_xboole_0])).

thf('35',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ ( k4_xboole_0 @ X1 @ X0 ) @ X0 )
      = k1_xboole_0 ) ),
    inference('sup-',[status(thm)],['33','34'])).

thf('36',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X1 @ X0 )
      = ( k3_xboole_0 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k3_xboole_0])).

thf('37',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_xboole_0 @ X0 @ ( k4_xboole_0 @ X1 @ X0 ) )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['35','36'])).

thf('38',plain,
    ( ( k3_subset_1 @ sk_A @ sk_B )
    = ( k4_xboole_0 @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['30','31'])).

thf('39',plain,
    ( ( k1_xboole_0
      = ( k4_xboole_0 @ sk_A @ sk_B ) )
   <= ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B ) ),
    inference(demod,[status(thm)],['29','32','37','38'])).

thf('40',plain,
    ( ( sk_B
     != ( k2_subset_1 @ sk_A ) )
    | ~ ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('41',plain,
    ( ( sk_B
     != ( k2_subset_1 @ sk_A ) )
    | ~ ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B ) ),
    inference(split,[status(esa)],['40'])).

thf(d4_subset_1,axiom,(
    ! [A: $i] :
      ( ( k2_subset_1 @ A )
      = A ) )).

thf('42',plain,(
    ! [X27: $i] :
      ( ( k2_subset_1 @ X27 )
      = X27 ) ),
    inference(cnf,[status(esa)],[d4_subset_1])).

thf('43',plain,
    ( ( sk_B
      = ( k2_subset_1 @ sk_A ) )
   <= ( sk_B
      = ( k2_subset_1 @ sk_A ) ) ),
    inference(split,[status(esa)],['24'])).

thf('44',plain,
    ( ( sk_B = sk_A )
   <= ( sk_B
      = ( k2_subset_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['42','43'])).

thf('45',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('46',plain,
    ( ( m1_subset_1 @ sk_A @ ( k1_zfmisc_1 @ sk_A ) )
   <= ( sk_B
      = ( k2_subset_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['44','45'])).

thf('47',plain,(
    ! [X28: $i,X29: $i] :
      ( ( ( k3_subset_1 @ X28 @ X29 )
        = ( k4_xboole_0 @ X28 @ X29 ) )
      | ~ ( m1_subset_1 @ X29 @ ( k1_zfmisc_1 @ X28 ) ) ) ),
    inference(cnf,[status(esa)],[d5_subset_1])).

thf('48',plain,
    ( ( ( k3_subset_1 @ sk_A @ sk_A )
      = ( k4_xboole_0 @ sk_A @ sk_A ) )
   <= ( sk_B
      = ( k2_subset_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['46','47'])).

thf('49',plain,
    ( ( m1_subset_1 @ sk_A @ ( k1_zfmisc_1 @ sk_A ) )
   <= ( sk_B
      = ( k2_subset_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['44','45'])).

thf('50',plain,(
    ! [X24: $i,X25: $i] :
      ( ~ ( m1_subset_1 @ X24 @ X25 )
      | ( r2_hidden @ X24 @ X25 )
      | ( v1_xboole_0 @ X25 ) ) ),
    inference(cnf,[status(esa)],[d2_subset_1])).

thf('51',plain,
    ( ( ( v1_xboole_0 @ ( k1_zfmisc_1 @ sk_A ) )
      | ( r2_hidden @ sk_A @ ( k1_zfmisc_1 @ sk_A ) ) )
   <= ( sk_B
      = ( k2_subset_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['49','50'])).

thf('52',plain,(
    ! [X30: $i] :
      ~ ( v1_xboole_0 @ ( k1_zfmisc_1 @ X30 ) ) ),
    inference(cnf,[status(esa)],[fc1_subset_1])).

thf('53',plain,
    ( ( r2_hidden @ sk_A @ ( k1_zfmisc_1 @ sk_A ) )
   <= ( sk_B
      = ( k2_subset_1 @ sk_A ) ) ),
    inference(clc,[status(thm)],['51','52'])).

thf('54',plain,(
    ! [X20: $i,X22: $i] :
      ( ( r1_tarski @ X22 @ X20 )
      | ~ ( r2_hidden @ X22 @ ( k1_zfmisc_1 @ X20 ) ) ) ),
    inference(simplify,[status(thm)],['5'])).

thf('55',plain,
    ( ( r1_tarski @ sk_A @ sk_A )
   <= ( sk_B
      = ( k2_subset_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['53','54'])).

thf('56',plain,(
    ! [X9: $i,X10: $i] :
      ( ( ( k3_xboole_0 @ X9 @ X10 )
        = X9 )
      | ~ ( r1_tarski @ X9 @ X10 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('57',plain,
    ( ( ( k3_xboole_0 @ sk_A @ sk_A )
      = sk_A )
   <= ( sk_B
      = ( k2_subset_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['55','56'])).

thf('58',plain,(
    ! [X7: $i,X8: $i] :
      ( ( k4_xboole_0 @ X7 @ X8 )
      = ( k5_xboole_0 @ X7 @ ( k3_xboole_0 @ X7 @ X8 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('59',plain,
    ( ( ( k4_xboole_0 @ sk_A @ sk_A )
      = ( k5_xboole_0 @ sk_A @ sk_A ) )
   <= ( sk_B
      = ( k2_subset_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['57','58'])).

thf('60',plain,(
    ! [X18: $i] :
      ( ( k5_xboole_0 @ X18 @ X18 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t92_xboole_1])).

thf('61',plain,
    ( ( ( k4_xboole_0 @ sk_A @ sk_A )
      = k1_xboole_0 )
   <= ( sk_B
      = ( k2_subset_1 @ sk_A ) ) ),
    inference(demod,[status(thm)],['59','60'])).

thf('62',plain,
    ( ( ( k3_subset_1 @ sk_A @ sk_A )
      = k1_xboole_0 )
   <= ( sk_B
      = ( k2_subset_1 @ sk_A ) ) ),
    inference(demod,[status(thm)],['48','61'])).

thf('63',plain,
    ( ( sk_B = sk_A )
   <= ( sk_B
      = ( k2_subset_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['42','43'])).

thf('64',plain,
    ( ~ ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B )
   <= ~ ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B ) ),
    inference(split,[status(esa)],['40'])).

thf('65',plain,
    ( ~ ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_A )
   <= ( ~ ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B )
      & ( sk_B
        = ( k2_subset_1 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['63','64'])).

thf('66',plain,
    ( ( sk_B = sk_A )
   <= ( sk_B
      = ( k2_subset_1 @ sk_A ) ) ),
    inference('sup+',[status(thm)],['42','43'])).

thf('67',plain,
    ( ~ ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_A ) @ sk_A )
   <= ( ~ ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B )
      & ( sk_B
        = ( k2_subset_1 @ sk_A ) ) ) ),
    inference(demod,[status(thm)],['65','66'])).

thf('68',plain,
    ( ~ ( r1_tarski @ k1_xboole_0 @ sk_A )
   <= ( ~ ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B )
      & ( sk_B
        = ( k2_subset_1 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['62','67'])).

thf(t2_xboole_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ k1_xboole_0 @ A ) )).

thf('69',plain,(
    ! [X11: $i] :
      ( r1_tarski @ k1_xboole_0 @ X11 ) ),
    inference(cnf,[status(esa)],[t2_xboole_1])).

thf('70',plain,
    ( ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B )
    | ( sk_B
     != ( k2_subset_1 @ sk_A ) ) ),
    inference(demod,[status(thm)],['68','69'])).

thf('71',plain,
    ( ( r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B )
    | ( sk_B
      = ( k2_subset_1 @ sk_A ) ) ),
    inference(split,[status(esa)],['24'])).

thf('72',plain,(
    r1_tarski @ ( k3_subset_1 @ sk_A @ sk_B ) @ sk_B ),
    inference('sat_resolution*',[status(thm)],['41','70','71'])).

thf('73',plain,
    ( k1_xboole_0
    = ( k4_xboole_0 @ sk_A @ sk_B ) ),
    inference(simpl_trail,[status(thm)],['39','72'])).

thf('74',plain,(
    ! [X2: $i,X3: $i] :
      ( ( k5_xboole_0 @ X3 @ X2 )
      = ( k5_xboole_0 @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k5_xboole_0])).

thf('75',plain,(
    ! [X0: $i] :
      ( ( k5_xboole_0 @ k1_xboole_0 @ X0 )
      = X0 ) ),
    inference('sup+',[status(thm)],['18','19'])).

thf('76',plain,(
    sk_A = sk_B ),
    inference(demod,[status(thm)],['23','73','74','75'])).

thf('77',plain,
    ( ( sk_B
     != ( k2_subset_1 @ sk_A ) )
   <= ( sk_B
     != ( k2_subset_1 @ sk_A ) ) ),
    inference(split,[status(esa)],['40'])).

thf('78',plain,(
    ! [X27: $i] :
      ( ( k2_subset_1 @ X27 )
      = X27 ) ),
    inference(cnf,[status(esa)],[d4_subset_1])).

thf('79',plain,
    ( ( sk_B != sk_A )
   <= ( sk_B
     != ( k2_subset_1 @ sk_A ) ) ),
    inference(demod,[status(thm)],['77','78'])).

thf('80',plain,(
    sk_B
 != ( k2_subset_1 @ sk_A ) ),
    inference('sat_resolution*',[status(thm)],['41','70'])).

thf('81',plain,(
    sk_B != sk_A ),
    inference(simpl_trail,[status(thm)],['79','80'])).

thf('82',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['76','81'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.07/0.13  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.07/0.14  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.dAhwi23g9Q
% 0.13/0.35  % Computer   : n021.cluster.edu
% 0.13/0.35  % Model      : x86_64 x86_64
% 0.13/0.35  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.35  % Memory     : 8042.1875MB
% 0.13/0.35  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.35  % CPULimit   : 60
% 0.13/0.35  % DateTime   : Tue Dec  1 11:59:04 EST 2020
% 0.13/0.35  % CPUTime    : 
% 0.13/0.35  % Running portfolio for 600 s
% 0.13/0.35  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.35  % Number of cores: 8
% 0.13/0.35  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.21/0.51  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.21/0.51  % Solved by: fo/fo7.sh
% 0.21/0.51  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.51  % done 235 iterations in 0.059s
% 0.21/0.51  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.21/0.51  % SZS output start Refutation
% 0.21/0.51  thf(k5_xboole_0_type, type, k5_xboole_0: $i > $i > $i).
% 0.21/0.51  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.21/0.51  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.21/0.51  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.21/0.51  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.51  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.21/0.51  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.51  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.51  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.21/0.51  thf(k2_subset_1_type, type, k2_subset_1: $i > $i).
% 0.21/0.51  thf(k3_subset_1_type, type, k3_subset_1: $i > $i > $i).
% 0.21/0.51  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.21/0.51  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.21/0.51  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.21/0.51  thf(t39_subset_1, conjecture,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.21/0.51       ( ( r1_tarski @ ( k3_subset_1 @ A @ B ) @ B ) <=>
% 0.21/0.51         ( ( B ) = ( k2_subset_1 @ A ) ) ) ))).
% 0.21/0.51  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.51    (~( ![A:$i,B:$i]:
% 0.21/0.51        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.21/0.51          ( ( r1_tarski @ ( k3_subset_1 @ A @ B ) @ B ) <=>
% 0.21/0.51            ( ( B ) = ( k2_subset_1 @ A ) ) ) ) )),
% 0.21/0.51    inference('cnf.neg', [status(esa)], [t39_subset_1])).
% 0.21/0.51  thf('0', plain, ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.21/0.51      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.51  thf(d2_subset_1, axiom,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( ( v1_xboole_0 @ A ) =>
% 0.21/0.51         ( ( m1_subset_1 @ B @ A ) <=> ( v1_xboole_0 @ B ) ) ) & 
% 0.21/0.51       ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.21/0.51         ( ( m1_subset_1 @ B @ A ) <=> ( r2_hidden @ B @ A ) ) ) ))).
% 0.21/0.51  thf('1', plain,
% 0.21/0.51      (![X24 : $i, X25 : $i]:
% 0.21/0.51         (~ (m1_subset_1 @ X24 @ X25)
% 0.21/0.51          | (r2_hidden @ X24 @ X25)
% 0.21/0.51          | (v1_xboole_0 @ X25))),
% 0.21/0.51      inference('cnf', [status(esa)], [d2_subset_1])).
% 0.21/0.51  thf('2', plain,
% 0.21/0.51      (((v1_xboole_0 @ (k1_zfmisc_1 @ sk_A))
% 0.21/0.51        | (r2_hidden @ sk_B @ (k1_zfmisc_1 @ sk_A)))),
% 0.21/0.51      inference('sup-', [status(thm)], ['0', '1'])).
% 0.21/0.51  thf(fc1_subset_1, axiom,
% 0.21/0.51    (![A:$i]: ( ~( v1_xboole_0 @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.21/0.51  thf('3', plain, (![X30 : $i]: ~ (v1_xboole_0 @ (k1_zfmisc_1 @ X30))),
% 0.21/0.51      inference('cnf', [status(esa)], [fc1_subset_1])).
% 0.21/0.51  thf('4', plain, ((r2_hidden @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.21/0.51      inference('clc', [status(thm)], ['2', '3'])).
% 0.21/0.51  thf(d1_zfmisc_1, axiom,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( ( B ) = ( k1_zfmisc_1 @ A ) ) <=>
% 0.21/0.51       ( ![C:$i]: ( ( r2_hidden @ C @ B ) <=> ( r1_tarski @ C @ A ) ) ) ))).
% 0.21/0.51  thf('5', plain,
% 0.21/0.51      (![X20 : $i, X21 : $i, X22 : $i]:
% 0.21/0.51         (~ (r2_hidden @ X22 @ X21)
% 0.21/0.51          | (r1_tarski @ X22 @ X20)
% 0.21/0.51          | ((X21) != (k1_zfmisc_1 @ X20)))),
% 0.21/0.51      inference('cnf', [status(esa)], [d1_zfmisc_1])).
% 0.21/0.51  thf('6', plain,
% 0.21/0.51      (![X20 : $i, X22 : $i]:
% 0.21/0.51         ((r1_tarski @ X22 @ X20) | ~ (r2_hidden @ X22 @ (k1_zfmisc_1 @ X20)))),
% 0.21/0.51      inference('simplify', [status(thm)], ['5'])).
% 0.21/0.51  thf('7', plain, ((r1_tarski @ sk_B @ sk_A)),
% 0.21/0.51      inference('sup-', [status(thm)], ['4', '6'])).
% 0.21/0.51  thf(t28_xboole_1, axiom,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( r1_tarski @ A @ B ) => ( ( k3_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.21/0.51  thf('8', plain,
% 0.21/0.51      (![X9 : $i, X10 : $i]:
% 0.21/0.51         (((k3_xboole_0 @ X9 @ X10) = (X9)) | ~ (r1_tarski @ X9 @ X10))),
% 0.21/0.51      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.21/0.51  thf('9', plain, (((k3_xboole_0 @ sk_B @ sk_A) = (sk_B))),
% 0.21/0.51      inference('sup-', [status(thm)], ['7', '8'])).
% 0.21/0.51  thf(commutativity_k3_xboole_0, axiom,
% 0.21/0.51    (![A:$i,B:$i]: ( ( k3_xboole_0 @ A @ B ) = ( k3_xboole_0 @ B @ A ) ))).
% 0.21/0.51  thf('10', plain,
% 0.21/0.51      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.21/0.51      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.21/0.51  thf('11', plain, (((k3_xboole_0 @ sk_A @ sk_B) = (sk_B))),
% 0.21/0.51      inference('demod', [status(thm)], ['9', '10'])).
% 0.21/0.51  thf(t100_xboole_1, axiom,
% 0.21/0.51    (![A:$i,B:$i]:
% 0.21/0.51     ( ( k4_xboole_0 @ A @ B ) = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ))).
% 0.21/0.51  thf('12', plain,
% 0.21/0.51      (![X7 : $i, X8 : $i]:
% 0.21/0.52         ((k4_xboole_0 @ X7 @ X8)
% 0.21/0.52           = (k5_xboole_0 @ X7 @ (k3_xboole_0 @ X7 @ X8)))),
% 0.21/0.52      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.21/0.52  thf('13', plain,
% 0.21/0.52      (((k4_xboole_0 @ sk_A @ sk_B) = (k5_xboole_0 @ sk_A @ sk_B))),
% 0.21/0.52      inference('sup+', [status(thm)], ['11', '12'])).
% 0.21/0.52  thf(commutativity_k5_xboole_0, axiom,
% 0.21/0.52    (![A:$i,B:$i]: ( ( k5_xboole_0 @ A @ B ) = ( k5_xboole_0 @ B @ A ) ))).
% 0.21/0.52  thf('14', plain,
% 0.21/0.52      (![X2 : $i, X3 : $i]: ((k5_xboole_0 @ X3 @ X2) = (k5_xboole_0 @ X2 @ X3))),
% 0.21/0.52      inference('cnf', [status(esa)], [commutativity_k5_xboole_0])).
% 0.21/0.52  thf(t92_xboole_1, axiom,
% 0.21/0.52    (![A:$i]: ( ( k5_xboole_0 @ A @ A ) = ( k1_xboole_0 ) ))).
% 0.21/0.52  thf('15', plain, (![X18 : $i]: ((k5_xboole_0 @ X18 @ X18) = (k1_xboole_0))),
% 0.21/0.52      inference('cnf', [status(esa)], [t92_xboole_1])).
% 0.21/0.52  thf(t91_xboole_1, axiom,
% 0.21/0.52    (![A:$i,B:$i,C:$i]:
% 0.21/0.52     ( ( k5_xboole_0 @ ( k5_xboole_0 @ A @ B ) @ C ) =
% 0.21/0.52       ( k5_xboole_0 @ A @ ( k5_xboole_0 @ B @ C ) ) ))).
% 0.21/0.52  thf('16', plain,
% 0.21/0.52      (![X15 : $i, X16 : $i, X17 : $i]:
% 0.21/0.52         ((k5_xboole_0 @ (k5_xboole_0 @ X15 @ X16) @ X17)
% 0.21/0.52           = (k5_xboole_0 @ X15 @ (k5_xboole_0 @ X16 @ X17)))),
% 0.21/0.52      inference('cnf', [status(esa)], [t91_xboole_1])).
% 0.21/0.52  thf('17', plain,
% 0.21/0.52      (![X0 : $i, X1 : $i]:
% 0.21/0.52         ((k5_xboole_0 @ k1_xboole_0 @ X0)
% 0.21/0.52           = (k5_xboole_0 @ X1 @ (k5_xboole_0 @ X1 @ X0)))),
% 0.21/0.52      inference('sup+', [status(thm)], ['15', '16'])).
% 0.21/0.52  thf('18', plain,
% 0.21/0.52      (![X2 : $i, X3 : $i]: ((k5_xboole_0 @ X3 @ X2) = (k5_xboole_0 @ X2 @ X3))),
% 0.21/0.52      inference('cnf', [status(esa)], [commutativity_k5_xboole_0])).
% 0.21/0.52  thf(t5_boole, axiom,
% 0.21/0.52    (![A:$i]: ( ( k5_xboole_0 @ A @ k1_xboole_0 ) = ( A ) ))).
% 0.21/0.52  thf('19', plain, (![X12 : $i]: ((k5_xboole_0 @ X12 @ k1_xboole_0) = (X12))),
% 0.21/0.52      inference('cnf', [status(esa)], [t5_boole])).
% 0.21/0.52  thf('20', plain, (![X0 : $i]: ((k5_xboole_0 @ k1_xboole_0 @ X0) = (X0))),
% 0.21/0.52      inference('sup+', [status(thm)], ['18', '19'])).
% 0.21/0.52  thf('21', plain,
% 0.21/0.52      (![X0 : $i, X1 : $i]:
% 0.21/0.52         ((X0) = (k5_xboole_0 @ X1 @ (k5_xboole_0 @ X1 @ X0)))),
% 0.21/0.52      inference('demod', [status(thm)], ['17', '20'])).
% 0.21/0.52  thf('22', plain,
% 0.21/0.52      (![X0 : $i, X1 : $i]:
% 0.21/0.52         ((X1) = (k5_xboole_0 @ X0 @ (k5_xboole_0 @ X1 @ X0)))),
% 0.21/0.52      inference('sup+', [status(thm)], ['14', '21'])).
% 0.21/0.52  thf('23', plain,
% 0.21/0.52      (((sk_A) = (k5_xboole_0 @ sk_B @ (k4_xboole_0 @ sk_A @ sk_B)))),
% 0.21/0.52      inference('sup+', [status(thm)], ['13', '22'])).
% 0.21/0.52  thf('24', plain,
% 0.21/0.52      ((((sk_B) = (k2_subset_1 @ sk_A))
% 0.21/0.52        | (r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B))),
% 0.21/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.52  thf('25', plain,
% 0.21/0.52      (((r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B))
% 0.21/0.52         <= (((r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B)))),
% 0.21/0.52      inference('split', [status(esa)], ['24'])).
% 0.21/0.52  thf('26', plain,
% 0.21/0.52      (![X9 : $i, X10 : $i]:
% 0.21/0.52         (((k3_xboole_0 @ X9 @ X10) = (X9)) | ~ (r1_tarski @ X9 @ X10))),
% 0.21/0.52      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.21/0.52  thf('27', plain,
% 0.21/0.52      ((((k3_xboole_0 @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B)
% 0.21/0.52          = (k3_subset_1 @ sk_A @ sk_B)))
% 0.21/0.52         <= (((r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B)))),
% 0.21/0.52      inference('sup-', [status(thm)], ['25', '26'])).
% 0.21/0.52  thf('28', plain,
% 0.21/0.52      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.21/0.52      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.21/0.52  thf('29', plain,
% 0.21/0.52      ((((k3_xboole_0 @ sk_B @ (k3_subset_1 @ sk_A @ sk_B))
% 0.21/0.52          = (k3_subset_1 @ sk_A @ sk_B)))
% 0.21/0.52         <= (((r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B)))),
% 0.21/0.52      inference('demod', [status(thm)], ['27', '28'])).
% 0.21/0.52  thf('30', plain, ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.21/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.52  thf(d5_subset_1, axiom,
% 0.21/0.52    (![A:$i,B:$i]:
% 0.21/0.52     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.21/0.52       ( ( k3_subset_1 @ A @ B ) = ( k4_xboole_0 @ A @ B ) ) ))).
% 0.21/0.52  thf('31', plain,
% 0.21/0.52      (![X28 : $i, X29 : $i]:
% 0.21/0.52         (((k3_subset_1 @ X28 @ X29) = (k4_xboole_0 @ X28 @ X29))
% 0.21/0.52          | ~ (m1_subset_1 @ X29 @ (k1_zfmisc_1 @ X28)))),
% 0.21/0.52      inference('cnf', [status(esa)], [d5_subset_1])).
% 0.21/0.52  thf('32', plain,
% 0.21/0.52      (((k3_subset_1 @ sk_A @ sk_B) = (k4_xboole_0 @ sk_A @ sk_B))),
% 0.21/0.52      inference('sup-', [status(thm)], ['30', '31'])).
% 0.21/0.52  thf(t79_xboole_1, axiom,
% 0.21/0.52    (![A:$i,B:$i]: ( r1_xboole_0 @ ( k4_xboole_0 @ A @ B ) @ B ))).
% 0.21/0.52  thf('33', plain,
% 0.21/0.52      (![X13 : $i, X14 : $i]: (r1_xboole_0 @ (k4_xboole_0 @ X13 @ X14) @ X14)),
% 0.21/0.52      inference('cnf', [status(esa)], [t79_xboole_1])).
% 0.21/0.52  thf(d7_xboole_0, axiom,
% 0.21/0.52    (![A:$i,B:$i]:
% 0.21/0.52     ( ( r1_xboole_0 @ A @ B ) <=>
% 0.21/0.52       ( ( k3_xboole_0 @ A @ B ) = ( k1_xboole_0 ) ) ))).
% 0.21/0.52  thf('34', plain,
% 0.21/0.52      (![X4 : $i, X5 : $i]:
% 0.21/0.52         (((k3_xboole_0 @ X4 @ X5) = (k1_xboole_0)) | ~ (r1_xboole_0 @ X4 @ X5))),
% 0.21/0.52      inference('cnf', [status(esa)], [d7_xboole_0])).
% 0.21/0.52  thf('35', plain,
% 0.21/0.52      (![X0 : $i, X1 : $i]:
% 0.21/0.52         ((k3_xboole_0 @ (k4_xboole_0 @ X1 @ X0) @ X0) = (k1_xboole_0))),
% 0.21/0.52      inference('sup-', [status(thm)], ['33', '34'])).
% 0.21/0.52  thf('36', plain,
% 0.21/0.52      (![X0 : $i, X1 : $i]: ((k3_xboole_0 @ X1 @ X0) = (k3_xboole_0 @ X0 @ X1))),
% 0.21/0.52      inference('cnf', [status(esa)], [commutativity_k3_xboole_0])).
% 0.21/0.52  thf('37', plain,
% 0.21/0.52      (![X0 : $i, X1 : $i]:
% 0.21/0.52         ((k3_xboole_0 @ X0 @ (k4_xboole_0 @ X1 @ X0)) = (k1_xboole_0))),
% 0.21/0.52      inference('demod', [status(thm)], ['35', '36'])).
% 0.21/0.52  thf('38', plain,
% 0.21/0.52      (((k3_subset_1 @ sk_A @ sk_B) = (k4_xboole_0 @ sk_A @ sk_B))),
% 0.21/0.52      inference('sup-', [status(thm)], ['30', '31'])).
% 0.21/0.52  thf('39', plain,
% 0.21/0.52      ((((k1_xboole_0) = (k4_xboole_0 @ sk_A @ sk_B)))
% 0.21/0.52         <= (((r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B)))),
% 0.21/0.52      inference('demod', [status(thm)], ['29', '32', '37', '38'])).
% 0.21/0.52  thf('40', plain,
% 0.21/0.52      ((((sk_B) != (k2_subset_1 @ sk_A))
% 0.21/0.52        | ~ (r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B))),
% 0.21/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.52  thf('41', plain,
% 0.21/0.52      (~ (((sk_B) = (k2_subset_1 @ sk_A))) | 
% 0.21/0.52       ~ ((r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B))),
% 0.21/0.52      inference('split', [status(esa)], ['40'])).
% 0.21/0.52  thf(d4_subset_1, axiom, (![A:$i]: ( ( k2_subset_1 @ A ) = ( A ) ))).
% 0.21/0.52  thf('42', plain, (![X27 : $i]: ((k2_subset_1 @ X27) = (X27))),
% 0.21/0.52      inference('cnf', [status(esa)], [d4_subset_1])).
% 0.21/0.52  thf('43', plain,
% 0.21/0.52      ((((sk_B) = (k2_subset_1 @ sk_A))) <= ((((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('split', [status(esa)], ['24'])).
% 0.21/0.52  thf('44', plain,
% 0.21/0.52      ((((sk_B) = (sk_A))) <= ((((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('sup+', [status(thm)], ['42', '43'])).
% 0.21/0.52  thf('45', plain, ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.21/0.52      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.52  thf('46', plain,
% 0.21/0.52      (((m1_subset_1 @ sk_A @ (k1_zfmisc_1 @ sk_A)))
% 0.21/0.52         <= ((((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('sup+', [status(thm)], ['44', '45'])).
% 0.21/0.52  thf('47', plain,
% 0.21/0.52      (![X28 : $i, X29 : $i]:
% 0.21/0.52         (((k3_subset_1 @ X28 @ X29) = (k4_xboole_0 @ X28 @ X29))
% 0.21/0.52          | ~ (m1_subset_1 @ X29 @ (k1_zfmisc_1 @ X28)))),
% 0.21/0.52      inference('cnf', [status(esa)], [d5_subset_1])).
% 0.21/0.52  thf('48', plain,
% 0.21/0.52      ((((k3_subset_1 @ sk_A @ sk_A) = (k4_xboole_0 @ sk_A @ sk_A)))
% 0.21/0.52         <= ((((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('sup-', [status(thm)], ['46', '47'])).
% 0.21/0.52  thf('49', plain,
% 0.21/0.52      (((m1_subset_1 @ sk_A @ (k1_zfmisc_1 @ sk_A)))
% 0.21/0.52         <= ((((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('sup+', [status(thm)], ['44', '45'])).
% 0.21/0.52  thf('50', plain,
% 0.21/0.52      (![X24 : $i, X25 : $i]:
% 0.21/0.52         (~ (m1_subset_1 @ X24 @ X25)
% 0.21/0.52          | (r2_hidden @ X24 @ X25)
% 0.21/0.52          | (v1_xboole_0 @ X25))),
% 0.21/0.52      inference('cnf', [status(esa)], [d2_subset_1])).
% 0.21/0.52  thf('51', plain,
% 0.21/0.52      ((((v1_xboole_0 @ (k1_zfmisc_1 @ sk_A))
% 0.21/0.52         | (r2_hidden @ sk_A @ (k1_zfmisc_1 @ sk_A))))
% 0.21/0.52         <= ((((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('sup-', [status(thm)], ['49', '50'])).
% 0.21/0.52  thf('52', plain, (![X30 : $i]: ~ (v1_xboole_0 @ (k1_zfmisc_1 @ X30))),
% 0.21/0.52      inference('cnf', [status(esa)], [fc1_subset_1])).
% 0.21/0.52  thf('53', plain,
% 0.21/0.52      (((r2_hidden @ sk_A @ (k1_zfmisc_1 @ sk_A)))
% 0.21/0.52         <= ((((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('clc', [status(thm)], ['51', '52'])).
% 0.21/0.52  thf('54', plain,
% 0.21/0.52      (![X20 : $i, X22 : $i]:
% 0.21/0.52         ((r1_tarski @ X22 @ X20) | ~ (r2_hidden @ X22 @ (k1_zfmisc_1 @ X20)))),
% 0.21/0.52      inference('simplify', [status(thm)], ['5'])).
% 0.21/0.52  thf('55', plain,
% 0.21/0.52      (((r1_tarski @ sk_A @ sk_A)) <= ((((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('sup-', [status(thm)], ['53', '54'])).
% 0.21/0.52  thf('56', plain,
% 0.21/0.52      (![X9 : $i, X10 : $i]:
% 0.21/0.52         (((k3_xboole_0 @ X9 @ X10) = (X9)) | ~ (r1_tarski @ X9 @ X10))),
% 0.21/0.52      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.21/0.52  thf('57', plain,
% 0.21/0.52      ((((k3_xboole_0 @ sk_A @ sk_A) = (sk_A)))
% 0.21/0.52         <= ((((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('sup-', [status(thm)], ['55', '56'])).
% 0.21/0.52  thf('58', plain,
% 0.21/0.52      (![X7 : $i, X8 : $i]:
% 0.21/0.52         ((k4_xboole_0 @ X7 @ X8)
% 0.21/0.52           = (k5_xboole_0 @ X7 @ (k3_xboole_0 @ X7 @ X8)))),
% 0.21/0.52      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.21/0.52  thf('59', plain,
% 0.21/0.52      ((((k4_xboole_0 @ sk_A @ sk_A) = (k5_xboole_0 @ sk_A @ sk_A)))
% 0.21/0.52         <= ((((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('sup+', [status(thm)], ['57', '58'])).
% 0.21/0.52  thf('60', plain, (![X18 : $i]: ((k5_xboole_0 @ X18 @ X18) = (k1_xboole_0))),
% 0.21/0.52      inference('cnf', [status(esa)], [t92_xboole_1])).
% 0.21/0.52  thf('61', plain,
% 0.21/0.52      ((((k4_xboole_0 @ sk_A @ sk_A) = (k1_xboole_0)))
% 0.21/0.52         <= ((((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('demod', [status(thm)], ['59', '60'])).
% 0.21/0.52  thf('62', plain,
% 0.21/0.52      ((((k3_subset_1 @ sk_A @ sk_A) = (k1_xboole_0)))
% 0.21/0.52         <= ((((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('demod', [status(thm)], ['48', '61'])).
% 0.21/0.52  thf('63', plain,
% 0.21/0.52      ((((sk_B) = (sk_A))) <= ((((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('sup+', [status(thm)], ['42', '43'])).
% 0.21/0.52  thf('64', plain,
% 0.21/0.52      ((~ (r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B))
% 0.21/0.52         <= (~ ((r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B)))),
% 0.21/0.52      inference('split', [status(esa)], ['40'])).
% 0.21/0.52  thf('65', plain,
% 0.21/0.52      ((~ (r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_A))
% 0.21/0.52         <= (~ ((r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B)) & 
% 0.21/0.52             (((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('sup-', [status(thm)], ['63', '64'])).
% 0.21/0.52  thf('66', plain,
% 0.21/0.52      ((((sk_B) = (sk_A))) <= ((((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('sup+', [status(thm)], ['42', '43'])).
% 0.21/0.52  thf('67', plain,
% 0.21/0.52      ((~ (r1_tarski @ (k3_subset_1 @ sk_A @ sk_A) @ sk_A))
% 0.21/0.52         <= (~ ((r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B)) & 
% 0.21/0.52             (((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('demod', [status(thm)], ['65', '66'])).
% 0.21/0.52  thf('68', plain,
% 0.21/0.52      ((~ (r1_tarski @ k1_xboole_0 @ sk_A))
% 0.21/0.52         <= (~ ((r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B)) & 
% 0.21/0.52             (((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('sup-', [status(thm)], ['62', '67'])).
% 0.21/0.52  thf(t2_xboole_1, axiom, (![A:$i]: ( r1_tarski @ k1_xboole_0 @ A ))).
% 0.21/0.52  thf('69', plain, (![X11 : $i]: (r1_tarski @ k1_xboole_0 @ X11)),
% 0.21/0.52      inference('cnf', [status(esa)], [t2_xboole_1])).
% 0.21/0.52  thf('70', plain,
% 0.21/0.52      (((r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B)) | 
% 0.21/0.52       ~ (((sk_B) = (k2_subset_1 @ sk_A)))),
% 0.21/0.52      inference('demod', [status(thm)], ['68', '69'])).
% 0.21/0.52  thf('71', plain,
% 0.21/0.52      (((r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B)) | 
% 0.21/0.52       (((sk_B) = (k2_subset_1 @ sk_A)))),
% 0.21/0.52      inference('split', [status(esa)], ['24'])).
% 0.21/0.52  thf('72', plain, (((r1_tarski @ (k3_subset_1 @ sk_A @ sk_B) @ sk_B))),
% 0.21/0.52      inference('sat_resolution*', [status(thm)], ['41', '70', '71'])).
% 0.21/0.52  thf('73', plain, (((k1_xboole_0) = (k4_xboole_0 @ sk_A @ sk_B))),
% 0.21/0.52      inference('simpl_trail', [status(thm)], ['39', '72'])).
% 0.21/0.52  thf('74', plain,
% 0.21/0.52      (![X2 : $i, X3 : $i]: ((k5_xboole_0 @ X3 @ X2) = (k5_xboole_0 @ X2 @ X3))),
% 0.21/0.52      inference('cnf', [status(esa)], [commutativity_k5_xboole_0])).
% 0.21/0.52  thf('75', plain, (![X0 : $i]: ((k5_xboole_0 @ k1_xboole_0 @ X0) = (X0))),
% 0.21/0.52      inference('sup+', [status(thm)], ['18', '19'])).
% 0.21/0.52  thf('76', plain, (((sk_A) = (sk_B))),
% 0.21/0.52      inference('demod', [status(thm)], ['23', '73', '74', '75'])).
% 0.21/0.52  thf('77', plain,
% 0.21/0.52      ((((sk_B) != (k2_subset_1 @ sk_A)))
% 0.21/0.52         <= (~ (((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('split', [status(esa)], ['40'])).
% 0.21/0.52  thf('78', plain, (![X27 : $i]: ((k2_subset_1 @ X27) = (X27))),
% 0.21/0.52      inference('cnf', [status(esa)], [d4_subset_1])).
% 0.21/0.52  thf('79', plain,
% 0.21/0.52      ((((sk_B) != (sk_A))) <= (~ (((sk_B) = (k2_subset_1 @ sk_A))))),
% 0.21/0.52      inference('demod', [status(thm)], ['77', '78'])).
% 0.21/0.52  thf('80', plain, (~ (((sk_B) = (k2_subset_1 @ sk_A)))),
% 0.21/0.52      inference('sat_resolution*', [status(thm)], ['41', '70'])).
% 0.21/0.52  thf('81', plain, (((sk_B) != (sk_A))),
% 0.21/0.52      inference('simpl_trail', [status(thm)], ['79', '80'])).
% 0.21/0.52  thf('82', plain, ($false),
% 0.21/0.52      inference('simplify_reflect-', [status(thm)], ['76', '81'])).
% 0.21/0.52  
% 0.21/0.52  % SZS output end Refutation
% 0.21/0.52  
% 0.21/0.54  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
