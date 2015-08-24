/*!
@file
Forward declares `boost::hana::drop_back`.

@copyright Louis Dionne 2015
Distributed under the Boost Software License, Version 1.0.
(See accompanying file LICENSE.md or copy at http://boost.org/LICENSE_1_0.txt)
 */

#ifndef BOOST_HANA_FWD_DROP_BACK_HPP
#define BOOST_HANA_FWD_DROP_BACK_HPP

#include <boost/hana/core/when.hpp>


namespace boost { namespace hana {
    //! Drop the last `n` elements of a finite sequence, and return the rest.
    //! @relates Sequence
    //!
    //! Given a finite `Sequence` `xs` with a linearization of `[x1, ..., xm]`
    //! and a non-negative `Constant` `n` holding an unsigned integral value,
    //! `drop_back(xs, n)` is a sequence with the same tag as `xs` whose
    //! linearization is `[x1, ..., xm-n]`. If `n` is not given, it defaults
    //! to a `Constant` with an unsigned integral value equal to `1`.
    //!
    //! In case `length(xs) <= n`, `drop_back` will simply drop the whole
    //! sequence without failing, thus returning an empty sequence.
    //!
    //!
    //! @param xs
    //! The sequence from which elements are dropped.
    //!
    //! @param n
    //! A non-negative `Constant` holding an unsigned integral value
    //! representing the number of elements to be dropped from the end
    //! of the sequence. If `n` is not given, it defaults to a `Constant`
    //! with an unsigned integral value equal to `1`.
    //!
    //!
    //! Example
    //! -------
    //! @include example/drop_back.cpp
#ifdef BOOST_HANA_DOXYGEN_INVOKED
    constexpr auto drop_back = [](auto&& xs[, auto&& n]) {
        return tag-dispatched;
    };
#else
    template <typename S, typename = void>
    struct drop_back_impl : drop_back_impl<S, when<true>> { };

    struct drop_back_t {
        template <typename Xs, typename N>
        constexpr auto operator()(Xs&& xs, N&& n) const;

        template <typename Xs>
        constexpr auto operator()(Xs&& xs) const;
    };

    constexpr drop_back_t drop_back{};
#endif
}} // end namespace boost::hana

#endif // !BOOST_HANA_FWD_DROP_BACK_HPP