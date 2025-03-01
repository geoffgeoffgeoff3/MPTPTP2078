%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.btCPJm5054

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:36:47 EST 2020

% Result     : Theorem 0.35s
% Output     : Refutation 0.35s
% Verified   : 
% Statistics : Number of formulae       :   92 ( 120 expanded)
%              Number of leaves         :   34 (  50 expanded)
%              Depth                    :   12
%              Number of atoms          :  549 ( 821 expanded)
%              Number of equality atoms :   52 (  72 expanded)
%              Maximal formula depth    :   10 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k5_xboole_0_type,type,(
    k5_xboole_0: $i > $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i > $i > $i )).

thf(k2_tarski_type,type,(
    k2_tarski: $i > $i > $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(k1_xboole_0_type,type,(
    k1_xboole_0: $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k3_tarski_type,type,(
    k3_tarski: $i > $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(k4_subset_1_type,type,(
    k4_subset_1: $i > $i > $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(k3_subset_1_type,type,(
    k3_subset_1: $i > $i > $i )).

thf(k2_subset_1_type,type,(
    k2_subset_1: $i > $i )).

thf(k3_xboole_0_type,type,(
    k3_xboole_0: $i > $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(k2_xboole_0_type,type,(
    k2_xboole_0: $i > $i > $i )).

thf(t25_subset_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( k4_subset_1 @ A @ B @ ( k3_subset_1 @ A @ B ) )
        = ( k2_subset_1 @ A ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
       => ( ( k4_subset_1 @ A @ B @ ( k3_subset_1 @ A @ B ) )
          = ( k2_subset_1 @ A ) ) ) ),
    inference('cnf.neg',[status(esa)],[t25_subset_1])).

thf('0',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k3_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( m1_subset_1 @ ( k3_subset_1 @ A @ B ) @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('1',plain,(
    ! [X55: $i,X56: $i] :
      ( ( m1_subset_1 @ ( k3_subset_1 @ X55 @ X56 ) @ ( k1_zfmisc_1 @ X55 ) )
      | ~ ( m1_subset_1 @ X56 @ ( k1_zfmisc_1 @ X55 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k3_subset_1])).

thf('2',plain,(
    m1_subset_1 @ ( k3_subset_1 @ sk_A @ sk_B ) @ ( k1_zfmisc_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf('3',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d5_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( k3_subset_1 @ A @ B )
        = ( k4_xboole_0 @ A @ B ) ) ) )).

thf('4',plain,(
    ! [X53: $i,X54: $i] :
      ( ( ( k3_subset_1 @ X53 @ X54 )
        = ( k4_xboole_0 @ X53 @ X54 ) )
      | ~ ( m1_subset_1 @ X54 @ ( k1_zfmisc_1 @ X53 ) ) ) ),
    inference(cnf,[status(esa)],[d5_subset_1])).

thf('5',plain,
    ( ( k3_subset_1 @ sk_A @ sk_B )
    = ( k4_xboole_0 @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('6',plain,(
    m1_subset_1 @ ( k4_xboole_0 @ sk_A @ sk_B ) @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(demod,[status(thm)],['2','5'])).

thf('7',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(redefinition_k4_subset_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
        & ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) )
     => ( ( k4_subset_1 @ A @ B @ C )
        = ( k2_xboole_0 @ B @ C ) ) ) )).

thf('8',plain,(
    ! [X58: $i,X59: $i,X60: $i] :
      ( ~ ( m1_subset_1 @ X58 @ ( k1_zfmisc_1 @ X59 ) )
      | ~ ( m1_subset_1 @ X60 @ ( k1_zfmisc_1 @ X59 ) )
      | ( ( k4_subset_1 @ X59 @ X58 @ X60 )
        = ( k2_xboole_0 @ X58 @ X60 ) ) ) ),
    inference(cnf,[status(esa)],[redefinition_k4_subset_1])).

thf('9',plain,(
    ! [X0: $i] :
      ( ( ( k4_subset_1 @ sk_A @ sk_B @ X0 )
        = ( k2_xboole_0 @ sk_B @ X0 ) )
      | ~ ( m1_subset_1 @ X0 @ ( k1_zfmisc_1 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,
    ( ( k4_subset_1 @ sk_A @ sk_B @ ( k4_xboole_0 @ sk_A @ sk_B ) )
    = ( k2_xboole_0 @ sk_B @ ( k4_xboole_0 @ sk_A @ sk_B ) ) ),
    inference('sup-',[status(thm)],['6','9'])).

thf(t39_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) )
      = ( k2_xboole_0 @ A @ B ) ) )).

thf('11',plain,(
    ! [X10: $i,X11: $i] :
      ( ( k2_xboole_0 @ X10 @ ( k4_xboole_0 @ X11 @ X10 ) )
      = ( k2_xboole_0 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t39_xboole_1])).

thf('12',plain,(
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

thf('13',plain,(
    ! [X49: $i,X50: $i] :
      ( ~ ( m1_subset_1 @ X49 @ X50 )
      | ( r2_hidden @ X49 @ X50 )
      | ( v1_xboole_0 @ X50 ) ) ),
    inference(cnf,[status(esa)],[d2_subset_1])).

thf('14',plain,
    ( ( v1_xboole_0 @ ( k1_zfmisc_1 @ sk_A ) )
    | ( r2_hidden @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['12','13'])).

thf(fc1_subset_1,axiom,(
    ! [A: $i] :
      ~ ( v1_xboole_0 @ ( k1_zfmisc_1 @ A ) ) )).

thf('15',plain,(
    ! [X57: $i] :
      ~ ( v1_xboole_0 @ ( k1_zfmisc_1 @ X57 ) ) ),
    inference(cnf,[status(esa)],[fc1_subset_1])).

thf('16',plain,(
    r2_hidden @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(clc,[status(thm)],['14','15'])).

thf(d1_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( B
        = ( k1_zfmisc_1 @ A ) )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ B )
        <=> ( r1_tarski @ C @ A ) ) ) )).

thf('17',plain,(
    ! [X43: $i,X44: $i,X45: $i] :
      ( ~ ( r2_hidden @ X45 @ X44 )
      | ( r1_tarski @ X45 @ X43 )
      | ( X44
       != ( k1_zfmisc_1 @ X43 ) ) ) ),
    inference(cnf,[status(esa)],[d1_zfmisc_1])).

thf('18',plain,(
    ! [X43: $i,X45: $i] :
      ( ( r1_tarski @ X45 @ X43 )
      | ~ ( r2_hidden @ X45 @ ( k1_zfmisc_1 @ X43 ) ) ) ),
    inference(simplify,[status(thm)],['17'])).

thf('19',plain,(
    r1_tarski @ sk_B @ sk_A ),
    inference('sup-',[status(thm)],['16','18'])).

thf(t28_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
     => ( ( k3_xboole_0 @ A @ B )
        = A ) ) )).

thf('20',plain,(
    ! [X8: $i,X9: $i] :
      ( ( ( k3_xboole_0 @ X8 @ X9 )
        = X8 )
      | ~ ( r1_tarski @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('21',plain,
    ( ( k3_xboole_0 @ sk_B @ sk_A )
    = sk_B ),
    inference('sup-',[status(thm)],['19','20'])).

thf(t100_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k4_xboole_0 @ A @ B )
      = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ) )).

thf('22',plain,(
    ! [X4: $i,X5: $i] :
      ( ( k4_xboole_0 @ X4 @ X5 )
      = ( k5_xboole_0 @ X4 @ ( k3_xboole_0 @ X4 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('23',plain,
    ( ( k4_xboole_0 @ sk_B @ sk_A )
    = ( k5_xboole_0 @ sk_B @ sk_B ) ),
    inference('sup+',[status(thm)],['21','22'])).

thf(t92_xboole_1,axiom,(
    ! [A: $i] :
      ( ( k5_xboole_0 @ A @ A )
      = k1_xboole_0 ) )).

thf('24',plain,(
    ! [X12: $i] :
      ( ( k5_xboole_0 @ X12 @ X12 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t92_xboole_1])).

thf('25',plain,
    ( ( k4_xboole_0 @ sk_B @ sk_A )
    = k1_xboole_0 ),
    inference(demod,[status(thm)],['23','24'])).

thf('26',plain,(
    ! [X10: $i,X11: $i] :
      ( ( k2_xboole_0 @ X10 @ ( k4_xboole_0 @ X11 @ X10 ) )
      = ( k2_xboole_0 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t39_xboole_1])).

thf('27',plain,
    ( ( k2_xboole_0 @ sk_A @ k1_xboole_0 )
    = ( k2_xboole_0 @ sk_A @ sk_B ) ),
    inference('sup+',[status(thm)],['25','26'])).

thf(d3_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( r1_tarski @ A @ B )
    <=> ! [C: $i] :
          ( ( r2_hidden @ C @ A )
         => ( r2_hidden @ C @ B ) ) ) )).

thf('28',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X1 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('29',plain,(
    ! [X1: $i,X3: $i] :
      ( ( r1_tarski @ X1 @ X3 )
      | ~ ( r2_hidden @ ( sk_C @ X3 @ X1 ) @ X3 ) ) ),
    inference(cnf,[status(esa)],[d3_tarski])).

thf('30',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ X0 @ X0 )
      | ( r1_tarski @ X0 @ X0 ) ) ),
    inference('sup-',[status(thm)],['28','29'])).

thf('31',plain,(
    ! [X0: $i] :
      ( r1_tarski @ X0 @ X0 ) ),
    inference(simplify,[status(thm)],['30'])).

thf('32',plain,(
    ! [X8: $i,X9: $i] :
      ( ( ( k3_xboole_0 @ X8 @ X9 )
        = X8 )
      | ~ ( r1_tarski @ X8 @ X9 ) ) ),
    inference(cnf,[status(esa)],[t28_xboole_1])).

thf('33',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference('sup-',[status(thm)],['31','32'])).

thf('34',plain,(
    ! [X4: $i,X5: $i] :
      ( ( k4_xboole_0 @ X4 @ X5 )
      = ( k5_xboole_0 @ X4 @ ( k3_xboole_0 @ X4 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[t100_xboole_1])).

thf('35',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = ( k5_xboole_0 @ X0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['33','34'])).

thf('36',plain,(
    ! [X12: $i] :
      ( ( k5_xboole_0 @ X12 @ X12 )
      = k1_xboole_0 ) ),
    inference(cnf,[status(esa)],[t92_xboole_1])).

thf('37',plain,(
    ! [X0: $i] :
      ( ( k4_xboole_0 @ X0 @ X0 )
      = k1_xboole_0 ) ),
    inference(demod,[status(thm)],['35','36'])).

thf('38',plain,(
    ! [X10: $i,X11: $i] :
      ( ( k2_xboole_0 @ X10 @ ( k4_xboole_0 @ X11 @ X10 ) )
      = ( k2_xboole_0 @ X10 @ X11 ) ) ),
    inference(cnf,[status(esa)],[t39_xboole_1])).

thf('39',plain,(
    ! [X0: $i] :
      ( ( k2_xboole_0 @ X0 @ k1_xboole_0 )
      = ( k2_xboole_0 @ X0 @ X0 ) ) ),
    inference('sup+',[status(thm)],['37','38'])).

thf('40',plain,(
    ! [X0: $i] :
      ( ( k3_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference('sup-',[status(thm)],['31','32'])).

thf(t22_xboole_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) )
      = A ) )).

thf('41',plain,(
    ! [X6: $i,X7: $i] :
      ( ( k2_xboole_0 @ X6 @ ( k3_xboole_0 @ X6 @ X7 ) )
      = X6 ) ),
    inference(cnf,[status(esa)],[t22_xboole_1])).

thf('42',plain,(
    ! [X0: $i] :
      ( ( k2_xboole_0 @ X0 @ X0 )
      = X0 ) ),
    inference('sup+',[status(thm)],['40','41'])).

thf('43',plain,(
    ! [X0: $i] :
      ( ( k2_xboole_0 @ X0 @ k1_xboole_0 )
      = X0 ) ),
    inference(demod,[status(thm)],['39','42'])).

thf(commutativity_k2_tarski,axiom,(
    ! [A: $i,B: $i] :
      ( ( k2_tarski @ A @ B )
      = ( k2_tarski @ B @ A ) ) )).

thf('44',plain,(
    ! [X13: $i,X14: $i] :
      ( ( k2_tarski @ X14 @ X13 )
      = ( k2_tarski @ X13 @ X14 ) ) ),
    inference(cnf,[status(esa)],[commutativity_k2_tarski])).

thf(l51_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( k3_tarski @ ( k2_tarski @ A @ B ) )
      = ( k2_xboole_0 @ A @ B ) ) )).

thf('45',plain,(
    ! [X47: $i,X48: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X47 @ X48 ) )
      = ( k2_xboole_0 @ X47 @ X48 ) ) ),
    inference(cnf,[status(esa)],[l51_zfmisc_1])).

thf('46',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X1 @ X0 ) )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['44','45'])).

thf('47',plain,(
    ! [X47: $i,X48: $i] :
      ( ( k3_tarski @ ( k2_tarski @ X47 @ X48 ) )
      = ( k2_xboole_0 @ X47 @ X48 ) ) ),
    inference(cnf,[status(esa)],[l51_zfmisc_1])).

thf('48',plain,(
    ! [X0: $i,X1: $i] :
      ( ( k2_xboole_0 @ X1 @ X0 )
      = ( k2_xboole_0 @ X0 @ X1 ) ) ),
    inference('sup+',[status(thm)],['46','47'])).

thf('49',plain,
    ( sk_A
    = ( k2_xboole_0 @ sk_B @ sk_A ) ),
    inference(demod,[status(thm)],['27','43','48'])).

thf('50',plain,
    ( ( k4_subset_1 @ sk_A @ sk_B @ ( k4_xboole_0 @ sk_A @ sk_B ) )
    = sk_A ),
    inference(demod,[status(thm)],['10','11','49'])).

thf('51',plain,(
    ( k4_subset_1 @ sk_A @ sk_B @ ( k3_subset_1 @ sk_A @ sk_B ) )
 != ( k2_subset_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d4_subset_1,axiom,(
    ! [A: $i] :
      ( ( k2_subset_1 @ A )
      = A ) )).

thf('52',plain,(
    ! [X52: $i] :
      ( ( k2_subset_1 @ X52 )
      = X52 ) ),
    inference(cnf,[status(esa)],[d4_subset_1])).

thf('53',plain,(
    ( k4_subset_1 @ sk_A @ sk_B @ ( k3_subset_1 @ sk_A @ sk_B ) )
 != sk_A ),
    inference(demod,[status(thm)],['51','52'])).

thf('54',plain,
    ( ( k3_subset_1 @ sk_A @ sk_B )
    = ( k4_xboole_0 @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['3','4'])).

thf('55',plain,(
    ( k4_subset_1 @ sk_A @ sk_B @ ( k4_xboole_0 @ sk_A @ sk_B ) )
 != sk_A ),
    inference(demod,[status(thm)],['53','54'])).

thf('56',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['50','55'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.btCPJm5054
% 0.12/0.34  % Computer   : n003.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % DateTime   : Tue Dec  1 18:52:27 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running portfolio for 600 s
% 0.12/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.12/0.34  % Number of cores: 8
% 0.12/0.34  % Python version: Python 3.6.8
% 0.12/0.34  % Running in FO mode
% 0.35/0.53  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.35/0.53  % Solved by: fo/fo7.sh
% 0.35/0.53  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.35/0.53  % done 172 iterations in 0.084s
% 0.35/0.53  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.35/0.53  % SZS output start Refutation
% 0.35/0.53  thf(k5_xboole_0_type, type, k5_xboole_0: $i > $i > $i).
% 0.35/0.53  thf(sk_C_type, type, sk_C: $i > $i > $i).
% 0.35/0.53  thf(k2_tarski_type, type, k2_tarski: $i > $i > $i).
% 0.35/0.53  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.35/0.53  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.35/0.53  thf(k1_xboole_0_type, type, k1_xboole_0: $i).
% 0.35/0.53  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.35/0.53  thf(sk_A_type, type, sk_A: $i).
% 0.35/0.53  thf(k3_tarski_type, type, k3_tarski: $i > $i).
% 0.35/0.53  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.35/0.53  thf(k4_subset_1_type, type, k4_subset_1: $i > $i > $i > $i).
% 0.35/0.53  thf(sk_B_type, type, sk_B: $i).
% 0.35/0.53  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.35/0.53  thf(k3_subset_1_type, type, k3_subset_1: $i > $i > $i).
% 0.35/0.53  thf(k2_subset_1_type, type, k2_subset_1: $i > $i).
% 0.35/0.53  thf(k3_xboole_0_type, type, k3_xboole_0: $i > $i > $i).
% 0.35/0.53  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.35/0.53  thf(k2_xboole_0_type, type, k2_xboole_0: $i > $i > $i).
% 0.35/0.53  thf(t25_subset_1, conjecture,
% 0.35/0.53    (![A:$i,B:$i]:
% 0.35/0.53     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.35/0.53       ( ( k4_subset_1 @ A @ B @ ( k3_subset_1 @ A @ B ) ) =
% 0.35/0.53         ( k2_subset_1 @ A ) ) ))).
% 0.35/0.53  thf(zf_stmt_0, negated_conjecture,
% 0.35/0.53    (~( ![A:$i,B:$i]:
% 0.35/0.53        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.35/0.53          ( ( k4_subset_1 @ A @ B @ ( k3_subset_1 @ A @ B ) ) =
% 0.35/0.53            ( k2_subset_1 @ A ) ) ) )),
% 0.35/0.53    inference('cnf.neg', [status(esa)], [t25_subset_1])).
% 0.35/0.53  thf('0', plain, ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.35/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.35/0.53  thf(dt_k3_subset_1, axiom,
% 0.35/0.53    (![A:$i,B:$i]:
% 0.35/0.53     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.35/0.53       ( m1_subset_1 @ ( k3_subset_1 @ A @ B ) @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.35/0.53  thf('1', plain,
% 0.35/0.53      (![X55 : $i, X56 : $i]:
% 0.35/0.53         ((m1_subset_1 @ (k3_subset_1 @ X55 @ X56) @ (k1_zfmisc_1 @ X55))
% 0.35/0.53          | ~ (m1_subset_1 @ X56 @ (k1_zfmisc_1 @ X55)))),
% 0.35/0.53      inference('cnf', [status(esa)], [dt_k3_subset_1])).
% 0.35/0.53  thf('2', plain,
% 0.35/0.53      ((m1_subset_1 @ (k3_subset_1 @ sk_A @ sk_B) @ (k1_zfmisc_1 @ sk_A))),
% 0.35/0.53      inference('sup-', [status(thm)], ['0', '1'])).
% 0.35/0.53  thf('3', plain, ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.35/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.35/0.53  thf(d5_subset_1, axiom,
% 0.35/0.53    (![A:$i,B:$i]:
% 0.35/0.53     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.35/0.53       ( ( k3_subset_1 @ A @ B ) = ( k4_xboole_0 @ A @ B ) ) ))).
% 0.35/0.53  thf('4', plain,
% 0.35/0.53      (![X53 : $i, X54 : $i]:
% 0.35/0.53         (((k3_subset_1 @ X53 @ X54) = (k4_xboole_0 @ X53 @ X54))
% 0.35/0.53          | ~ (m1_subset_1 @ X54 @ (k1_zfmisc_1 @ X53)))),
% 0.35/0.53      inference('cnf', [status(esa)], [d5_subset_1])).
% 0.35/0.53  thf('5', plain,
% 0.35/0.53      (((k3_subset_1 @ sk_A @ sk_B) = (k4_xboole_0 @ sk_A @ sk_B))),
% 0.35/0.53      inference('sup-', [status(thm)], ['3', '4'])).
% 0.35/0.53  thf('6', plain,
% 0.35/0.53      ((m1_subset_1 @ (k4_xboole_0 @ sk_A @ sk_B) @ (k1_zfmisc_1 @ sk_A))),
% 0.35/0.53      inference('demod', [status(thm)], ['2', '5'])).
% 0.35/0.53  thf('7', plain, ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.35/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.35/0.53  thf(redefinition_k4_subset_1, axiom,
% 0.35/0.53    (![A:$i,B:$i,C:$i]:
% 0.35/0.53     ( ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) & 
% 0.35/0.53         ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) ) =>
% 0.35/0.53       ( ( k4_subset_1 @ A @ B @ C ) = ( k2_xboole_0 @ B @ C ) ) ))).
% 0.35/0.53  thf('8', plain,
% 0.35/0.53      (![X58 : $i, X59 : $i, X60 : $i]:
% 0.35/0.53         (~ (m1_subset_1 @ X58 @ (k1_zfmisc_1 @ X59))
% 0.35/0.53          | ~ (m1_subset_1 @ X60 @ (k1_zfmisc_1 @ X59))
% 0.35/0.53          | ((k4_subset_1 @ X59 @ X58 @ X60) = (k2_xboole_0 @ X58 @ X60)))),
% 0.35/0.53      inference('cnf', [status(esa)], [redefinition_k4_subset_1])).
% 0.35/0.53  thf('9', plain,
% 0.35/0.53      (![X0 : $i]:
% 0.35/0.53         (((k4_subset_1 @ sk_A @ sk_B @ X0) = (k2_xboole_0 @ sk_B @ X0))
% 0.35/0.53          | ~ (m1_subset_1 @ X0 @ (k1_zfmisc_1 @ sk_A)))),
% 0.35/0.53      inference('sup-', [status(thm)], ['7', '8'])).
% 0.35/0.53  thf('10', plain,
% 0.35/0.53      (((k4_subset_1 @ sk_A @ sk_B @ (k4_xboole_0 @ sk_A @ sk_B))
% 0.35/0.53         = (k2_xboole_0 @ sk_B @ (k4_xboole_0 @ sk_A @ sk_B)))),
% 0.35/0.53      inference('sup-', [status(thm)], ['6', '9'])).
% 0.35/0.53  thf(t39_xboole_1, axiom,
% 0.35/0.53    (![A:$i,B:$i]:
% 0.35/0.53     ( ( k2_xboole_0 @ A @ ( k4_xboole_0 @ B @ A ) ) = ( k2_xboole_0 @ A @ B ) ))).
% 0.35/0.53  thf('11', plain,
% 0.35/0.53      (![X10 : $i, X11 : $i]:
% 0.35/0.53         ((k2_xboole_0 @ X10 @ (k4_xboole_0 @ X11 @ X10))
% 0.35/0.53           = (k2_xboole_0 @ X10 @ X11))),
% 0.35/0.53      inference('cnf', [status(esa)], [t39_xboole_1])).
% 0.35/0.53  thf('12', plain, ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.35/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.35/0.53  thf(d2_subset_1, axiom,
% 0.35/0.53    (![A:$i,B:$i]:
% 0.35/0.53     ( ( ( v1_xboole_0 @ A ) =>
% 0.35/0.53         ( ( m1_subset_1 @ B @ A ) <=> ( v1_xboole_0 @ B ) ) ) & 
% 0.35/0.53       ( ( ~( v1_xboole_0 @ A ) ) =>
% 0.35/0.53         ( ( m1_subset_1 @ B @ A ) <=> ( r2_hidden @ B @ A ) ) ) ))).
% 0.35/0.53  thf('13', plain,
% 0.35/0.53      (![X49 : $i, X50 : $i]:
% 0.35/0.53         (~ (m1_subset_1 @ X49 @ X50)
% 0.35/0.53          | (r2_hidden @ X49 @ X50)
% 0.35/0.53          | (v1_xboole_0 @ X50))),
% 0.35/0.53      inference('cnf', [status(esa)], [d2_subset_1])).
% 0.35/0.53  thf('14', plain,
% 0.35/0.53      (((v1_xboole_0 @ (k1_zfmisc_1 @ sk_A))
% 0.35/0.53        | (r2_hidden @ sk_B @ (k1_zfmisc_1 @ sk_A)))),
% 0.35/0.53      inference('sup-', [status(thm)], ['12', '13'])).
% 0.35/0.53  thf(fc1_subset_1, axiom,
% 0.35/0.53    (![A:$i]: ( ~( v1_xboole_0 @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.35/0.53  thf('15', plain, (![X57 : $i]: ~ (v1_xboole_0 @ (k1_zfmisc_1 @ X57))),
% 0.35/0.53      inference('cnf', [status(esa)], [fc1_subset_1])).
% 0.35/0.53  thf('16', plain, ((r2_hidden @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.35/0.53      inference('clc', [status(thm)], ['14', '15'])).
% 0.35/0.53  thf(d1_zfmisc_1, axiom,
% 0.35/0.53    (![A:$i,B:$i]:
% 0.35/0.53     ( ( ( B ) = ( k1_zfmisc_1 @ A ) ) <=>
% 0.35/0.53       ( ![C:$i]: ( ( r2_hidden @ C @ B ) <=> ( r1_tarski @ C @ A ) ) ) ))).
% 0.35/0.53  thf('17', plain,
% 0.35/0.53      (![X43 : $i, X44 : $i, X45 : $i]:
% 0.35/0.53         (~ (r2_hidden @ X45 @ X44)
% 0.35/0.53          | (r1_tarski @ X45 @ X43)
% 0.35/0.53          | ((X44) != (k1_zfmisc_1 @ X43)))),
% 0.35/0.53      inference('cnf', [status(esa)], [d1_zfmisc_1])).
% 0.35/0.53  thf('18', plain,
% 0.35/0.53      (![X43 : $i, X45 : $i]:
% 0.35/0.53         ((r1_tarski @ X45 @ X43) | ~ (r2_hidden @ X45 @ (k1_zfmisc_1 @ X43)))),
% 0.35/0.53      inference('simplify', [status(thm)], ['17'])).
% 0.35/0.53  thf('19', plain, ((r1_tarski @ sk_B @ sk_A)),
% 0.35/0.53      inference('sup-', [status(thm)], ['16', '18'])).
% 0.35/0.53  thf(t28_xboole_1, axiom,
% 0.35/0.53    (![A:$i,B:$i]:
% 0.35/0.53     ( ( r1_tarski @ A @ B ) => ( ( k3_xboole_0 @ A @ B ) = ( A ) ) ))).
% 0.35/0.53  thf('20', plain,
% 0.35/0.53      (![X8 : $i, X9 : $i]:
% 0.35/0.53         (((k3_xboole_0 @ X8 @ X9) = (X8)) | ~ (r1_tarski @ X8 @ X9))),
% 0.35/0.53      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.35/0.53  thf('21', plain, (((k3_xboole_0 @ sk_B @ sk_A) = (sk_B))),
% 0.35/0.53      inference('sup-', [status(thm)], ['19', '20'])).
% 0.35/0.53  thf(t100_xboole_1, axiom,
% 0.35/0.53    (![A:$i,B:$i]:
% 0.35/0.53     ( ( k4_xboole_0 @ A @ B ) = ( k5_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) ))).
% 0.35/0.53  thf('22', plain,
% 0.35/0.53      (![X4 : $i, X5 : $i]:
% 0.35/0.53         ((k4_xboole_0 @ X4 @ X5)
% 0.35/0.53           = (k5_xboole_0 @ X4 @ (k3_xboole_0 @ X4 @ X5)))),
% 0.35/0.53      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.35/0.53  thf('23', plain,
% 0.35/0.53      (((k4_xboole_0 @ sk_B @ sk_A) = (k5_xboole_0 @ sk_B @ sk_B))),
% 0.35/0.53      inference('sup+', [status(thm)], ['21', '22'])).
% 0.35/0.53  thf(t92_xboole_1, axiom,
% 0.35/0.53    (![A:$i]: ( ( k5_xboole_0 @ A @ A ) = ( k1_xboole_0 ) ))).
% 0.35/0.53  thf('24', plain, (![X12 : $i]: ((k5_xboole_0 @ X12 @ X12) = (k1_xboole_0))),
% 0.35/0.53      inference('cnf', [status(esa)], [t92_xboole_1])).
% 0.35/0.53  thf('25', plain, (((k4_xboole_0 @ sk_B @ sk_A) = (k1_xboole_0))),
% 0.35/0.53      inference('demod', [status(thm)], ['23', '24'])).
% 0.35/0.53  thf('26', plain,
% 0.35/0.53      (![X10 : $i, X11 : $i]:
% 0.35/0.53         ((k2_xboole_0 @ X10 @ (k4_xboole_0 @ X11 @ X10))
% 0.35/0.53           = (k2_xboole_0 @ X10 @ X11))),
% 0.35/0.53      inference('cnf', [status(esa)], [t39_xboole_1])).
% 0.35/0.53  thf('27', plain,
% 0.35/0.53      (((k2_xboole_0 @ sk_A @ k1_xboole_0) = (k2_xboole_0 @ sk_A @ sk_B))),
% 0.35/0.53      inference('sup+', [status(thm)], ['25', '26'])).
% 0.35/0.53  thf(d3_tarski, axiom,
% 0.35/0.53    (![A:$i,B:$i]:
% 0.35/0.53     ( ( r1_tarski @ A @ B ) <=>
% 0.35/0.53       ( ![C:$i]: ( ( r2_hidden @ C @ A ) => ( r2_hidden @ C @ B ) ) ) ))).
% 0.35/0.53  thf('28', plain,
% 0.35/0.53      (![X1 : $i, X3 : $i]:
% 0.35/0.53         ((r1_tarski @ X1 @ X3) | (r2_hidden @ (sk_C @ X3 @ X1) @ X1))),
% 0.35/0.53      inference('cnf', [status(esa)], [d3_tarski])).
% 0.35/0.53  thf('29', plain,
% 0.35/0.53      (![X1 : $i, X3 : $i]:
% 0.35/0.53         ((r1_tarski @ X1 @ X3) | ~ (r2_hidden @ (sk_C @ X3 @ X1) @ X3))),
% 0.35/0.53      inference('cnf', [status(esa)], [d3_tarski])).
% 0.35/0.53  thf('30', plain,
% 0.35/0.53      (![X0 : $i]: ((r1_tarski @ X0 @ X0) | (r1_tarski @ X0 @ X0))),
% 0.35/0.53      inference('sup-', [status(thm)], ['28', '29'])).
% 0.35/0.53  thf('31', plain, (![X0 : $i]: (r1_tarski @ X0 @ X0)),
% 0.35/0.53      inference('simplify', [status(thm)], ['30'])).
% 0.35/0.53  thf('32', plain,
% 0.35/0.53      (![X8 : $i, X9 : $i]:
% 0.35/0.53         (((k3_xboole_0 @ X8 @ X9) = (X8)) | ~ (r1_tarski @ X8 @ X9))),
% 0.35/0.53      inference('cnf', [status(esa)], [t28_xboole_1])).
% 0.35/0.53  thf('33', plain, (![X0 : $i]: ((k3_xboole_0 @ X0 @ X0) = (X0))),
% 0.35/0.53      inference('sup-', [status(thm)], ['31', '32'])).
% 0.35/0.53  thf('34', plain,
% 0.35/0.53      (![X4 : $i, X5 : $i]:
% 0.35/0.53         ((k4_xboole_0 @ X4 @ X5)
% 0.35/0.53           = (k5_xboole_0 @ X4 @ (k3_xboole_0 @ X4 @ X5)))),
% 0.35/0.53      inference('cnf', [status(esa)], [t100_xboole_1])).
% 0.35/0.53  thf('35', plain,
% 0.35/0.53      (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k5_xboole_0 @ X0 @ X0))),
% 0.35/0.53      inference('sup+', [status(thm)], ['33', '34'])).
% 0.35/0.53  thf('36', plain, (![X12 : $i]: ((k5_xboole_0 @ X12 @ X12) = (k1_xboole_0))),
% 0.35/0.53      inference('cnf', [status(esa)], [t92_xboole_1])).
% 0.35/0.53  thf('37', plain, (![X0 : $i]: ((k4_xboole_0 @ X0 @ X0) = (k1_xboole_0))),
% 0.35/0.53      inference('demod', [status(thm)], ['35', '36'])).
% 0.35/0.53  thf('38', plain,
% 0.35/0.53      (![X10 : $i, X11 : $i]:
% 0.35/0.53         ((k2_xboole_0 @ X10 @ (k4_xboole_0 @ X11 @ X10))
% 0.35/0.53           = (k2_xboole_0 @ X10 @ X11))),
% 0.35/0.53      inference('cnf', [status(esa)], [t39_xboole_1])).
% 0.35/0.53  thf('39', plain,
% 0.35/0.53      (![X0 : $i]: ((k2_xboole_0 @ X0 @ k1_xboole_0) = (k2_xboole_0 @ X0 @ X0))),
% 0.35/0.53      inference('sup+', [status(thm)], ['37', '38'])).
% 0.35/0.53  thf('40', plain, (![X0 : $i]: ((k3_xboole_0 @ X0 @ X0) = (X0))),
% 0.35/0.53      inference('sup-', [status(thm)], ['31', '32'])).
% 0.35/0.53  thf(t22_xboole_1, axiom,
% 0.35/0.53    (![A:$i,B:$i]: ( ( k2_xboole_0 @ A @ ( k3_xboole_0 @ A @ B ) ) = ( A ) ))).
% 0.35/0.53  thf('41', plain,
% 0.35/0.53      (![X6 : $i, X7 : $i]:
% 0.35/0.53         ((k2_xboole_0 @ X6 @ (k3_xboole_0 @ X6 @ X7)) = (X6))),
% 0.35/0.53      inference('cnf', [status(esa)], [t22_xboole_1])).
% 0.35/0.53  thf('42', plain, (![X0 : $i]: ((k2_xboole_0 @ X0 @ X0) = (X0))),
% 0.35/0.53      inference('sup+', [status(thm)], ['40', '41'])).
% 0.35/0.53  thf('43', plain, (![X0 : $i]: ((k2_xboole_0 @ X0 @ k1_xboole_0) = (X0))),
% 0.35/0.53      inference('demod', [status(thm)], ['39', '42'])).
% 0.35/0.53  thf(commutativity_k2_tarski, axiom,
% 0.35/0.53    (![A:$i,B:$i]: ( ( k2_tarski @ A @ B ) = ( k2_tarski @ B @ A ) ))).
% 0.35/0.53  thf('44', plain,
% 0.35/0.53      (![X13 : $i, X14 : $i]:
% 0.35/0.53         ((k2_tarski @ X14 @ X13) = (k2_tarski @ X13 @ X14))),
% 0.35/0.53      inference('cnf', [status(esa)], [commutativity_k2_tarski])).
% 0.35/0.53  thf(l51_zfmisc_1, axiom,
% 0.35/0.53    (![A:$i,B:$i]:
% 0.35/0.53     ( ( k3_tarski @ ( k2_tarski @ A @ B ) ) = ( k2_xboole_0 @ A @ B ) ))).
% 0.35/0.53  thf('45', plain,
% 0.35/0.53      (![X47 : $i, X48 : $i]:
% 0.35/0.53         ((k3_tarski @ (k2_tarski @ X47 @ X48)) = (k2_xboole_0 @ X47 @ X48))),
% 0.35/0.53      inference('cnf', [status(esa)], [l51_zfmisc_1])).
% 0.35/0.53  thf('46', plain,
% 0.35/0.53      (![X0 : $i, X1 : $i]:
% 0.35/0.53         ((k3_tarski @ (k2_tarski @ X1 @ X0)) = (k2_xboole_0 @ X0 @ X1))),
% 0.35/0.53      inference('sup+', [status(thm)], ['44', '45'])).
% 0.35/0.53  thf('47', plain,
% 0.35/0.53      (![X47 : $i, X48 : $i]:
% 0.35/0.53         ((k3_tarski @ (k2_tarski @ X47 @ X48)) = (k2_xboole_0 @ X47 @ X48))),
% 0.35/0.53      inference('cnf', [status(esa)], [l51_zfmisc_1])).
% 0.35/0.53  thf('48', plain,
% 0.35/0.53      (![X0 : $i, X1 : $i]: ((k2_xboole_0 @ X1 @ X0) = (k2_xboole_0 @ X0 @ X1))),
% 0.35/0.53      inference('sup+', [status(thm)], ['46', '47'])).
% 0.35/0.53  thf('49', plain, (((sk_A) = (k2_xboole_0 @ sk_B @ sk_A))),
% 0.35/0.53      inference('demod', [status(thm)], ['27', '43', '48'])).
% 0.35/0.53  thf('50', plain,
% 0.35/0.53      (((k4_subset_1 @ sk_A @ sk_B @ (k4_xboole_0 @ sk_A @ sk_B)) = (sk_A))),
% 0.35/0.53      inference('demod', [status(thm)], ['10', '11', '49'])).
% 0.35/0.53  thf('51', plain,
% 0.35/0.53      (((k4_subset_1 @ sk_A @ sk_B @ (k3_subset_1 @ sk_A @ sk_B))
% 0.35/0.53         != (k2_subset_1 @ sk_A))),
% 0.35/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.35/0.53  thf(d4_subset_1, axiom, (![A:$i]: ( ( k2_subset_1 @ A ) = ( A ) ))).
% 0.35/0.53  thf('52', plain, (![X52 : $i]: ((k2_subset_1 @ X52) = (X52))),
% 0.35/0.53      inference('cnf', [status(esa)], [d4_subset_1])).
% 0.35/0.53  thf('53', plain,
% 0.35/0.53      (((k4_subset_1 @ sk_A @ sk_B @ (k3_subset_1 @ sk_A @ sk_B)) != (sk_A))),
% 0.35/0.53      inference('demod', [status(thm)], ['51', '52'])).
% 0.35/0.53  thf('54', plain,
% 0.35/0.53      (((k3_subset_1 @ sk_A @ sk_B) = (k4_xboole_0 @ sk_A @ sk_B))),
% 0.35/0.53      inference('sup-', [status(thm)], ['3', '4'])).
% 0.35/0.53  thf('55', plain,
% 0.35/0.53      (((k4_subset_1 @ sk_A @ sk_B @ (k4_xboole_0 @ sk_A @ sk_B)) != (sk_A))),
% 0.35/0.53      inference('demod', [status(thm)], ['53', '54'])).
% 0.35/0.53  thf('56', plain, ($false),
% 0.35/0.53      inference('simplify_reflect-', [status(thm)], ['50', '55'])).
% 0.35/0.53  
% 0.35/0.53  % SZS output end Refutation
% 0.35/0.53  
% 0.35/0.54  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
