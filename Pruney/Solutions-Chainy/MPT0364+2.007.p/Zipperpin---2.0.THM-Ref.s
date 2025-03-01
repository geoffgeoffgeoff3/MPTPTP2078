%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.x2qrFQai09

% Computer   : n006.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:38:03 EST 2020

% Result     : Theorem 0.22s
% Output     : Refutation 0.22s
% Verified   : 
% Statistics : Number of formulae       :   77 ( 151 expanded)
%              Number of leaves         :   17 (  47 expanded)
%              Depth                    :   11
%              Number of atoms          :  524 (1445 expanded)
%              Number of equality atoms :   24 (  39 expanded)
%              Maximal formula depth    :   11 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(sk_C_type,type,(
    sk_C: $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k4_xboole_0_type,type,(
    k4_xboole_0: $i > $i > $i )).

thf(k3_subset_1_type,type,(
    k3_subset_1: $i > $i > $i )).

thf(r1_xboole_0_type,type,(
    r1_xboole_0: $i > $i > $o )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(t44_subset_1,conjecture,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ! [C: $i] :
          ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) )
         => ( ( r1_xboole_0 @ B @ ( k3_subset_1 @ A @ C ) )
          <=> ( r1_tarski @ B @ C ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i,B: $i] :
        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
       => ! [C: $i] :
            ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) )
           => ( ( r1_xboole_0 @ B @ ( k3_subset_1 @ A @ C ) )
            <=> ( r1_tarski @ B @ C ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t44_subset_1])).

thf('0',plain,
    ( ~ ( r1_tarski @ sk_B @ sk_C )
    | ~ ( r1_xboole_0 @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ~ ( r1_tarski @ sk_B @ sk_C )
   <= ~ ( r1_tarski @ sk_B @ sk_C ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,
    ( ~ ( r1_tarski @ sk_B @ sk_C )
    | ~ ( r1_xboole_0 @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C ) ) ),
    inference(split,[status(esa)],['0'])).

thf('3',plain,
    ( ( r1_tarski @ sk_B @ sk_C )
    | ( r1_xboole_0 @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('4',plain,
    ( ( r1_tarski @ sk_B @ sk_C )
   <= ( r1_tarski @ sk_B @ sk_C ) ),
    inference(split,[status(esa)],['3'])).

thf(t85_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ A @ B )
     => ( r1_xboole_0 @ A @ ( k4_xboole_0 @ C @ B ) ) ) )).

thf('5',plain,(
    ! [X6: $i,X7: $i,X8: $i] :
      ( ~ ( r1_tarski @ X6 @ X7 )
      | ( r1_xboole_0 @ X6 @ ( k4_xboole_0 @ X8 @ X7 ) ) ) ),
    inference(cnf,[status(esa)],[t85_xboole_1])).

thf('6',plain,
    ( ! [X0: $i] :
        ( r1_xboole_0 @ sk_B @ ( k4_xboole_0 @ X0 @ sk_C ) )
   <= ( r1_tarski @ sk_B @ sk_C ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d5_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( k3_subset_1 @ A @ B )
        = ( k4_xboole_0 @ A @ B ) ) ) )).

thf('8',plain,(
    ! [X12: $i,X13: $i] :
      ( ( ( k3_subset_1 @ X12 @ X13 )
        = ( k4_xboole_0 @ X12 @ X13 ) )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ X12 ) ) ) ),
    inference(cnf,[status(esa)],[d5_subset_1])).

thf('9',plain,
    ( ( k3_subset_1 @ sk_A @ sk_C )
    = ( k4_xboole_0 @ sk_A @ sk_C ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('10',plain,
    ( ~ ( r1_xboole_0 @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C ) )
   <= ~ ( r1_xboole_0 @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C ) ) ),
    inference(split,[status(esa)],['0'])).

thf('11',plain,
    ( ~ ( r1_xboole_0 @ sk_B @ ( k4_xboole_0 @ sk_A @ sk_C ) )
   <= ~ ( r1_xboole_0 @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C ) ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,
    ( ( r1_xboole_0 @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C ) )
    | ~ ( r1_tarski @ sk_B @ sk_C ) ),
    inference('sup-',[status(thm)],['6','11'])).

thf('13',plain,(
    ~ ( r1_tarski @ sk_B @ sk_C ) ),
    inference('sat_resolution*',[status(thm)],['2','12'])).

thf('14',plain,(
    ~ ( r1_tarski @ sk_B @ sk_C ) ),
    inference(simpl_trail,[status(thm)],['1','13'])).

thf('15',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(dt_k3_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( m1_subset_1 @ ( k3_subset_1 @ A @ B ) @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('16',plain,(
    ! [X14: $i,X15: $i] :
      ( ( m1_subset_1 @ ( k3_subset_1 @ X14 @ X15 ) @ ( k1_zfmisc_1 @ X14 ) )
      | ~ ( m1_subset_1 @ X15 @ ( k1_zfmisc_1 @ X14 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k3_subset_1])).

thf('17',plain,(
    m1_subset_1 @ ( k3_subset_1 @ sk_A @ sk_B ) @ ( k1_zfmisc_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['15','16'])).

thf('18',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    ! [X12: $i,X13: $i] :
      ( ( ( k3_subset_1 @ X12 @ X13 )
        = ( k4_xboole_0 @ X12 @ X13 ) )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ X12 ) ) ) ),
    inference(cnf,[status(esa)],[d5_subset_1])).

thf('20',plain,
    ( ( k3_subset_1 @ sk_A @ sk_B )
    = ( k4_xboole_0 @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    m1_subset_1 @ ( k4_xboole_0 @ sk_A @ sk_B ) @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(demod,[status(thm)],['17','20'])).

thf('22',plain,(
    ! [X12: $i,X13: $i] :
      ( ( ( k3_subset_1 @ X12 @ X13 )
        = ( k4_xboole_0 @ X12 @ X13 ) )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ X12 ) ) ) ),
    inference(cnf,[status(esa)],[d5_subset_1])).

thf('23',plain,
    ( ( k3_subset_1 @ sk_A @ ( k4_xboole_0 @ sk_A @ sk_B ) )
    = ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_A @ sk_B ) ) ),
    inference('sup-',[status(thm)],['21','22'])).

thf('24',plain,(
    m1_subset_1 @ sk_B @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(involutiveness_k3_subset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) )
     => ( ( k3_subset_1 @ A @ ( k3_subset_1 @ A @ B ) )
        = B ) ) )).

thf('25',plain,(
    ! [X16: $i,X17: $i] :
      ( ( ( k3_subset_1 @ X17 @ ( k3_subset_1 @ X17 @ X16 ) )
        = X16 )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ X17 ) ) ) ),
    inference(cnf,[status(esa)],[involutiveness_k3_subset_1])).

thf('26',plain,
    ( ( k3_subset_1 @ sk_A @ ( k3_subset_1 @ sk_A @ sk_B ) )
    = sk_B ),
    inference('sup-',[status(thm)],['24','25'])).

thf('27',plain,
    ( ( k3_subset_1 @ sk_A @ sk_B )
    = ( k4_xboole_0 @ sk_A @ sk_B ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('28',plain,
    ( ( k3_subset_1 @ sk_A @ ( k4_xboole_0 @ sk_A @ sk_B ) )
    = sk_B ),
    inference(demod,[status(thm)],['26','27'])).

thf('29',plain,
    ( ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_A @ sk_B ) )
    = sk_B ),
    inference('sup+',[status(thm)],['23','28'])).

thf(d10_xboole_0,axiom,(
    ! [A: $i,B: $i] :
      ( ( A = B )
    <=> ( ( r1_tarski @ A @ B )
        & ( r1_tarski @ B @ A ) ) ) )).

thf('30',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r1_tarski @ X0 @ X1 )
      | ( X0 != X1 ) ) ),
    inference(cnf,[status(esa)],[d10_xboole_0])).

thf('31',plain,(
    ! [X1: $i] :
      ( r1_tarski @ X1 @ X1 ) ),
    inference(simplify,[status(thm)],['30'])).

thf(t106_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( r1_tarski @ A @ ( k4_xboole_0 @ B @ C ) )
     => ( ( r1_tarski @ A @ B )
        & ( r1_xboole_0 @ A @ C ) ) ) )).

thf('32',plain,(
    ! [X3: $i,X4: $i,X5: $i] :
      ( ( r1_tarski @ X3 @ X4 )
      | ~ ( r1_tarski @ X3 @ ( k4_xboole_0 @ X4 @ X5 ) ) ) ),
    inference(cnf,[status(esa)],[t106_xboole_1])).

thf('33',plain,(
    ! [X0: $i,X1: $i] :
      ( r1_tarski @ ( k4_xboole_0 @ X1 @ X0 ) @ X1 ) ),
    inference('sup-',[status(thm)],['31','32'])).

thf('34',plain,(
    r1_tarski @ sk_B @ sk_A ),
    inference('sup+',[status(thm)],['29','33'])).

thf('35',plain,
    ( ( k3_subset_1 @ sk_A @ sk_C )
    = ( k4_xboole_0 @ sk_A @ sk_C ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('36',plain,
    ( ( r1_xboole_0 @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C ) )
   <= ( r1_xboole_0 @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C ) ) ),
    inference(split,[status(esa)],['3'])).

thf('37',plain,
    ( ( r1_xboole_0 @ sk_B @ ( k4_xboole_0 @ sk_A @ sk_C ) )
   <= ( r1_xboole_0 @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C ) ) ),
    inference('sup+',[status(thm)],['35','36'])).

thf('38',plain,
    ( ( r1_xboole_0 @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C ) )
    | ( r1_tarski @ sk_B @ sk_C ) ),
    inference(split,[status(esa)],['3'])).

thf('39',plain,(
    r1_xboole_0 @ sk_B @ ( k3_subset_1 @ sk_A @ sk_C ) ),
    inference('sat_resolution*',[status(thm)],['2','12','38'])).

thf('40',plain,(
    r1_xboole_0 @ sk_B @ ( k4_xboole_0 @ sk_A @ sk_C ) ),
    inference(simpl_trail,[status(thm)],['37','39'])).

thf(t86_xboole_1,axiom,(
    ! [A: $i,B: $i,C: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( r1_xboole_0 @ A @ C ) )
     => ( r1_tarski @ A @ ( k4_xboole_0 @ B @ C ) ) ) )).

thf('41',plain,(
    ! [X9: $i,X10: $i,X11: $i] :
      ( ~ ( r1_tarski @ X9 @ X10 )
      | ~ ( r1_xboole_0 @ X9 @ X11 )
      | ( r1_tarski @ X9 @ ( k4_xboole_0 @ X10 @ X11 ) ) ) ),
    inference(cnf,[status(esa)],[t86_xboole_1])).

thf('42',plain,(
    ! [X0: $i] :
      ( ( r1_tarski @ sk_B @ ( k4_xboole_0 @ X0 @ ( k4_xboole_0 @ sk_A @ sk_C ) ) )
      | ~ ( r1_tarski @ sk_B @ X0 ) ) ),
    inference('sup-',[status(thm)],['40','41'])).

thf('43',plain,(
    r1_tarski @ sk_B @ ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_A @ sk_C ) ) ),
    inference('sup-',[status(thm)],['34','42'])).

thf('44',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('45',plain,(
    ! [X14: $i,X15: $i] :
      ( ( m1_subset_1 @ ( k3_subset_1 @ X14 @ X15 ) @ ( k1_zfmisc_1 @ X14 ) )
      | ~ ( m1_subset_1 @ X15 @ ( k1_zfmisc_1 @ X14 ) ) ) ),
    inference(cnf,[status(esa)],[dt_k3_subset_1])).

thf('46',plain,(
    m1_subset_1 @ ( k3_subset_1 @ sk_A @ sk_C ) @ ( k1_zfmisc_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['44','45'])).

thf('47',plain,
    ( ( k3_subset_1 @ sk_A @ sk_C )
    = ( k4_xboole_0 @ sk_A @ sk_C ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('48',plain,(
    m1_subset_1 @ ( k4_xboole_0 @ sk_A @ sk_C ) @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(demod,[status(thm)],['46','47'])).

thf('49',plain,(
    ! [X12: $i,X13: $i] :
      ( ( ( k3_subset_1 @ X12 @ X13 )
        = ( k4_xboole_0 @ X12 @ X13 ) )
      | ~ ( m1_subset_1 @ X13 @ ( k1_zfmisc_1 @ X12 ) ) ) ),
    inference(cnf,[status(esa)],[d5_subset_1])).

thf('50',plain,
    ( ( k3_subset_1 @ sk_A @ ( k4_xboole_0 @ sk_A @ sk_C ) )
    = ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_A @ sk_C ) ) ),
    inference('sup-',[status(thm)],['48','49'])).

thf('51',plain,(
    m1_subset_1 @ sk_C @ ( k1_zfmisc_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('52',plain,(
    ! [X16: $i,X17: $i] :
      ( ( ( k3_subset_1 @ X17 @ ( k3_subset_1 @ X17 @ X16 ) )
        = X16 )
      | ~ ( m1_subset_1 @ X16 @ ( k1_zfmisc_1 @ X17 ) ) ) ),
    inference(cnf,[status(esa)],[involutiveness_k3_subset_1])).

thf('53',plain,
    ( ( k3_subset_1 @ sk_A @ ( k3_subset_1 @ sk_A @ sk_C ) )
    = sk_C ),
    inference('sup-',[status(thm)],['51','52'])).

thf('54',plain,
    ( ( k3_subset_1 @ sk_A @ sk_C )
    = ( k4_xboole_0 @ sk_A @ sk_C ) ),
    inference('sup-',[status(thm)],['7','8'])).

thf('55',plain,
    ( ( k3_subset_1 @ sk_A @ ( k4_xboole_0 @ sk_A @ sk_C ) )
    = sk_C ),
    inference(demod,[status(thm)],['53','54'])).

thf('56',plain,
    ( ( k4_xboole_0 @ sk_A @ ( k4_xboole_0 @ sk_A @ sk_C ) )
    = sk_C ),
    inference('sup+',[status(thm)],['50','55'])).

thf('57',plain,(
    r1_tarski @ sk_B @ sk_C ),
    inference(demod,[status(thm)],['43','56'])).

thf('58',plain,(
    $false ),
    inference(demod,[status(thm)],['14','57'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.x2qrFQai09
% 0.12/0.36  % Computer   : n006.cluster.edu
% 0.12/0.36  % Model      : x86_64 x86_64
% 0.12/0.36  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.36  % Memory     : 8042.1875MB
% 0.12/0.36  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.36  % CPULimit   : 60
% 0.12/0.36  % DateTime   : Tue Dec  1 12:46:08 EST 2020
% 0.12/0.36  % CPUTime    : 
% 0.12/0.36  % Running portfolio for 600 s
% 0.12/0.36  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.12/0.36  % Number of cores: 8
% 0.12/0.36  % Python version: Python 3.6.8
% 0.12/0.36  % Running in FO mode
% 0.22/0.53  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.22/0.53  % Solved by: fo/fo7.sh
% 0.22/0.53  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.22/0.53  % done 142 iterations in 0.058s
% 0.22/0.53  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.22/0.53  % SZS output start Refutation
% 0.22/0.53  thf(sk_C_type, type, sk_C: $i).
% 0.22/0.53  thf(sk_A_type, type, sk_A: $i).
% 0.22/0.53  thf(k4_xboole_0_type, type, k4_xboole_0: $i > $i > $i).
% 0.22/0.53  thf(k3_subset_1_type, type, k3_subset_1: $i > $i > $i).
% 0.22/0.53  thf(r1_xboole_0_type, type, r1_xboole_0: $i > $i > $o).
% 0.22/0.53  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.22/0.53  thf(sk_B_type, type, sk_B: $i).
% 0.22/0.53  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.22/0.53  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.22/0.53  thf(t44_subset_1, conjecture,
% 0.22/0.53    (![A:$i,B:$i]:
% 0.22/0.53     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.53       ( ![C:$i]:
% 0.22/0.53         ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.53           ( ( r1_xboole_0 @ B @ ( k3_subset_1 @ A @ C ) ) <=>
% 0.22/0.53             ( r1_tarski @ B @ C ) ) ) ) ))).
% 0.22/0.53  thf(zf_stmt_0, negated_conjecture,
% 0.22/0.53    (~( ![A:$i,B:$i]:
% 0.22/0.53        ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.53          ( ![C:$i]:
% 0.22/0.53            ( ( m1_subset_1 @ C @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.53              ( ( r1_xboole_0 @ B @ ( k3_subset_1 @ A @ C ) ) <=>
% 0.22/0.53                ( r1_tarski @ B @ C ) ) ) ) ) )),
% 0.22/0.53    inference('cnf.neg', [status(esa)], [t44_subset_1])).
% 0.22/0.53  thf('0', plain,
% 0.22/0.53      ((~ (r1_tarski @ sk_B @ sk_C)
% 0.22/0.53        | ~ (r1_xboole_0 @ sk_B @ (k3_subset_1 @ sk_A @ sk_C)))),
% 0.22/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.53  thf('1', plain,
% 0.22/0.53      ((~ (r1_tarski @ sk_B @ sk_C)) <= (~ ((r1_tarski @ sk_B @ sk_C)))),
% 0.22/0.53      inference('split', [status(esa)], ['0'])).
% 0.22/0.53  thf('2', plain,
% 0.22/0.53      (~ ((r1_tarski @ sk_B @ sk_C)) | 
% 0.22/0.53       ~ ((r1_xboole_0 @ sk_B @ (k3_subset_1 @ sk_A @ sk_C)))),
% 0.22/0.53      inference('split', [status(esa)], ['0'])).
% 0.22/0.53  thf('3', plain,
% 0.22/0.53      (((r1_tarski @ sk_B @ sk_C)
% 0.22/0.53        | (r1_xboole_0 @ sk_B @ (k3_subset_1 @ sk_A @ sk_C)))),
% 0.22/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.53  thf('4', plain,
% 0.22/0.53      (((r1_tarski @ sk_B @ sk_C)) <= (((r1_tarski @ sk_B @ sk_C)))),
% 0.22/0.53      inference('split', [status(esa)], ['3'])).
% 0.22/0.53  thf(t85_xboole_1, axiom,
% 0.22/0.53    (![A:$i,B:$i,C:$i]:
% 0.22/0.53     ( ( r1_tarski @ A @ B ) => ( r1_xboole_0 @ A @ ( k4_xboole_0 @ C @ B ) ) ))).
% 0.22/0.53  thf('5', plain,
% 0.22/0.53      (![X6 : $i, X7 : $i, X8 : $i]:
% 0.22/0.53         (~ (r1_tarski @ X6 @ X7)
% 0.22/0.53          | (r1_xboole_0 @ X6 @ (k4_xboole_0 @ X8 @ X7)))),
% 0.22/0.53      inference('cnf', [status(esa)], [t85_xboole_1])).
% 0.22/0.53  thf('6', plain,
% 0.22/0.53      ((![X0 : $i]: (r1_xboole_0 @ sk_B @ (k4_xboole_0 @ X0 @ sk_C)))
% 0.22/0.53         <= (((r1_tarski @ sk_B @ sk_C)))),
% 0.22/0.53      inference('sup-', [status(thm)], ['4', '5'])).
% 0.22/0.53  thf('7', plain, ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.53  thf(d5_subset_1, axiom,
% 0.22/0.53    (![A:$i,B:$i]:
% 0.22/0.53     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.53       ( ( k3_subset_1 @ A @ B ) = ( k4_xboole_0 @ A @ B ) ) ))).
% 0.22/0.53  thf('8', plain,
% 0.22/0.53      (![X12 : $i, X13 : $i]:
% 0.22/0.53         (((k3_subset_1 @ X12 @ X13) = (k4_xboole_0 @ X12 @ X13))
% 0.22/0.53          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ X12)))),
% 0.22/0.53      inference('cnf', [status(esa)], [d5_subset_1])).
% 0.22/0.53  thf('9', plain,
% 0.22/0.53      (((k3_subset_1 @ sk_A @ sk_C) = (k4_xboole_0 @ sk_A @ sk_C))),
% 0.22/0.53      inference('sup-', [status(thm)], ['7', '8'])).
% 0.22/0.53  thf('10', plain,
% 0.22/0.53      ((~ (r1_xboole_0 @ sk_B @ (k3_subset_1 @ sk_A @ sk_C)))
% 0.22/0.53         <= (~ ((r1_xboole_0 @ sk_B @ (k3_subset_1 @ sk_A @ sk_C))))),
% 0.22/0.53      inference('split', [status(esa)], ['0'])).
% 0.22/0.53  thf('11', plain,
% 0.22/0.53      ((~ (r1_xboole_0 @ sk_B @ (k4_xboole_0 @ sk_A @ sk_C)))
% 0.22/0.53         <= (~ ((r1_xboole_0 @ sk_B @ (k3_subset_1 @ sk_A @ sk_C))))),
% 0.22/0.53      inference('sup-', [status(thm)], ['9', '10'])).
% 0.22/0.53  thf('12', plain,
% 0.22/0.53      (((r1_xboole_0 @ sk_B @ (k3_subset_1 @ sk_A @ sk_C))) | 
% 0.22/0.53       ~ ((r1_tarski @ sk_B @ sk_C))),
% 0.22/0.53      inference('sup-', [status(thm)], ['6', '11'])).
% 0.22/0.53  thf('13', plain, (~ ((r1_tarski @ sk_B @ sk_C))),
% 0.22/0.53      inference('sat_resolution*', [status(thm)], ['2', '12'])).
% 0.22/0.53  thf('14', plain, (~ (r1_tarski @ sk_B @ sk_C)),
% 0.22/0.53      inference('simpl_trail', [status(thm)], ['1', '13'])).
% 0.22/0.53  thf('15', plain, ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.53  thf(dt_k3_subset_1, axiom,
% 0.22/0.53    (![A:$i,B:$i]:
% 0.22/0.53     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.53       ( m1_subset_1 @ ( k3_subset_1 @ A @ B ) @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.22/0.53  thf('16', plain,
% 0.22/0.53      (![X14 : $i, X15 : $i]:
% 0.22/0.53         ((m1_subset_1 @ (k3_subset_1 @ X14 @ X15) @ (k1_zfmisc_1 @ X14))
% 0.22/0.53          | ~ (m1_subset_1 @ X15 @ (k1_zfmisc_1 @ X14)))),
% 0.22/0.53      inference('cnf', [status(esa)], [dt_k3_subset_1])).
% 0.22/0.53  thf('17', plain,
% 0.22/0.53      ((m1_subset_1 @ (k3_subset_1 @ sk_A @ sk_B) @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.53      inference('sup-', [status(thm)], ['15', '16'])).
% 0.22/0.53  thf('18', plain, ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.53  thf('19', plain,
% 0.22/0.53      (![X12 : $i, X13 : $i]:
% 0.22/0.53         (((k3_subset_1 @ X12 @ X13) = (k4_xboole_0 @ X12 @ X13))
% 0.22/0.53          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ X12)))),
% 0.22/0.53      inference('cnf', [status(esa)], [d5_subset_1])).
% 0.22/0.53  thf('20', plain,
% 0.22/0.53      (((k3_subset_1 @ sk_A @ sk_B) = (k4_xboole_0 @ sk_A @ sk_B))),
% 0.22/0.53      inference('sup-', [status(thm)], ['18', '19'])).
% 0.22/0.53  thf('21', plain,
% 0.22/0.53      ((m1_subset_1 @ (k4_xboole_0 @ sk_A @ sk_B) @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.53      inference('demod', [status(thm)], ['17', '20'])).
% 0.22/0.53  thf('22', plain,
% 0.22/0.53      (![X12 : $i, X13 : $i]:
% 0.22/0.53         (((k3_subset_1 @ X12 @ X13) = (k4_xboole_0 @ X12 @ X13))
% 0.22/0.53          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ X12)))),
% 0.22/0.53      inference('cnf', [status(esa)], [d5_subset_1])).
% 0.22/0.53  thf('23', plain,
% 0.22/0.53      (((k3_subset_1 @ sk_A @ (k4_xboole_0 @ sk_A @ sk_B))
% 0.22/0.53         = (k4_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_A @ sk_B)))),
% 0.22/0.53      inference('sup-', [status(thm)], ['21', '22'])).
% 0.22/0.53  thf('24', plain, ((m1_subset_1 @ sk_B @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.53  thf(involutiveness_k3_subset_1, axiom,
% 0.22/0.53    (![A:$i,B:$i]:
% 0.22/0.53     ( ( m1_subset_1 @ B @ ( k1_zfmisc_1 @ A ) ) =>
% 0.22/0.53       ( ( k3_subset_1 @ A @ ( k3_subset_1 @ A @ B ) ) = ( B ) ) ))).
% 0.22/0.53  thf('25', plain,
% 0.22/0.53      (![X16 : $i, X17 : $i]:
% 0.22/0.53         (((k3_subset_1 @ X17 @ (k3_subset_1 @ X17 @ X16)) = (X16))
% 0.22/0.53          | ~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ X17)))),
% 0.22/0.53      inference('cnf', [status(esa)], [involutiveness_k3_subset_1])).
% 0.22/0.53  thf('26', plain,
% 0.22/0.53      (((k3_subset_1 @ sk_A @ (k3_subset_1 @ sk_A @ sk_B)) = (sk_B))),
% 0.22/0.53      inference('sup-', [status(thm)], ['24', '25'])).
% 0.22/0.53  thf('27', plain,
% 0.22/0.53      (((k3_subset_1 @ sk_A @ sk_B) = (k4_xboole_0 @ sk_A @ sk_B))),
% 0.22/0.53      inference('sup-', [status(thm)], ['18', '19'])).
% 0.22/0.53  thf('28', plain,
% 0.22/0.53      (((k3_subset_1 @ sk_A @ (k4_xboole_0 @ sk_A @ sk_B)) = (sk_B))),
% 0.22/0.53      inference('demod', [status(thm)], ['26', '27'])).
% 0.22/0.53  thf('29', plain,
% 0.22/0.53      (((k4_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_A @ sk_B)) = (sk_B))),
% 0.22/0.53      inference('sup+', [status(thm)], ['23', '28'])).
% 0.22/0.53  thf(d10_xboole_0, axiom,
% 0.22/0.53    (![A:$i,B:$i]:
% 0.22/0.53     ( ( ( A ) = ( B ) ) <=> ( ( r1_tarski @ A @ B ) & ( r1_tarski @ B @ A ) ) ))).
% 0.22/0.53  thf('30', plain,
% 0.22/0.53      (![X0 : $i, X1 : $i]: ((r1_tarski @ X0 @ X1) | ((X0) != (X1)))),
% 0.22/0.53      inference('cnf', [status(esa)], [d10_xboole_0])).
% 0.22/0.53  thf('31', plain, (![X1 : $i]: (r1_tarski @ X1 @ X1)),
% 0.22/0.53      inference('simplify', [status(thm)], ['30'])).
% 0.22/0.53  thf(t106_xboole_1, axiom,
% 0.22/0.53    (![A:$i,B:$i,C:$i]:
% 0.22/0.53     ( ( r1_tarski @ A @ ( k4_xboole_0 @ B @ C ) ) =>
% 0.22/0.53       ( ( r1_tarski @ A @ B ) & ( r1_xboole_0 @ A @ C ) ) ))).
% 0.22/0.53  thf('32', plain,
% 0.22/0.53      (![X3 : $i, X4 : $i, X5 : $i]:
% 0.22/0.53         ((r1_tarski @ X3 @ X4) | ~ (r1_tarski @ X3 @ (k4_xboole_0 @ X4 @ X5)))),
% 0.22/0.53      inference('cnf', [status(esa)], [t106_xboole_1])).
% 0.22/0.53  thf('33', plain,
% 0.22/0.53      (![X0 : $i, X1 : $i]: (r1_tarski @ (k4_xboole_0 @ X1 @ X0) @ X1)),
% 0.22/0.53      inference('sup-', [status(thm)], ['31', '32'])).
% 0.22/0.53  thf('34', plain, ((r1_tarski @ sk_B @ sk_A)),
% 0.22/0.53      inference('sup+', [status(thm)], ['29', '33'])).
% 0.22/0.53  thf('35', plain,
% 0.22/0.53      (((k3_subset_1 @ sk_A @ sk_C) = (k4_xboole_0 @ sk_A @ sk_C))),
% 0.22/0.53      inference('sup-', [status(thm)], ['7', '8'])).
% 0.22/0.53  thf('36', plain,
% 0.22/0.53      (((r1_xboole_0 @ sk_B @ (k3_subset_1 @ sk_A @ sk_C)))
% 0.22/0.53         <= (((r1_xboole_0 @ sk_B @ (k3_subset_1 @ sk_A @ sk_C))))),
% 0.22/0.53      inference('split', [status(esa)], ['3'])).
% 0.22/0.53  thf('37', plain,
% 0.22/0.53      (((r1_xboole_0 @ sk_B @ (k4_xboole_0 @ sk_A @ sk_C)))
% 0.22/0.53         <= (((r1_xboole_0 @ sk_B @ (k3_subset_1 @ sk_A @ sk_C))))),
% 0.22/0.53      inference('sup+', [status(thm)], ['35', '36'])).
% 0.22/0.53  thf('38', plain,
% 0.22/0.53      (((r1_xboole_0 @ sk_B @ (k3_subset_1 @ sk_A @ sk_C))) | 
% 0.22/0.53       ((r1_tarski @ sk_B @ sk_C))),
% 0.22/0.53      inference('split', [status(esa)], ['3'])).
% 0.22/0.53  thf('39', plain, (((r1_xboole_0 @ sk_B @ (k3_subset_1 @ sk_A @ sk_C)))),
% 0.22/0.53      inference('sat_resolution*', [status(thm)], ['2', '12', '38'])).
% 0.22/0.53  thf('40', plain, ((r1_xboole_0 @ sk_B @ (k4_xboole_0 @ sk_A @ sk_C))),
% 0.22/0.53      inference('simpl_trail', [status(thm)], ['37', '39'])).
% 0.22/0.53  thf(t86_xboole_1, axiom,
% 0.22/0.53    (![A:$i,B:$i,C:$i]:
% 0.22/0.53     ( ( ( r1_tarski @ A @ B ) & ( r1_xboole_0 @ A @ C ) ) =>
% 0.22/0.53       ( r1_tarski @ A @ ( k4_xboole_0 @ B @ C ) ) ))).
% 0.22/0.53  thf('41', plain,
% 0.22/0.53      (![X9 : $i, X10 : $i, X11 : $i]:
% 0.22/0.53         (~ (r1_tarski @ X9 @ X10)
% 0.22/0.53          | ~ (r1_xboole_0 @ X9 @ X11)
% 0.22/0.53          | (r1_tarski @ X9 @ (k4_xboole_0 @ X10 @ X11)))),
% 0.22/0.53      inference('cnf', [status(esa)], [t86_xboole_1])).
% 0.22/0.53  thf('42', plain,
% 0.22/0.53      (![X0 : $i]:
% 0.22/0.53         ((r1_tarski @ sk_B @ (k4_xboole_0 @ X0 @ (k4_xboole_0 @ sk_A @ sk_C)))
% 0.22/0.53          | ~ (r1_tarski @ sk_B @ X0))),
% 0.22/0.53      inference('sup-', [status(thm)], ['40', '41'])).
% 0.22/0.53  thf('43', plain,
% 0.22/0.53      ((r1_tarski @ sk_B @ (k4_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_A @ sk_C)))),
% 0.22/0.53      inference('sup-', [status(thm)], ['34', '42'])).
% 0.22/0.53  thf('44', plain, ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.53  thf('45', plain,
% 0.22/0.53      (![X14 : $i, X15 : $i]:
% 0.22/0.53         ((m1_subset_1 @ (k3_subset_1 @ X14 @ X15) @ (k1_zfmisc_1 @ X14))
% 0.22/0.53          | ~ (m1_subset_1 @ X15 @ (k1_zfmisc_1 @ X14)))),
% 0.22/0.53      inference('cnf', [status(esa)], [dt_k3_subset_1])).
% 0.22/0.53  thf('46', plain,
% 0.22/0.53      ((m1_subset_1 @ (k3_subset_1 @ sk_A @ sk_C) @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.53      inference('sup-', [status(thm)], ['44', '45'])).
% 0.22/0.53  thf('47', plain,
% 0.22/0.53      (((k3_subset_1 @ sk_A @ sk_C) = (k4_xboole_0 @ sk_A @ sk_C))),
% 0.22/0.53      inference('sup-', [status(thm)], ['7', '8'])).
% 0.22/0.53  thf('48', plain,
% 0.22/0.53      ((m1_subset_1 @ (k4_xboole_0 @ sk_A @ sk_C) @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.53      inference('demod', [status(thm)], ['46', '47'])).
% 0.22/0.53  thf('49', plain,
% 0.22/0.53      (![X12 : $i, X13 : $i]:
% 0.22/0.53         (((k3_subset_1 @ X12 @ X13) = (k4_xboole_0 @ X12 @ X13))
% 0.22/0.53          | ~ (m1_subset_1 @ X13 @ (k1_zfmisc_1 @ X12)))),
% 0.22/0.53      inference('cnf', [status(esa)], [d5_subset_1])).
% 0.22/0.53  thf('50', plain,
% 0.22/0.53      (((k3_subset_1 @ sk_A @ (k4_xboole_0 @ sk_A @ sk_C))
% 0.22/0.53         = (k4_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_A @ sk_C)))),
% 0.22/0.53      inference('sup-', [status(thm)], ['48', '49'])).
% 0.22/0.53  thf('51', plain, ((m1_subset_1 @ sk_C @ (k1_zfmisc_1 @ sk_A))),
% 0.22/0.53      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.22/0.53  thf('52', plain,
% 0.22/0.53      (![X16 : $i, X17 : $i]:
% 0.22/0.53         (((k3_subset_1 @ X17 @ (k3_subset_1 @ X17 @ X16)) = (X16))
% 0.22/0.53          | ~ (m1_subset_1 @ X16 @ (k1_zfmisc_1 @ X17)))),
% 0.22/0.53      inference('cnf', [status(esa)], [involutiveness_k3_subset_1])).
% 0.22/0.53  thf('53', plain,
% 0.22/0.53      (((k3_subset_1 @ sk_A @ (k3_subset_1 @ sk_A @ sk_C)) = (sk_C))),
% 0.22/0.53      inference('sup-', [status(thm)], ['51', '52'])).
% 0.22/0.53  thf('54', plain,
% 0.22/0.53      (((k3_subset_1 @ sk_A @ sk_C) = (k4_xboole_0 @ sk_A @ sk_C))),
% 0.22/0.53      inference('sup-', [status(thm)], ['7', '8'])).
% 0.22/0.53  thf('55', plain,
% 0.22/0.53      (((k3_subset_1 @ sk_A @ (k4_xboole_0 @ sk_A @ sk_C)) = (sk_C))),
% 0.22/0.53      inference('demod', [status(thm)], ['53', '54'])).
% 0.22/0.53  thf('56', plain,
% 0.22/0.53      (((k4_xboole_0 @ sk_A @ (k4_xboole_0 @ sk_A @ sk_C)) = (sk_C))),
% 0.22/0.53      inference('sup+', [status(thm)], ['50', '55'])).
% 0.22/0.53  thf('57', plain, ((r1_tarski @ sk_B @ sk_C)),
% 0.22/0.53      inference('demod', [status(thm)], ['43', '56'])).
% 0.22/0.53  thf('58', plain, ($false), inference('demod', [status(thm)], ['14', '57'])).
% 0.22/0.53  
% 0.22/0.53  % SZS output end Refutation
% 0.22/0.53  
% 0.22/0.54  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
