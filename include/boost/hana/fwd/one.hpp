/*!
@file
Forward declares `boost::hana::one`.

@copyright Louis Dionne 2015
Distributed under the Boost Software License, Version 1.0.
(See accompanying file LICENSE.md or copy at http://boost.org/LICENSE_1_0.txt)
 */

#ifndef BOOST_HANA_FWD_ONE_HPP
#define BOOST_HANA_FWD_ONE_HPP

#include <boost/hana/core/when.hpp>


namespace boost { namespace hana {
    //! Identity of the `Ring` multiplication.
    //! @relates Ring
    //!
    //! @tparam R
    //! The data type (a `Ring`) of the returned identity.
    //!
    //!
    //! Example
    //! -------
    //! @snippet example/ring.cpp one
#ifdef BOOST_HANA_DOXYGEN_INVOKED
    template <typename R>
    constexpr auto one = []() -> decltype(auto) {
        return tag-dispatched;
    };
#else
    template <typename R, typename = void>
    struct one_impl : one_impl<R, when<true>> { };

    template <typename R>
    struct one_t;

    template <typename R>
    constexpr one_t<R> one{};
#endif
}} // end namespace boost::hana

#endif // !BOOST_HANA_FWD_ONE_HPP