/*
@copyright Louis Dionne 2015
Distributed under the Boost Software License, Version 1.0.
(See accompanying file LICENSE.md or copy at http://boost.org/LICENSE_1_0.txt)
 */

#include <boost/hana/core/datatype.hpp>
#include <boost/hana/ext/boost/mpl/vector.hpp>

#include <boost/mpl/identity.hpp>
#include <boost/mpl/quote.hpp>
#include <boost/mpl/transform.hpp>
#include <boost/mpl/vector.hpp>
#include <type_traits>
using namespace boost::hana;
namespace mpl = boost::mpl;


struct t1; struct t2;

int main() {
    //////////////////////////////////////////////////////////////////////////
    // Make sure the data type is resolved correctly
    //////////////////////////////////////////////////////////////////////////
    {
        using mpl_id = mpl::quote1<mpl::identity>;

        static_assert(std::is_same<
            datatype_t<mpl::vector<>>,
            ext::boost::mpl::Vector
        >{}, "");
        static_assert(std::is_same<
            datatype_t<mpl::vector<>::type>,
            ext::boost::mpl::Vector
        >{}, "");
        static_assert(std::is_same<
            datatype_t<mpl::transform<mpl::vector<>, mpl_id>::type>,
            ext::boost::mpl::Vector
        >{}, "");

        static_assert(std::is_same<
            datatype_t<mpl::vector<t1>>,
            ext::boost::mpl::Vector
        >{}, "");
        static_assert(std::is_same<
            datatype_t<mpl::vector<t1>::type>,
            ext::boost::mpl::Vector
        >{}, "");
        static_assert(std::is_same<
            datatype_t<mpl::transform<mpl::vector<t1>, mpl_id>::type>,
            ext::boost::mpl::Vector
        >{}, "");

        static_assert(std::is_same<
            datatype_t<mpl::vector<t1, t2>>,
            ext::boost::mpl::Vector
        >{}, "");
        static_assert(std::is_same<
            datatype_t<mpl::vector<t1, t2>::type>,
            ext::boost::mpl::Vector
        >{}, "");
        static_assert(std::is_same<
            datatype_t<mpl::transform<mpl::vector<t1, t2>, mpl_id>::type>,
            ext::boost::mpl::Vector
        >{}, "");
    }
}