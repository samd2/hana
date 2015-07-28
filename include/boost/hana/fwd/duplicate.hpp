/*!
@file
Forward declares `boost::hana::duplicate`.

@copyright Louis Dionne 2015
Distributed under the Boost Software License, Version 1.0.
(See accompanying file LICENSE.md or copy at http://boost.org/LICENSE_1_0.txt)
 */

#ifndef BOOST_HANA_FWD_DUPLICATE_HPP
#define BOOST_HANA_FWD_DUPLICATE_HPP

#include <boost/hana/core/when.hpp>


namespace boost { namespace hana {
    //! Add an extra layer of comonadic context to a comonadic value.
    //! @relates Comonad
    //!
    //! Given a value already in a comonadic context, `duplicate` wraps this
    //! value with an additional layer of comonadic context. This can be seen
    //! as the dual operation to `flatten` from the Monad concept.
    //!
    //!
    //! Signature
    //! ---------
    //! Given a Comonad `W`, the signature is
    //! \f$
    //!     \mathtt{duplicate} : W(T) \to W(W(T))
    //! \f$
    //!
    //! @param w
    //! The value to wrap in an additional level of comonadic context.
    //!
    //!
    //! Example
    //! -------
    //! @snippet example/comonad.cpp duplicate
#ifdef BOOST_HANA_DOXYGEN_INVOKED
    constexpr auto duplicate = [](auto&& w) -> decltype(auto) {
        return tag-dispatched;
    };
#else
    template <typename W, typename = void>
    struct duplicate_impl : duplicate_impl<W, when<true>> { };

    struct duplicate_t {
        template <typename W_>
        constexpr decltype(auto) operator()(W_&& w) const;
    };

    constexpr duplicate_t duplicate{};
#endif
}} // end namespace boost::hana

#endif // !BOOST_HANA_FWD_DUPLICATE_HPP