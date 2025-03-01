%------------------------------------------------------------------------------
% File       : Zipperpin---2.0
% Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% Transform  : none
% Format     : tptp:raw
% Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.fZZkggrlJp

% Computer   : n015.cluster.edu
% Model      : x86_64 x86_64
% CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory     : 8042.1875MB
% OS         : Linux 3.10.0-693.el7.x86_64
% CPULimit   : 60s
% DateTime   : Thu Dec  3 13:52:22 EST 2020

% Result     : Theorem 0.21s
% Output     : Refutation 0.21s
% Verified   : 
% Statistics : Number of formulae       :   37 (  55 expanded)
%              Number of leaves         :   13 (  23 expanded)
%              Depth                    :    8
%              Number of atoms          :  185 ( 573 expanded)
%              Number of equality atoms :   17 (  66 expanded)
%              Maximal formula depth    :   12 (   4 average)

% Comments   : 
%------------------------------------------------------------------------------
thf(k4_tarski_type,type,(
    k4_tarski: $i > $i > $i )).

thf(k2_mcart_1_type,type,(
    k2_mcart_1: $i > $i )).

thf(v1_xboole_0_type,type,(
    v1_xboole_0: $i > $o )).

thf(sk_B_type,type,(
    sk_B: $i )).

thf(v1_relat_1_type,type,(
    v1_relat_1: $i > $o )).

thf(m1_subset_1_type,type,(
    m1_subset_1: $i > $i > $o )).

thf(sk_A_type,type,(
    sk_A: $i )).

thf(k1_mcart_1_type,type,(
    k1_mcart_1: $i > $i )).

thf(sk_C_type,type,(
    sk_C: $i )).

thf(r2_hidden_type,type,(
    r2_hidden: $i > $i > $o )).

thf(t95_mcart_1,conjecture,(
    ! [A: $i] :
      ( ( ~ ( v1_xboole_0 @ A )
        & ( v1_relat_1 @ A ) )
     => ! [B: $i] :
          ( ( m1_subset_1 @ B @ A )
         => ! [C: $i] :
              ( ( m1_subset_1 @ C @ A )
             => ( ( ( ( k1_mcart_1 @ B )
                    = ( k1_mcart_1 @ C ) )
                  & ( ( k2_mcart_1 @ B )
                    = ( k2_mcart_1 @ C ) ) )
               => ( B = C ) ) ) ) ) )).

thf(zf_stmt_0,negated_conjecture,(
    ~ ! [A: $i] :
        ( ( ~ ( v1_xboole_0 @ A )
          & ( v1_relat_1 @ A ) )
       => ! [B: $i] :
            ( ( m1_subset_1 @ B @ A )
           => ! [C: $i] :
                ( ( m1_subset_1 @ C @ A )
               => ( ( ( ( k1_mcart_1 @ B )
                      = ( k1_mcart_1 @ C ) )
                    & ( ( k2_mcart_1 @ B )
                      = ( k2_mcart_1 @ C ) ) )
                 => ( B = C ) ) ) ) ) ),
    inference('cnf.neg',[status(esa)],[t95_mcart_1])).

thf('0',plain,(
    m1_subset_1 @ sk_B @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf(t2_subset,axiom,(
    ! [A: $i,B: $i] :
      ( ( m1_subset_1 @ A @ B )
     => ( ( v1_xboole_0 @ B )
        | ( r2_hidden @ A @ B ) ) ) )).

thf('1',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ X0 @ X1 )
      | ( v1_xboole_0 @ X1 )
      | ~ ( m1_subset_1 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[t2_subset])).

thf('2',plain,
    ( ( v1_xboole_0 @ sk_A )
    | ( r2_hidden @ sk_B @ sk_A ) ),
    inference('sup-',[status(thm)],['0','1'])).

thf('3',plain,(
    ~ ( v1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('4',plain,(
    r2_hidden @ sk_B @ sk_A ),
    inference(clc,[status(thm)],['2','3'])).

thf(t23_mcart_1,axiom,(
    ! [A: $i,B: $i] :
      ( ( v1_relat_1 @ B )
     => ( ( r2_hidden @ A @ B )
       => ( A
          = ( k4_tarski @ ( k1_mcart_1 @ A ) @ ( k2_mcart_1 @ A ) ) ) ) ) )).

thf('5',plain,(
    ! [X2: $i,X3: $i] :
      ( ( X2
        = ( k4_tarski @ ( k1_mcart_1 @ X2 ) @ ( k2_mcart_1 @ X2 ) ) )
      | ~ ( v1_relat_1 @ X3 )
      | ~ ( r2_hidden @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t23_mcart_1])).

thf('6',plain,
    ( ~ ( v1_relat_1 @ sk_A )
    | ( sk_B
      = ( k4_tarski @ ( k1_mcart_1 @ sk_B ) @ ( k2_mcart_1 @ sk_B ) ) ) ),
    inference('sup-',[status(thm)],['4','5'])).

thf('7',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('8',plain,
    ( sk_B
    = ( k4_tarski @ ( k1_mcart_1 @ sk_B ) @ ( k2_mcart_1 @ sk_B ) ) ),
    inference(demod,[status(thm)],['6','7'])).

thf('9',plain,(
    m1_subset_1 @ sk_C @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('10',plain,(
    ! [X0: $i,X1: $i] :
      ( ( r2_hidden @ X0 @ X1 )
      | ( v1_xboole_0 @ X1 )
      | ~ ( m1_subset_1 @ X0 @ X1 ) ) ),
    inference(cnf,[status(esa)],[t2_subset])).

thf('11',plain,
    ( ( v1_xboole_0 @ sk_A )
    | ( r2_hidden @ sk_C @ sk_A ) ),
    inference('sup-',[status(thm)],['9','10'])).

thf('12',plain,(
    ~ ( v1_xboole_0 @ sk_A ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('13',plain,(
    r2_hidden @ sk_C @ sk_A ),
    inference(clc,[status(thm)],['11','12'])).

thf('14',plain,(
    ! [X2: $i,X3: $i] :
      ( ( X2
        = ( k4_tarski @ ( k1_mcart_1 @ X2 ) @ ( k2_mcart_1 @ X2 ) ) )
      | ~ ( v1_relat_1 @ X3 )
      | ~ ( r2_hidden @ X2 @ X3 ) ) ),
    inference(cnf,[status(esa)],[t23_mcart_1])).

thf('15',plain,
    ( ~ ( v1_relat_1 @ sk_A )
    | ( sk_C
      = ( k4_tarski @ ( k1_mcart_1 @ sk_C ) @ ( k2_mcart_1 @ sk_C ) ) ) ),
    inference('sup-',[status(thm)],['13','14'])).

thf('16',plain,(
    v1_relat_1 @ sk_A ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('17',plain,
    ( ( k1_mcart_1 @ sk_B )
    = ( k1_mcart_1 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('18',plain,
    ( ( k2_mcart_1 @ sk_B )
    = ( k2_mcart_1 @ sk_C ) ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('19',plain,
    ( sk_C
    = ( k4_tarski @ ( k1_mcart_1 @ sk_B ) @ ( k2_mcart_1 @ sk_B ) ) ),
    inference(demod,[status(thm)],['15','16','17','18'])).

thf('20',plain,(
    sk_C = sk_B ),
    inference('sup+',[status(thm)],['8','19'])).

thf('21',plain,(
    sk_B != sk_C ),
    inference(cnf,[status(esa)],[zf_stmt_0])).

thf('22',plain,(
    $false ),
    inference('simplify_reflect-',[status(thm)],['20','21'])).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.06/0.12  % Problem    : MPT0001+2.001 : TPTP v7.5.0. Released v7.5.0.
% 0.06/0.13  % Command    : run_portfolio.sh /export/starexec/sandbox/benchmark/theBenchmark.p /export/starexec/sandbox/tmp/tmp.fZZkggrlJp
% 0.13/0.34  % Computer   : n015.cluster.edu
% 0.13/0.34  % Model      : x86_64 x86_64
% 0.13/0.34  % CPU        : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.34  % Memory     : 8042.1875MB
% 0.13/0.34  % OS         : Linux 3.10.0-693.el7.x86_64
% 0.13/0.34  % CPULimit   : 60
% 0.13/0.34  % DateTime   : Tue Dec  1 10:50:23 EST 2020
% 0.13/0.34  % CPUTime    : 
% 0.13/0.34  % Running portfolio for 600 s
% 0.13/0.34  % File         : /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.13/0.34  % Number of cores: 8
% 0.13/0.34  % Python version: Python 3.6.8
% 0.13/0.34  % Running in FO mode
% 0.21/0.46  % Running /export/starexec/sandbox/solver/bin/fo/fo7.sh for 78
% 0.21/0.46  % Solved by: fo/fo7.sh
% 0.21/0.46  To remain in the chosen logic fragment, unification with booleans has been disabled.
% 0.21/0.46  % done 12 iterations in 0.009s
% 0.21/0.46  % SZS status Theorem for '/export/starexec/sandbox/benchmark/theBenchmark.p'
% 0.21/0.46  % SZS output start Refutation
% 0.21/0.46  thf(k4_tarski_type, type, k4_tarski: $i > $i > $i).
% 0.21/0.46  thf(k2_mcart_1_type, type, k2_mcart_1: $i > $i).
% 0.21/0.46  thf(v1_xboole_0_type, type, v1_xboole_0: $i > $o).
% 0.21/0.46  thf(sk_B_type, type, sk_B: $i).
% 0.21/0.46  thf(v1_relat_1_type, type, v1_relat_1: $i > $o).
% 0.21/0.46  thf(m1_subset_1_type, type, m1_subset_1: $i > $i > $o).
% 0.21/0.46  thf(sk_A_type, type, sk_A: $i).
% 0.21/0.46  thf(k1_mcart_1_type, type, k1_mcart_1: $i > $i).
% 0.21/0.46  thf(sk_C_type, type, sk_C: $i).
% 0.21/0.46  thf(r2_hidden_type, type, r2_hidden: $i > $i > $o).
% 0.21/0.46  thf(t95_mcart_1, conjecture,
% 0.21/0.46    (![A:$i]:
% 0.21/0.46     ( ( ( ~( v1_xboole_0 @ A ) ) & ( v1_relat_1 @ A ) ) =>
% 0.21/0.46       ( ![B:$i]:
% 0.21/0.46         ( ( m1_subset_1 @ B @ A ) =>
% 0.21/0.46           ( ![C:$i]:
% 0.21/0.46             ( ( m1_subset_1 @ C @ A ) =>
% 0.21/0.46               ( ( ( ( k1_mcart_1 @ B ) = ( k1_mcart_1 @ C ) ) & 
% 0.21/0.46                   ( ( k2_mcart_1 @ B ) = ( k2_mcart_1 @ C ) ) ) =>
% 0.21/0.46                 ( ( B ) = ( C ) ) ) ) ) ) ) ))).
% 0.21/0.46  thf(zf_stmt_0, negated_conjecture,
% 0.21/0.46    (~( ![A:$i]:
% 0.21/0.46        ( ( ( ~( v1_xboole_0 @ A ) ) & ( v1_relat_1 @ A ) ) =>
% 0.21/0.46          ( ![B:$i]:
% 0.21/0.46            ( ( m1_subset_1 @ B @ A ) =>
% 0.21/0.46              ( ![C:$i]:
% 0.21/0.46                ( ( m1_subset_1 @ C @ A ) =>
% 0.21/0.46                  ( ( ( ( k1_mcart_1 @ B ) = ( k1_mcart_1 @ C ) ) & 
% 0.21/0.46                      ( ( k2_mcart_1 @ B ) = ( k2_mcart_1 @ C ) ) ) =>
% 0.21/0.46                    ( ( B ) = ( C ) ) ) ) ) ) ) ) )),
% 0.21/0.46    inference('cnf.neg', [status(esa)], [t95_mcart_1])).
% 0.21/0.46  thf('0', plain, ((m1_subset_1 @ sk_B @ sk_A)),
% 0.21/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.46  thf(t2_subset, axiom,
% 0.21/0.46    (![A:$i,B:$i]:
% 0.21/0.46     ( ( m1_subset_1 @ A @ B ) =>
% 0.21/0.46       ( ( v1_xboole_0 @ B ) | ( r2_hidden @ A @ B ) ) ))).
% 0.21/0.46  thf('1', plain,
% 0.21/0.46      (![X0 : $i, X1 : $i]:
% 0.21/0.46         ((r2_hidden @ X0 @ X1)
% 0.21/0.46          | (v1_xboole_0 @ X1)
% 0.21/0.46          | ~ (m1_subset_1 @ X0 @ X1))),
% 0.21/0.46      inference('cnf', [status(esa)], [t2_subset])).
% 0.21/0.46  thf('2', plain, (((v1_xboole_0 @ sk_A) | (r2_hidden @ sk_B @ sk_A))),
% 0.21/0.46      inference('sup-', [status(thm)], ['0', '1'])).
% 0.21/0.46  thf('3', plain, (~ (v1_xboole_0 @ sk_A)),
% 0.21/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.46  thf('4', plain, ((r2_hidden @ sk_B @ sk_A)),
% 0.21/0.46      inference('clc', [status(thm)], ['2', '3'])).
% 0.21/0.46  thf(t23_mcart_1, axiom,
% 0.21/0.46    (![A:$i,B:$i]:
% 0.21/0.46     ( ( v1_relat_1 @ B ) =>
% 0.21/0.46       ( ( r2_hidden @ A @ B ) =>
% 0.21/0.46         ( ( A ) = ( k4_tarski @ ( k1_mcart_1 @ A ) @ ( k2_mcart_1 @ A ) ) ) ) ))).
% 0.21/0.46  thf('5', plain,
% 0.21/0.46      (![X2 : $i, X3 : $i]:
% 0.21/0.46         (((X2) = (k4_tarski @ (k1_mcart_1 @ X2) @ (k2_mcart_1 @ X2)))
% 0.21/0.46          | ~ (v1_relat_1 @ X3)
% 0.21/0.46          | ~ (r2_hidden @ X2 @ X3))),
% 0.21/0.46      inference('cnf', [status(esa)], [t23_mcart_1])).
% 0.21/0.46  thf('6', plain,
% 0.21/0.46      ((~ (v1_relat_1 @ sk_A)
% 0.21/0.46        | ((sk_B) = (k4_tarski @ (k1_mcart_1 @ sk_B) @ (k2_mcart_1 @ sk_B))))),
% 0.21/0.46      inference('sup-', [status(thm)], ['4', '5'])).
% 0.21/0.46  thf('7', plain, ((v1_relat_1 @ sk_A)),
% 0.21/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.46  thf('8', plain,
% 0.21/0.46      (((sk_B) = (k4_tarski @ (k1_mcart_1 @ sk_B) @ (k2_mcart_1 @ sk_B)))),
% 0.21/0.46      inference('demod', [status(thm)], ['6', '7'])).
% 0.21/0.46  thf('9', plain, ((m1_subset_1 @ sk_C @ sk_A)),
% 0.21/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.46  thf('10', plain,
% 0.21/0.46      (![X0 : $i, X1 : $i]:
% 0.21/0.46         ((r2_hidden @ X0 @ X1)
% 0.21/0.46          | (v1_xboole_0 @ X1)
% 0.21/0.46          | ~ (m1_subset_1 @ X0 @ X1))),
% 0.21/0.46      inference('cnf', [status(esa)], [t2_subset])).
% 0.21/0.46  thf('11', plain, (((v1_xboole_0 @ sk_A) | (r2_hidden @ sk_C @ sk_A))),
% 0.21/0.46      inference('sup-', [status(thm)], ['9', '10'])).
% 0.21/0.46  thf('12', plain, (~ (v1_xboole_0 @ sk_A)),
% 0.21/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.46  thf('13', plain, ((r2_hidden @ sk_C @ sk_A)),
% 0.21/0.46      inference('clc', [status(thm)], ['11', '12'])).
% 0.21/0.46  thf('14', plain,
% 0.21/0.46      (![X2 : $i, X3 : $i]:
% 0.21/0.46         (((X2) = (k4_tarski @ (k1_mcart_1 @ X2) @ (k2_mcart_1 @ X2)))
% 0.21/0.46          | ~ (v1_relat_1 @ X3)
% 0.21/0.46          | ~ (r2_hidden @ X2 @ X3))),
% 0.21/0.46      inference('cnf', [status(esa)], [t23_mcart_1])).
% 0.21/0.46  thf('15', plain,
% 0.21/0.46      ((~ (v1_relat_1 @ sk_A)
% 0.21/0.46        | ((sk_C) = (k4_tarski @ (k1_mcart_1 @ sk_C) @ (k2_mcart_1 @ sk_C))))),
% 0.21/0.46      inference('sup-', [status(thm)], ['13', '14'])).
% 0.21/0.46  thf('16', plain, ((v1_relat_1 @ sk_A)),
% 0.21/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.46  thf('17', plain, (((k1_mcart_1 @ sk_B) = (k1_mcart_1 @ sk_C))),
% 0.21/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.46  thf('18', plain, (((k2_mcart_1 @ sk_B) = (k2_mcart_1 @ sk_C))),
% 0.21/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.46  thf('19', plain,
% 0.21/0.46      (((sk_C) = (k4_tarski @ (k1_mcart_1 @ sk_B) @ (k2_mcart_1 @ sk_B)))),
% 0.21/0.46      inference('demod', [status(thm)], ['15', '16', '17', '18'])).
% 0.21/0.46  thf('20', plain, (((sk_C) = (sk_B))),
% 0.21/0.46      inference('sup+', [status(thm)], ['8', '19'])).
% 0.21/0.46  thf('21', plain, (((sk_B) != (sk_C))),
% 0.21/0.46      inference('cnf', [status(esa)], [zf_stmt_0])).
% 0.21/0.46  thf('22', plain, ($false),
% 0.21/0.46      inference('simplify_reflect-', [status(thm)], ['20', '21'])).
% 0.21/0.46  
% 0.21/0.46  % SZS output end Refutation
% 0.21/0.46  
% 0.32/0.47  % Zipperpin 1.5 exiting
%------------------------------------------------------------------------------
