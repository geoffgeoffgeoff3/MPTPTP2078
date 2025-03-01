%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.J1QS8jzgfs

% Computer   : n003.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 14:00:42 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   51 (  83 expanded)
%              Number of leaves         :   14 (  27 expanded)
%              Depth                    :    8
%              Number of atoms          :  300 ( 591 expanded)
%              Number of equality atoms :    0 (   0 expanded)
%              Maximal formula depth    :    9 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k1_zfmisc_1_type,type,(
    k1_zfmisc_1: $i > $i )).

thf(k3_tarski_type,type,(
    k3_tarski: $i > $i )).

thf(r1_tarski_type,type,(
    r1_tarski: $i > $i > $o )).

thf(v1_finset_1_type,type,(
    v1_finset_1: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(t25_finset_1,conjecture,(
    ! [A: $i] :
      ( ( ( v1_finset_1 @ A )
        & ! [B: $i] :
            ( ( r2_hidden @ B @ A )
           => ( v1_finset_1 @ B ) ) )
    <=> ( v1_finset_1 @ ( k3_tarski @ A ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ( v1_finset_1 @ A )
          & ! [B: $i] :
              ( ( r2_hidden @ B @ A )
             => ( v1_finset_1 @ B ) ) )
      <=> ( v1_finset_1 @ ( k3_tarski @ A ) ) ) ),
    inference('cnf.neg',[status(esa)],[t25_finset_1])).

thf('0',plain,(
    ! [X7: $i] :
      ( ( v1_finset_1 @ ( k3_tarski @ sk_A ) )
      | ( v1_finset_1 @ X7 )
      | ~ ( r2_hidden @ X7 @ sk_A ) ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('1',plain,
    ( ! [X7: $i] :
        ( ( v1_finset_1 @ X7 )
        | ~ ( r2_hidden @ X7 @ sk_A ) )
    | ( v1_finset_1 @ ( k3_tarski @ sk_A ) ) ),
    inference(split,[status(esa)],['0'])).

thf('2',plain,
    ( ~ ( v1_finset_1 @ ( k3_tarski @ sk_A ) )
    | ( r2_hidden @ sk_B_1 @ sk_A )
    | ~ ( v1_finset_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,
    ( ( r2_hidden @ sk_B_1 @ sk_A )
    | ~ ( v1_finset_1 @ sk_A )
    | ~ ( v1_finset_1 @ ( k3_tarski @ sk_A ) ) ),
    inference(split,[status(esa)],['2'])).

thf('4',plain,
    ( ~ ( v1_finset_1 @ ( k3_tarski @ sk_A ) )
    | ~ ( v1_finset_1 @ sk_B_1 )
    | ~ ( v1_finset_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('5',plain,
    ( ~ ( v1_finset_1 @ sk_A )
    | ~ ( v1_finset_1 @ sk_B_1 )
    | ~ ( v1_finset_1 @ ( k3_tarski @ sk_A ) ) ),
    inference(split,[status(esa)],['4'])).

thf('6',plain,
    ( ( v1_finset_1 @ ( k3_tarski @ sk_A ) )
    | ( v1_finset_1 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,
    ( ( v1_finset_1 @ ( k3_tarski @ sk_A ) )
   <= ( v1_finset_1 @ ( k3_tarski @ sk_A ) ) ),
    inference(split,[status(esa)],['6'])).

thf('8',plain,
    ( ( r2_hidden @ sk_B_1 @ sk_A )
   <= ( r2_hidden @ sk_B_1 @ sk_A ) ),
    inference(split,[status(esa)],['2'])).

thf(t92_zfmisc_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( r2_hidden @ A @ B )
     => ( r1_tarski @ A @ ( k3_tarski @ B ) ) ) )).

thf('9',plain,(
    ! [X1: $i,X2: $i] :
      ( ( r1_tarski @ X1 @ ( k3_tarski @ X2 ) )
      | ~ ( r2_hidden @ X1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[t92_zfmisc_1])).

thf('10',plain,
    ( ( r1_tarski @ sk_B_1 @ ( k3_tarski @ sk_A ) )
   <= ( r2_hidden @ sk_B_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['8','9'])).

thf(t13_finset_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( ( r1_tarski @ A @ B )
        & ( v1_finset_1 @ B ) )
     => ( v1_finset_1 @ A ) ) )).

thf('11',plain,(
    ! [X5: $i,X6: $i] :
      ( ( v1_finset_1 @ X5 )
      | ~ ( r1_tarski @ X5 @ X6 )
      | ~ ( v1_finset_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t13_finset_1])).

thf('12',plain,
    ( ( ~ ( v1_finset_1 @ ( k3_tarski @ sk_A ) )
      | ( v1_finset_1 @ sk_B_1 ) )
   <= ( r2_hidden @ sk_B_1 @ sk_A ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,
    ( ( v1_finset_1 @ sk_B_1 )
   <= ( ( v1_finset_1 @ ( k3_tarski @ sk_A ) )
      & ( r2_hidden @ sk_B_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['7','12'])).

thf('14',plain,
    ( ~ ( v1_finset_1 @ sk_B_1 )
   <= ~ ( v1_finset_1 @ sk_B_1 ) ),
    inference(split,[status(esa)],['4'])).

thf('15',plain,
    ( ( v1_finset_1 @ sk_B_1 )
    | ~ ( r2_hidden @ sk_B_1 @ sk_A )
    | ~ ( v1_finset_1 @ ( k3_tarski @ sk_A ) ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,
    ( ( v1_finset_1 @ ( k3_tarski @ sk_A ) )
   <= ( v1_finset_1 @ ( k3_tarski @ sk_A ) ) ),
    inference(split,[status(esa)],['6'])).

thf(fc17_finset_1,axiom,(
    ! [A: $i] :
      ( ( v1_finset_1 @ A )
     => ( v1_finset_1 @ ( k1_zfmisc_1 @ A ) ) ) )).

thf('17',plain,(
    ! [X3: $i] :
      ( ( v1_finset_1 @ ( k1_zfmisc_1 @ X3 ) )
      | ~ ( v1_finset_1 @ X3 ) ) ),
    inference(cnf,[status(esa)],[fc17_finset_1])).

thf(t100_zfmisc_1,axiom,(
    ! [A: $i] :
      ( r1_tarski @ A @ ( k1_zfmisc_1 @ ( k3_tarski @ A ) ) ) )).

thf('18',plain,(
    ! [X0: $i] :
      ( r1_tarski @ X0 @ ( k1_zfmisc_1 @ ( k3_tarski @ X0 ) ) ) ),
    inference(cnf,[status(esa)],[t100_zfmisc_1])).

thf('19',plain,(
    ! [X5: $i,X6: $i] :
      ( ( v1_finset_1 @ X5 )
      | ~ ( r1_tarski @ X5 @ X6 )
      | ~ ( v1_finset_1 @ X6 ) ) ),
    inference(cnf,[status(esa)],[t13_finset_1])).

thf('20',plain,(
    ! [X0: $i] :
      ( ~ ( v1_finset_1 @ ( k1_zfmisc_1 @ ( k3_tarski @ X0 ) ) )
      | ( v1_finset_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['18','19'])).

thf('21',plain,(
    ! [X0: $i] :
      ( ~ ( v1_finset_1 @ ( k3_tarski @ X0 ) )
      | ( v1_finset_1 @ X0 ) ) ),
    inference('sup-',[status(thm)],['17','20'])).

thf('22',plain,
    ( ( v1_finset_1 @ sk_A )
   <= ( v1_finset_1 @ ( k3_tarski @ sk_A ) ) ),
    inference('sup-',[status(thm)],['16','21'])).

thf('23',plain,
    ( ~ ( v1_finset_1 @ sk_A )
   <= ~ ( v1_finset_1 @ sk_A ) ),
    inference(split,[status(esa)],['2'])).

thf('24',plain,
    ( ( v1_finset_1 @ sk_A )
    | ~ ( v1_finset_1 @ ( k3_tarski @ sk_A ) ) ),
    inference('sup-',[status(thm)],['22','23'])).

thf('25',plain,
    ( ( v1_finset_1 @ sk_A )
    | ( v1_finset_1 @ ( k3_tarski @ sk_A ) ) ),
    inference(split,[status(esa)],['6'])).

thf('26',plain,
    ( ( v1_finset_1 @ sk_A )
   <= ( v1_finset_1 @ sk_A ) ),
    inference(split,[status(esa)],['6'])).

thf(l22_finset_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_finset_1 @ A )
        & ! [B: $i] :
            ( ( r2_hidden @ B @ A )
           => ( v1_finset_1 @ B ) ) )
     => ( v1_finset_1 @ ( k3_tarski @ A ) ) ) )).

thf('27',plain,(
    ! [X4: $i] :
      ( ( v1_finset_1 @ ( k3_tarski @ X4 ) )
      | ( r2_hidden @ ( sk_B @ X4 ) @ X4 )
      | ~ ( v1_finset_1 @ X4 ) ) ),
    inference(cnf,[status(esa)],[l22_finset_1])).

thf('28',plain,
    ( ! [X7: $i] :
        ( ( v1_finset_1 @ X7 )
        | ~ ( r2_hidden @ X7 @ sk_A ) )
   <= ! [X7: $i] :
        ( ( v1_finset_1 @ X7 )
        | ~ ( r2_hidden @ X7 @ sk_A ) ) ),
    inference(split,[status(esa)],['0'])).

thf('29',plain,
    ( ( ~ ( v1_finset_1 @ sk_A )
      | ( v1_finset_1 @ ( k3_tarski @ sk_A ) )
      | ( v1_finset_1 @ ( sk_B @ sk_A ) ) )
   <= ! [X7: $i] :
        ( ( v1_finset_1 @ X7 )
        | ~ ( r2_hidden @ X7 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['27','28'])).

thf('30',plain,(
    ! [X4: $i] :
      ( ( v1_finset_1 @ ( k3_tarski @ X4 ) )
      | ~ ( v1_finset_1 @ ( sk_B @ X4 ) )
      | ~ ( v1_finset_1 @ X4 ) ) ),
    inference(cnf,[status(esa)],[l22_finset_1])).

thf('31',plain,
    ( ( ( v1_finset_1 @ ( k3_tarski @ sk_A ) )
      | ~ ( v1_finset_1 @ sk_A ) )
   <= ! [X7: $i] :
        ( ( v1_finset_1 @ X7 )
        | ~ ( r2_hidden @ X7 @ sk_A ) ) ),
    inference(clc,[status(thm)],['29','30'])).

thf('32',plain,
    ( ( v1_finset_1 @ ( k3_tarski @ sk_A ) )
   <= ( ( v1_finset_1 @ sk_A )
      & ! [X7: $i] :
          ( ( v1_finset_1 @ X7 )
          | ~ ( r2_hidden @ X7 @ sk_A ) ) ) ),
    inference('sup-',[status(thm)],['26','31'])).

thf('33',plain,
    ( ~ ( v1_finset_1 @ ( k3_tarski @ sk_A ) )
   <= ~ ( v1_finset_1 @ ( k3_tarski @ sk_A ) ) ),
    inference(split,[status(esa)],['2'])).

thf('34',plain,
    ( ~ ( v1_finset_1 @ sk_A )
    | ~ ! [X7: $i] :
          ( ( v1_finset_1 @ X7 )
          | ~ ( r2_hidden @ X7 @ sk_A ) )
    | ( v1_finset_1 @ ( k3_tarski @ sk_A ) ) ),
    inference('sup-',[status(thm)],['32','33'])).

thf('35',plain,(
    $false ),
    inference('sat_resolution*',[status(thm)],['1','3','5','15','24','25','34'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.11/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.11/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.J1QS8jzgfs
% 0.12/0.34  % Computer   : n003.cluster.edu
% 0.12/0.34  % Model      : x86_64 x86_64
% 0.12/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.34  % Memory     : 8042.1875MB
% 0.12/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.12/0.34  % CPULimit   : 60
% 0.12/0.34  % DateTime   : Tue Dec  1 16:16:57 EST 2020
% 0.12/0.34  % CPUTime    : 
% 0.12/0.34  % Running portfolio for 600 s
% 0.12/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.12/0.34  % Number of cores: 8
% 0.12/0.34  % Python version: Python 3.6.8
% 0.12/0.35  % Running in FO mode
% 0.20/0.46  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.46  % Solved by: fo/fo7.sh
% 0.20/0.46  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.46  % done 34 iterations in 0.014s
% 0.20/0.46  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.46  % SZS output start Refutation
% 0.20/0.46  thf(k1_zfmisc_1_type, type, k1_zfmisc_1: $i > $i).
% 0.20/0.46  thf(k3_tarski_type, type, k3_tarski: $i > $i).
% 0.20/0.46  thf(r1_tarski_type, type, r1_tarski: $i > $i > $o).
% 0.20/0.46  thf(v1_finset_1_type, type, v1_finset_1: $i > $o).
% 0.20/0.46  thf(sk_B_type, type, sk_B: $i > $i).
% 0.20/0.46  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.46  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.20/0.46  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.46  thf(t25_finset_1, conjecture,
% 0.20/0.46    (![A:$i]:
% 0.20/0.46     ( ( ( v1_finset_1 @ A ) & 
% 0.20/0.46         ( ![B:$i]: ( ( r2_hidden @ B @ A ) => ( v1_finset_1 @ B ) ) ) ) <=>
% 0.20/0.46       ( v1_finset_1 @ ( k3_tarski @ A ) ) ))).
% 0.20/0.46  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.46    (~( ![A:$i]:
% 0.20/0.46        ( ( ( v1_finset_1 @ A ) & 
% 0.20/0.46            ( ![B:$i]: ( ( r2_hidden @ B @ A ) => ( v1_finset_1 @ B ) ) ) ) <=>
% 0.20/0.46          ( v1_finset_1 @ ( k3_tarski @ A ) ) ) )),
% 0.20/0.46    inference('cnf.neg', [status(esa)], [t25_finset_1])).
% 0.20/0.46  thf('0', plain,
% 0.20/0.46      (![X7 : $i]:
% 0.20/0.46         ((v1_finset_1 @ (k3_tarski @ sk_A))
% 0.20/0.46          | (v1_finset_1 @ X7)
% 0.20/0.46          | ~ (r2_hidden @ X7 @ sk_A))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('1', plain,
% 0.20/0.46      ((![X7 : $i]: ((v1_finset_1 @ X7) | ~ (r2_hidden @ X7 @ sk_A))) | 
% 0.20/0.46       ((v1_finset_1 @ (k3_tarski @ sk_A)))),
% 0.20/0.46      inference('split', [status(esa)], ['0'])).
% 0.20/0.46  thf('2', plain,
% 0.20/0.46      ((~ (v1_finset_1 @ (k3_tarski @ sk_A))
% 0.20/0.46        | (r2_hidden @ sk_B_1 @ sk_A)
% 0.20/0.46        | ~ (v1_finset_1 @ sk_A))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('3', plain,
% 0.20/0.46      (((r2_hidden @ sk_B_1 @ sk_A)) | ~ ((v1_finset_1 @ sk_A)) | 
% 0.20/0.46       ~ ((v1_finset_1 @ (k3_tarski @ sk_A)))),
% 0.20/0.46      inference('split', [status(esa)], ['2'])).
% 0.20/0.46  thf('4', plain,
% 0.20/0.46      ((~ (v1_finset_1 @ (k3_tarski @ sk_A))
% 0.20/0.46        | ~ (v1_finset_1 @ sk_B_1)
% 0.20/0.46        | ~ (v1_finset_1 @ sk_A))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('5', plain,
% 0.20/0.46      (~ ((v1_finset_1 @ sk_A)) | ~ ((v1_finset_1 @ sk_B_1)) | 
% 0.20/0.46       ~ ((v1_finset_1 @ (k3_tarski @ sk_A)))),
% 0.20/0.46      inference('split', [status(esa)], ['4'])).
% 0.20/0.46  thf('6', plain,
% 0.20/0.46      (((v1_finset_1 @ (k3_tarski @ sk_A)) | (v1_finset_1 @ sk_A))),
% 0.20/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.46  thf('7', plain,
% 0.20/0.46      (((v1_finset_1 @ (k3_tarski @ sk_A)))
% 0.20/0.46         <= (((v1_finset_1 @ (k3_tarski @ sk_A))))),
% 0.20/0.46      inference('split', [status(esa)], ['6'])).
% 0.20/0.46  thf('8', plain,
% 0.20/0.46      (((r2_hidden @ sk_B_1 @ sk_A)) <= (((r2_hidden @ sk_B_1 @ sk_A)))),
% 0.20/0.46      inference('split', [status(esa)], ['2'])).
% 0.20/0.46  thf(t92_zfmisc_1, axiom,
% 0.20/0.46    (![A:$i,B:$i]:
% 0.20/0.46     ( ( r2_hidden @ A @ B ) => ( r1_tarski @ A @ ( k3_tarski @ B ) ) ))).
% 0.20/0.46  thf('9', plain,
% 0.20/0.46      (![X1 : $i, X2 : $i]:
% 0.20/0.46         ((r1_tarski @ X1 @ (k3_tarski @ X2)) | ~ (r2_hidden @ X1 @ X2))),
% 0.20/0.46      inference('cnf', [status(esa)], [t92_zfmisc_1])).
% 0.20/0.46  thf('10', plain,
% 0.20/0.46      (((r1_tarski @ sk_B_1 @ (k3_tarski @ sk_A)))
% 0.20/0.46         <= (((r2_hidden @ sk_B_1 @ sk_A)))),
% 0.20/0.46      inference('sup-', [status(thm)], ['8', '9'])).
% 0.20/0.46  thf(t13_finset_1, axiom,
% 0.20/0.46    (![A:$i,B:$i]:
% 0.20/0.46     ( ( ( r1_tarski @ A @ B ) & ( v1_finset_1 @ B ) ) => ( v1_finset_1 @ A ) ))).
% 0.20/0.46  thf('11', plain,
% 0.20/0.46      (![X5 : $i, X6 : $i]:
% 0.20/0.46         ((v1_finset_1 @ X5) | ~ (r1_tarski @ X5 @ X6) | ~ (v1_finset_1 @ X6))),
% 0.20/0.46      inference('cnf', [status(esa)], [t13_finset_1])).
% 0.20/0.46  thf('12', plain,
% 0.20/0.46      (((~ (v1_finset_1 @ (k3_tarski @ sk_A)) | (v1_finset_1 @ sk_B_1)))
% 0.20/0.46         <= (((r2_hidden @ sk_B_1 @ sk_A)))),
% 0.20/0.46      inference('sup-', [status(thm)], ['10', '11'])).
% 0.20/0.46  thf('13', plain,
% 0.20/0.46      (((v1_finset_1 @ sk_B_1))
% 0.20/0.46         <= (((v1_finset_1 @ (k3_tarski @ sk_A))) & 
% 0.20/0.46             ((r2_hidden @ sk_B_1 @ sk_A)))),
% 0.20/0.46      inference('sup-', [status(thm)], ['7', '12'])).
% 0.20/0.46  thf('14', plain,
% 0.20/0.46      ((~ (v1_finset_1 @ sk_B_1)) <= (~ ((v1_finset_1 @ sk_B_1)))),
% 0.20/0.46      inference('split', [status(esa)], ['4'])).
% 0.20/0.46  thf('15', plain,
% 0.20/0.46      (((v1_finset_1 @ sk_B_1)) | ~ ((r2_hidden @ sk_B_1 @ sk_A)) | 
% 0.20/0.46       ~ ((v1_finset_1 @ (k3_tarski @ sk_A)))),
% 0.20/0.46      inference('sup-', [status(thm)], ['13', '14'])).
% 0.20/0.46  thf('16', plain,
% 0.20/0.46      (((v1_finset_1 @ (k3_tarski @ sk_A)))
% 0.20/0.46         <= (((v1_finset_1 @ (k3_tarski @ sk_A))))),
% 0.20/0.46      inference('split', [status(esa)], ['6'])).
% 0.20/0.46  thf(fc17_finset_1, axiom,
% 0.20/0.46    (![A:$i]: ( ( v1_finset_1 @ A ) => ( v1_finset_1 @ ( k1_zfmisc_1 @ A ) ) ))).
% 0.20/0.46  thf('17', plain,
% 0.20/0.46      (![X3 : $i]: ((v1_finset_1 @ (k1_zfmisc_1 @ X3)) | ~ (v1_finset_1 @ X3))),
% 0.20/0.46      inference('cnf', [status(esa)], [fc17_finset_1])).
% 0.20/0.46  thf(t100_zfmisc_1, axiom,
% 0.20/0.46    (![A:$i]: ( r1_tarski @ A @ ( k1_zfmisc_1 @ ( k3_tarski @ A ) ) ))).
% 0.20/0.46  thf('18', plain,
% 0.20/0.46      (![X0 : $i]: (r1_tarski @ X0 @ (k1_zfmisc_1 @ (k3_tarski @ X0)))),
% 0.20/0.46      inference('cnf', [status(esa)], [t100_zfmisc_1])).
% 0.20/0.46  thf('19', plain,
% 0.20/0.46      (![X5 : $i, X6 : $i]:
% 0.20/0.46         ((v1_finset_1 @ X5) | ~ (r1_tarski @ X5 @ X6) | ~ (v1_finset_1 @ X6))),
% 0.20/0.46      inference('cnf', [status(esa)], [t13_finset_1])).
% 0.20/0.46  thf('20', plain,
% 0.20/0.46      (![X0 : $i]:
% 0.20/0.46         (~ (v1_finset_1 @ (k1_zfmisc_1 @ (k3_tarski @ X0)))
% 0.20/0.46          | (v1_finset_1 @ X0))),
% 0.20/0.46      inference('sup-', [status(thm)], ['18', '19'])).
% 0.20/0.46  thf('21', plain,
% 0.20/0.46      (![X0 : $i]: (~ (v1_finset_1 @ (k3_tarski @ X0)) | (v1_finset_1 @ X0))),
% 0.20/0.46      inference('sup-', [status(thm)], ['17', '20'])).
% 0.20/0.46  thf('22', plain,
% 0.20/0.46      (((v1_finset_1 @ sk_A)) <= (((v1_finset_1 @ (k3_tarski @ sk_A))))),
% 0.20/0.46      inference('sup-', [status(thm)], ['16', '21'])).
% 0.20/0.46  thf('23', plain, ((~ (v1_finset_1 @ sk_A)) <= (~ ((v1_finset_1 @ sk_A)))),
% 0.20/0.46      inference('split', [status(esa)], ['2'])).
% 0.20/0.46  thf('24', plain,
% 0.20/0.46      (((v1_finset_1 @ sk_A)) | ~ ((v1_finset_1 @ (k3_tarski @ sk_A)))),
% 0.20/0.46      inference('sup-', [status(thm)], ['22', '23'])).
% 0.20/0.46  thf('25', plain,
% 0.20/0.46      (((v1_finset_1 @ sk_A)) | ((v1_finset_1 @ (k3_tarski @ sk_A)))),
% 0.20/0.46      inference('split', [status(esa)], ['6'])).
% 0.20/0.46  thf('26', plain, (((v1_finset_1 @ sk_A)) <= (((v1_finset_1 @ sk_A)))),
% 0.20/0.46      inference('split', [status(esa)], ['6'])).
% 0.20/0.46  thf(l22_finset_1, axiom,
% 0.20/0.46    (![A:$i]:
% 0.20/0.46     ( ( ( v1_finset_1 @ A ) & 
% 0.20/0.46         ( ![B:$i]: ( ( r2_hidden @ B @ A ) => ( v1_finset_1 @ B ) ) ) ) =>
% 0.20/0.46       ( v1_finset_1 @ ( k3_tarski @ A ) ) ))).
% 0.20/0.46  thf('27', plain,
% 0.20/0.46      (![X4 : $i]:
% 0.20/0.46         ((v1_finset_1 @ (k3_tarski @ X4))
% 0.20/0.46          | (r2_hidden @ (sk_B @ X4) @ X4)
% 0.20/0.46          | ~ (v1_finset_1 @ X4))),
% 0.20/0.46      inference('cnf', [status(esa)], [l22_finset_1])).
% 0.20/0.46  thf('28', plain,
% 0.20/0.46      ((![X7 : $i]: ((v1_finset_1 @ X7) | ~ (r2_hidden @ X7 @ sk_A)))
% 0.20/0.46         <= ((![X7 : $i]: ((v1_finset_1 @ X7) | ~ (r2_hidden @ X7 @ sk_A))))),
% 0.20/0.46      inference('split', [status(esa)], ['0'])).
% 0.20/0.46  thf('29', plain,
% 0.20/0.46      (((~ (v1_finset_1 @ sk_A)
% 0.20/0.46         | (v1_finset_1 @ (k3_tarski @ sk_A))
% 0.20/0.46         | (v1_finset_1 @ (sk_B @ sk_A))))
% 0.20/0.46         <= ((![X7 : $i]: ((v1_finset_1 @ X7) | ~ (r2_hidden @ X7 @ sk_A))))),
% 0.20/0.46      inference('sup-', [status(thm)], ['27', '28'])).
% 0.20/0.46  thf('30', plain,
% 0.20/0.46      (![X4 : $i]:
% 0.20/0.46         ((v1_finset_1 @ (k3_tarski @ X4))
% 0.20/0.46          | ~ (v1_finset_1 @ (sk_B @ X4))
% 0.20/0.46          | ~ (v1_finset_1 @ X4))),
% 0.20/0.46      inference('cnf', [status(esa)], [l22_finset_1])).
% 0.20/0.46  thf('31', plain,
% 0.20/0.46      ((((v1_finset_1 @ (k3_tarski @ sk_A)) | ~ (v1_finset_1 @ sk_A)))
% 0.20/0.46         <= ((![X7 : $i]: ((v1_finset_1 @ X7) | ~ (r2_hidden @ X7 @ sk_A))))),
% 0.20/0.46      inference('clc', [status(thm)], ['29', '30'])).
% 0.20/0.46  thf('32', plain,
% 0.20/0.46      (((v1_finset_1 @ (k3_tarski @ sk_A)))
% 0.20/0.46         <= (((v1_finset_1 @ sk_A)) & 
% 0.20/0.46             (![X7 : $i]: ((v1_finset_1 @ X7) | ~ (r2_hidden @ X7 @ sk_A))))),
% 0.20/0.46      inference('sup-', [status(thm)], ['26', '31'])).
% 0.20/0.46  thf('33', plain,
% 0.20/0.46      ((~ (v1_finset_1 @ (k3_tarski @ sk_A)))
% 0.20/0.46         <= (~ ((v1_finset_1 @ (k3_tarski @ sk_A))))),
% 0.20/0.46      inference('split', [status(esa)], ['2'])).
% 0.20/0.46  thf('34', plain,
% 0.20/0.46      (~ ((v1_finset_1 @ sk_A)) | 
% 0.20/0.46       ~ (![X7 : $i]: ((v1_finset_1 @ X7) | ~ (r2_hidden @ X7 @ sk_A))) | 
% 0.20/0.46       ((v1_finset_1 @ (k3_tarski @ sk_A)))),
% 0.20/0.46      inference('sup-', [status(thm)], ['32', '33'])).
% 0.20/0.46  thf('35', plain, ($false),
% 0.20/0.46      inference('sat_resolution*', [status(thm)],
% 0.20/0.46                ['1', '3', '5', '15', '24', '25', '34'])).
% 0.20/0.46  
% 0.20/0.46  % SZS output end Refutation
% 0.20/0.46  
% 0.20/0.47  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
