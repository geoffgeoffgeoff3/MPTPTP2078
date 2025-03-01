%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.lNWQA2KhzF

% Computer   : n004.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:47:25 EST 2020

% Result     : Theorem 0.20s
% Output     : Refutation 0.20s
% Verified   : 
% Statistics : Number of formulae       :   43 (  66 expanded)
%              Number of leaves         :   15 (  27 expanded)
%              Depth                    :   13
%              Number of atoms          :  249 ( 659 expanded)
%              Number of equality atoms :    3 (  25 expanded)
%              Maximal formula depth    :   12 (   5 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(v1_funct_1_type,type,(
    v1_funct_1: $i > $o )).

thf(k1_relat_1_type,type,(
    k1_relat_1: $i > $i )).

thf(sk_B_type,type,(
    sk_B: $i > $i )).

thf(v2_relat_1_type,type,(
    v2_relat_1: $i > $o )).

thf(v5_funct_1_type,type,(
    v5_funct_1: $i > $i > $o )).

thf(sk_B_1_type,type,(
    sk_B_1: $i )).

thf(k1_funct_1_type,type,(
    k1_funct_1: $i > $i > $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(t173_funct_1,conjecture,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i] :
          ( ( ( v1_relat_1 @ B )
            & ( v1_funct_1 @ B ) )
         => ( ( ( v5_funct_1 @ A @ B )
              & ( ( k1_relat_1 @ A )
                = ( k1_relat_1 @ B ) ) )
           => ( v2_relat_1 @ B ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ( v1_relat_1 @ A )
          & ( v1_funct_1 @ A ) )
       => ! [B: $i] :
            ( ( ( v1_relat_1 @ B )
              & ( v1_funct_1 @ B ) )
           => ( ( ( v5_funct_1 @ A @ B )
                & ( ( k1_relat_1 @ A )
                  = ( k1_relat_1 @ B ) ) )
             => ( v2_relat_1 @ B ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t173_funct_1])).

thf('0',plain,(
    ~ ( v2_relat_1 @ sk_B_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(d15_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ( ( v2_relat_1 @ A )
      <=> ! [B: $i] :
            ~ ( ( r2_hidden @ B @ ( k1_relat_1 @ A ) )
              & ( v1_xboole_0 @ ( k1_funct_1 @ A @ B ) ) ) ) ) )).

thf('1',plain,(
    ! [X2: $i] :
      ( ( v1_xboole_0 @ ( k1_funct_1 @ X2 @ ( sk_B @ X2 ) ) )
      | ( v2_relat_1 @ X2 )
      | ~ ( v1_funct_1 @ X2 )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d15_funct_1])).

thf('2',plain,(
    v5_funct_1 @ sk_A @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('3',plain,
    ( ( k1_relat_1 @ sk_A )
    = ( k1_relat_1 @ sk_B_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('4',plain,(
    ! [X2: $i] :
      ( ( r2_hidden @ ( sk_B @ X2 ) @ ( k1_relat_1 @ X2 ) )
      | ( v2_relat_1 @ X2 )
      | ~ ( v1_funct_1 @ X2 )
      | ~ ( v1_relat_1 @ X2 ) ) ),
    inference(cnf,[status(esa)],[d15_funct_1])).

thf('5',plain,
    ( ( r2_hidden @ ( sk_B @ sk_B_1 ) @ ( k1_relat_1 @ sk_A ) )
    | ~ ( v1_relat_1 @ sk_B_1 )
    | ~ ( v1_funct_1 @ sk_B_1 )
    | ( v2_relat_1 @ sk_B_1 ) ),
    inference('sup+',[status(thm)],['3','4'])).

thf('6',plain,(
    v1_relat_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('7',plain,(
    v1_funct_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,
    ( ( r2_hidden @ ( sk_B @ sk_B_1 ) @ ( k1_relat_1 @ sk_A ) )
    | ( v2_relat_1 @ sk_B_1 ) ),
    inference(demod,[status(thm)],['5','6','7'])).

thf('9',plain,(
    ~ ( v2_relat_1 @ sk_B_1 ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    r2_hidden @ ( sk_B @ sk_B_1 ) @ ( k1_relat_1 @ sk_A ) ),
    inference(clc,[status(thm)],['8','9'])).

thf(d20_funct_1,axiom,(
    ! [A: $i] :
      ( ( ( v1_relat_1 @ A )
        & ( v1_funct_1 @ A ) )
     => ! [B: $i] :
          ( ( ( v1_relat_1 @ B )
            & ( v1_funct_1 @ B ) )
         => ( ( v5_funct_1 @ B @ A )
          <=> ! [C: $i] :
                ( ( r2_hidden @ C @ ( k1_relat_1 @ B ) )
               => ( r2_hidden @ ( k1_funct_1 @ B @ C ) @ ( k1_funct_1 @ A @ C ) ) ) ) ) ) )).

thf('11',plain,(
    ! [X4: $i,X5: $i,X6: $i] :
      ( ~ ( v1_relat_1 @ X4 )
      | ~ ( v1_funct_1 @ X4 )
      | ~ ( v5_funct_1 @ X4 @ X5 )
      | ( r2_hidden @ ( k1_funct_1 @ X4 @ X6 ) @ ( k1_funct_1 @ X5 @ X6 ) )
      | ~ ( r2_hidden @ X6 @ ( k1_relat_1 @ X4 ) )
      | ~ ( v1_funct_1 @ X5 )
      | ~ ( v1_relat_1 @ X5 ) ) ),
    inference(cnf,[status(esa)],[d20_funct_1])).

thf('12',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ( r2_hidden @ ( k1_funct_1 @ sk_A @ ( sk_B @ sk_B_1 ) ) @ ( k1_funct_1 @ X0 @ ( sk_B @ sk_B_1 ) ) )
      | ~ ( v5_funct_1 @ sk_A @ X0 )
      | ~ ( v1_funct_1 @ sk_A )
      | ~ ( v1_relat_1 @ sk_A ) ) ),
    inference('sup-',[status(thm)],['10','11'])).

thf('13',plain,(
    v1_funct_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('14',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('15',plain,(
    ! [X0: $i] :
      ( ~ ( v1_relat_1 @ X0 )
      | ~ ( v1_funct_1 @ X0 )
      | ( r2_hidden @ ( k1_funct_1 @ sk_A @ ( sk_B @ sk_B_1 ) ) @ ( k1_funct_1 @ X0 @ ( sk_B @ sk_B_1 ) ) )
      | ~ ( v5_funct_1 @ sk_A @ X0 ) ) ),
    inference(demod,[status(thm)],['12','13','14'])).

thf('16',plain,
    ( ( r2_hidden @ ( k1_funct_1 @ sk_A @ ( sk_B @ sk_B_1 ) ) @ ( k1_funct_1 @ sk_B_1 @ ( sk_B @ sk_B_1 ) ) )
    | ~ ( v1_funct_1 @ sk_B_1 )
    | ~ ( v1_relat_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['2','15'])).

thf('17',plain,(
    v1_funct_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,(
    v1_relat_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,(
    r2_hidden @ ( k1_funct_1 @ sk_A @ ( sk_B @ sk_B_1 ) ) @ ( k1_funct_1 @ sk_B_1 @ ( sk_B @ sk_B_1 ) ) ),
    inference(demod,[status(thm)],['16','17','18'])).

thf(t7_boole,axiom,(
    ! [A: $i,B: $i] :
      ~ ( ( r2_hidden @ A @ B )
        & ( v1_xboole_0 @ B ) ) )).

thf('20',plain,(
    ! [X0: $i,X1: $i] :
      ( ~ ( r2_hidden @ X0 @ X1 )
      | ~ ( v1_xboole_0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[t7_boole])).

thf('21',plain,(
    ~ ( v1_xboole_0 @ ( k1_funct_1 @ sk_B_1 @ ( sk_B @ sk_B_1 ) ) ) ),
    inference('sup-',[status(thm)],['19','20'])).

thf('22',plain,
    ( ~ ( v1_relat_1 @ sk_B_1 )
    | ~ ( v1_funct_1 @ sk_B_1 )
    | ( v2_relat_1 @ sk_B_1 ) ),
    inference('sup-',[status(thm)],['1','21'])).

thf('23',plain,(
    v1_relat_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('24',plain,(
    v1_funct_1 @ sk_B_1 ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('25',plain,(
    v2_relat_1 @ sk_B_1 ),
    inference(demod,[status(thm)],['22','23','24'])).

thf('26',plain,(
    $false ),
    inference(demod,[status(thm)],['0','25'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.10/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox2/benchmark/theBenchmark.p /export/starexec/sandbox2/tmp/tmp.lNWQA2KhzF
% 0.13/0.34  % Computer   : n004.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 09:59:39 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox2/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.35  % Running in FO mode
% 0.20/0.47  % Running /export/starexec/sandbox2/solver/bin/fo/fo7.sh for 78
% 0.20/0.47  % Solved by: fo/fo7.sh
% 0.20/0.47  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.20/0.47  % done 28 iterations in 0.018s
% 0.20/0.47  % SZS status Theorem for '/export/starexec/sandbox2/benchmark/theBenchmark.p'
% 0.20/0.47  % SZS output start Refutation
% 0.20/0.47  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.20/0.47  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.20/0.47  thf(v1_funct_1_type, type, v1_funct_1: $i > $o).
% 0.20/0.47  thf(k1_relat_1_type, type, k1_relat_1: $i > $i).
% 0.20/0.47  thf(sk_B_type, type, sk_B: $i > $i).
% 0.20/0.47  thf(v2_relat_1_type, type, v2_relat_1: $i > $o).
% 0.20/0.47  thf(v5_funct_1_type, type, v5_funct_1: $i > $i > $o).
% 0.20/0.47  thf(sk_B_1_type, type, sk_B_1: $i).
% 0.20/0.47  thf(k1_funct_1_type, type, k1_funct_1: $i > $i > $i).
% 0.20/0.47  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.20/0.47  thf(sk_A_type, type, sk_A: $i).
% 0.20/0.47  thf(t173_funct_1, conjecture,
% 0.20/0.47    (![A:$i]:
% 0.20/0.47     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.47       ( ![B:$i]:
% 0.20/0.47         ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.20/0.47           ( ( ( v5_funct_1 @ A @ B ) & 
% 0.20/0.47               ( ( k1_relat_1 @ A ) = ( k1_relat_1 @ B ) ) ) =>
% 0.20/0.47             ( v2_relat_1 @ B ) ) ) ) ))).
% 0.20/0.47  thf(zf_stmt_0, negated_conjecture,
% 0.20/0.47    (~( ![A:$i]:
% 0.20/0.47        ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.47          ( ![B:$i]:
% 0.20/0.47            ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.20/0.47              ( ( ( v5_funct_1 @ A @ B ) & 
% 0.20/0.47                  ( ( k1_relat_1 @ A ) = ( k1_relat_1 @ B ) ) ) =>
% 0.20/0.47                ( v2_relat_1 @ B ) ) ) ) ) )),
% 0.20/0.47    inference('cnf.neg', [status(esa)], [t173_funct_1])).
% 0.20/0.47  thf('0', plain, (~ (v2_relat_1 @ sk_B_1)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf(d15_funct_1, axiom,
% 0.20/0.47    (![A:$i]:
% 0.20/0.47     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.47       ( ( v2_relat_1 @ A ) <=>
% 0.20/0.47         ( ![B:$i]:
% 0.20/0.47           ( ~( ( r2_hidden @ B @ ( k1_relat_1 @ A ) ) & 
% 0.20/0.47                ( v1_xboole_0 @ ( k1_funct_1 @ A @ B ) ) ) ) ) ) ))).
% 0.20/0.47  thf('1', plain,
% 0.20/0.47      (![X2 : $i]:
% 0.20/0.47         ((v1_xboole_0 @ (k1_funct_1 @ X2 @ (sk_B @ X2)))
% 0.20/0.47          | (v2_relat_1 @ X2)
% 0.20/0.47          | ~ (v1_funct_1 @ X2)
% 0.20/0.47          | ~ (v1_relat_1 @ X2))),
% 0.20/0.47      inference('cnf', [status(esa)], [d15_funct_1])).
% 0.20/0.47  thf('2', plain, ((v5_funct_1 @ sk_A @ sk_B_1)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('3', plain, (((k1_relat_1 @ sk_A) = (k1_relat_1 @ sk_B_1))),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('4', plain,
% 0.20/0.47      (![X2 : $i]:
% 0.20/0.47         ((r2_hidden @ (sk_B @ X2) @ (k1_relat_1 @ X2))
% 0.20/0.47          | (v2_relat_1 @ X2)
% 0.20/0.47          | ~ (v1_funct_1 @ X2)
% 0.20/0.47          | ~ (v1_relat_1 @ X2))),
% 0.20/0.47      inference('cnf', [status(esa)], [d15_funct_1])).
% 0.20/0.47  thf('5', plain,
% 0.20/0.47      (((r2_hidden @ (sk_B @ sk_B_1) @ (k1_relat_1 @ sk_A))
% 0.20/0.47        | ~ (v1_relat_1 @ sk_B_1)
% 0.20/0.47        | ~ (v1_funct_1 @ sk_B_1)
% 0.20/0.47        | (v2_relat_1 @ sk_B_1))),
% 0.20/0.47      inference('sup+', [status(thm)], ['3', '4'])).
% 0.20/0.47  thf('6', plain, ((v1_relat_1 @ sk_B_1)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('7', plain, ((v1_funct_1 @ sk_B_1)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('8', plain,
% 0.20/0.47      (((r2_hidden @ (sk_B @ sk_B_1) @ (k1_relat_1 @ sk_A))
% 0.20/0.47        | (v2_relat_1 @ sk_B_1))),
% 0.20/0.47      inference('demod', [status(thm)], ['5', '6', '7'])).
% 0.20/0.47  thf('9', plain, (~ (v2_relat_1 @ sk_B_1)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('10', plain, ((r2_hidden @ (sk_B @ sk_B_1) @ (k1_relat_1 @ sk_A))),
% 0.20/0.47      inference('clc', [status(thm)], ['8', '9'])).
% 0.20/0.47  thf(d20_funct_1, axiom,
% 0.20/0.47    (![A:$i]:
% 0.20/0.47     ( ( ( v1_relat_1 @ A ) & ( v1_funct_1 @ A ) ) =>
% 0.20/0.47       ( ![B:$i]:
% 0.20/0.47         ( ( ( v1_relat_1 @ B ) & ( v1_funct_1 @ B ) ) =>
% 0.20/0.47           ( ( v5_funct_1 @ B @ A ) <=>
% 0.20/0.47             ( ![C:$i]:
% 0.20/0.47               ( ( r2_hidden @ C @ ( k1_relat_1 @ B ) ) =>
% 0.20/0.47                 ( r2_hidden @ ( k1_funct_1 @ B @ C ) @ ( k1_funct_1 @ A @ C ) ) ) ) ) ) ) ))).
% 0.20/0.47  thf('11', plain,
% 0.20/0.47      (![X4 : $i, X5 : $i, X6 : $i]:
% 0.20/0.47         (~ (v1_relat_1 @ X4)
% 0.20/0.47          | ~ (v1_funct_1 @ X4)
% 0.20/0.47          | ~ (v5_funct_1 @ X4 @ X5)
% 0.20/0.47          | (r2_hidden @ (k1_funct_1 @ X4 @ X6) @ (k1_funct_1 @ X5 @ X6))
% 0.20/0.47          | ~ (r2_hidden @ X6 @ (k1_relat_1 @ X4))
% 0.20/0.47          | ~ (v1_funct_1 @ X5)
% 0.20/0.47          | ~ (v1_relat_1 @ X5))),
% 0.20/0.47      inference('cnf', [status(esa)], [d20_funct_1])).
% 0.20/0.47  thf('12', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         (~ (v1_relat_1 @ X0)
% 0.20/0.47          | ~ (v1_funct_1 @ X0)
% 0.20/0.47          | (r2_hidden @ (k1_funct_1 @ sk_A @ (sk_B @ sk_B_1)) @ 
% 0.20/0.47             (k1_funct_1 @ X0 @ (sk_B @ sk_B_1)))
% 0.20/0.47          | ~ (v5_funct_1 @ sk_A @ X0)
% 0.20/0.47          | ~ (v1_funct_1 @ sk_A)
% 0.20/0.47          | ~ (v1_relat_1 @ sk_A))),
% 0.20/0.47      inference('sup-', [status(thm)], ['10', '11'])).
% 0.20/0.47  thf('13', plain, ((v1_funct_1 @ sk_A)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('14', plain, ((v1_relat_1 @ sk_A)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('15', plain,
% 0.20/0.47      (![X0 : $i]:
% 0.20/0.47         (~ (v1_relat_1 @ X0)
% 0.20/0.47          | ~ (v1_funct_1 @ X0)
% 0.20/0.47          | (r2_hidden @ (k1_funct_1 @ sk_A @ (sk_B @ sk_B_1)) @ 
% 0.20/0.47             (k1_funct_1 @ X0 @ (sk_B @ sk_B_1)))
% 0.20/0.47          | ~ (v5_funct_1 @ sk_A @ X0))),
% 0.20/0.47      inference('demod', [status(thm)], ['12', '13', '14'])).
% 0.20/0.47  thf('16', plain,
% 0.20/0.47      (((r2_hidden @ (k1_funct_1 @ sk_A @ (sk_B @ sk_B_1)) @ 
% 0.20/0.47         (k1_funct_1 @ sk_B_1 @ (sk_B @ sk_B_1)))
% 0.20/0.47        | ~ (v1_funct_1 @ sk_B_1)
% 0.20/0.47        | ~ (v1_relat_1 @ sk_B_1))),
% 0.20/0.47      inference('sup-', [status(thm)], ['2', '15'])).
% 0.20/0.47  thf('17', plain, ((v1_funct_1 @ sk_B_1)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('18', plain, ((v1_relat_1 @ sk_B_1)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('19', plain,
% 0.20/0.47      ((r2_hidden @ (k1_funct_1 @ sk_A @ (sk_B @ sk_B_1)) @ 
% 0.20/0.47        (k1_funct_1 @ sk_B_1 @ (sk_B @ sk_B_1)))),
% 0.20/0.47      inference('demod', [status(thm)], ['16', '17', '18'])).
% 0.20/0.47  thf(t7_boole, axiom,
% 0.20/0.47    (![A:$i,B:$i]: ( ~( ( r2_hidden @ A @ B ) & ( v1_xboole_0 @ B ) ) ))).
% 0.20/0.47  thf('20', plain,
% 0.20/0.47      (![X0 : $i, X1 : $i]: (~ (r2_hidden @ X0 @ X1) | ~ (v1_xboole_0 @ X1))),
% 0.20/0.47      inference('cnf', [status(esa)], [t7_boole])).
% 0.20/0.47  thf('21', plain, (~ (v1_xboole_0 @ (k1_funct_1 @ sk_B_1 @ (sk_B @ sk_B_1)))),
% 0.20/0.47      inference('sup-', [status(thm)], ['19', '20'])).
% 0.20/0.47  thf('22', plain,
% 0.20/0.47      ((~ (v1_relat_1 @ sk_B_1)
% 0.20/0.47        | ~ (v1_funct_1 @ sk_B_1)
% 0.20/0.47        | (v2_relat_1 @ sk_B_1))),
% 0.20/0.47      inference('sup-', [status(thm)], ['1', '21'])).
% 0.20/0.47  thf('23', plain, ((v1_relat_1 @ sk_B_1)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('24', plain, ((v1_funct_1 @ sk_B_1)),
% 0.20/0.47      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.20/0.47  thf('25', plain, ((v2_relat_1 @ sk_B_1)),
% 0.20/0.47      inference('demod', [status(thm)], ['22', '23', '24'])).
% 0.20/0.47  thf('26', plain, ($false), inference('demod', [status(thm)], ['0', '25'])).
% 0.20/0.47  
% 0.20/0.47  % SZS output end Refutation
% 0.20/0.47  
% 0.20/0.48  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
