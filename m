Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFAA30766E
	for <lists+openipmi-developer@lfdr.de>; Thu, 28 Jan 2021 13:54:14 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1l56oM-00067c-5I; Thu, 28 Jan 2021 12:54:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <wsa+renesas@sang-engineering.com>)
 id 1l56oJ-000660-Vq
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Jan 2021 12:54:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oRO8WDf/5KnXgWQXEksy1rdyBQlSPoX/B1tkUPaXezo=; b=jSj5bDd+lqX9WuQCw0YHpcxXKf
 wWMyH4gZ13iI6cPoDIdgrBIcje5nN9WRES+ZQcB16O+E6SYr2ukioA+rmEyqw1RElNq1sEmVhd2Uw
 7rb5uYKcR/pvmdh35Fp1dk4Ly5uliCcdJ5Ua8Vs0XsBhgPAYnTrg07rDjtISw84AlrJY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oRO8WDf/5KnXgWQXEksy1rdyBQlSPoX/B1tkUPaXezo=; b=QVcZ6zBQOV/dE1Gg0omMwYswp2
 QYFFnB73J5rZM0QqnVpiIaTyGDF+xNZAej4ZqInSXNecz5BJneEi8Ruq/zU5sOiibIEeWst4E4s3/
 DQi+F6iDlswXZco99sS9XQR5YD9iXs0jIDV5junnTcJLlgbkRi1+1yFNxOije+JJ+2p0=;
Received: from www.zeus03.de ([194.117.254.33] helo=mail.zeus03.de)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l56oD-000Ahw-2O
 for openipmi-developer@lists.sourceforge.net; Thu, 28 Jan 2021 12:54:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple; d=sang-engineering.com; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=k1; bh=oRO8WDf/5KnXgWQXEksy1rdyBQlS
 PoX/B1tkUPaXezo=; b=36kAZjzCJ3A0h7EPAsHt0+R7/4W+QfBUjwBAmcfaP+91
 9oG3pGi3RaJ8lLto0GjT+nHBfgPA7iwQqfM0CaWz067qKZdj8KVnwAV5rTg1n2/0
 8WX5TbIrV1+UpdZX+i/nkxlHw3tCPeKi/4pG1NX23HfG7OsLfjhzwGf5Z814yB4=
Received: (qmail 240619 invoked from network); 28 Jan 2021 13:53:50 +0100
Received: by mail.zeus03.de with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted,
 authenticated); 28 Jan 2021 13:53:50 +0100
X-UD-Smtp-Session: l3s3148p1@FHQSYfW58pggAwDPXyX1AEdA8SGgn5QT
Date: Thu, 28 Jan 2021 13:53:50 +0100
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Corey Minyard <cminyard@mvista.com>
Message-ID: <20210128125350.GP963@ninjato>
References: <20210128085544.7609-1-wsa+renesas@sang-engineering.com>
 <20210128123757.GW21462@minyard.net>
MIME-Version: 1.0
In-Reply-To: <20210128123757.GW21462@minyard.net>
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.117.254.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 FORGED_SPF_HELO        No description available.
X-Headers-End: 1l56oD-000Ahw-2O
Subject: Re: [Openipmi-developer] [PATCH RESEND] ipmi: remove open coded
 version of SMBus block write
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-kernel@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-i2c@vger.kernel.org, Corey Minyard <minyard@acm.org>,
 Asmaa Mnebhi <asmaa@nvidia.com>
Content-Type: multipart/mixed; boundary="===============0175061394046076740=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============0175061394046076740==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="R3SAtXwgGp429mN7"
Content-Disposition: inline


--R3SAtXwgGp429mN7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 28, 2021 at 06:37:57AM -0600, Corey Minyard wrote:
> Looks good, do you want this in the IPMI tree or are you handling this
> another way?

I can take it but would prefer the IPMI tree.

Thanks!


--R3SAtXwgGp429mN7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmASs9oACgkQFA3kzBSg
KbbxVxAAsnkVAMU3qhmK/nVCKJwyEIime7+1Z71ZVZUxscez4zCtHGvhzLOleaxh
GLz8+0qsB6GBZGO6xZkHEdSbuP7dhwCBIqWG398Plu/wL8NKF/TzMI67KR0iDZCV
BS8zHaB+WMB1KwpUAYEsn2abtD0wJTrgeMRET/JXDRp3jcmsPCVExafSQ9TS+cXK
pTpaiZ06SzMArMxd+t30RD60qQPdLCOkHc1v+vYeAv7nElfhF/ndhL+k95Axzbf5
X8VsNmSM8dk8MWWAuCNjVZnS2sfzA/9G+i2xgESs8UCNfDNcKAxPiNnDa4G7AGRN
qidR7iRGlTL21rctXcpbRqylKi9X/Zo7Ql8LrOPRuFlb64ptMApVglYjvqCYsB4+
qkWZZDdL372mD9Osf6pUS+BajbBFreo9gvUtKHY5iWj6zPkSjgkVgxfPKlhPxrhc
xRYUNEf+rGS6sbZeV9yQFG9w1Vt08Z2Pa8TVd9T0s8dEBiwfXLxURuY5DWRmV3dt
17xoAkek+GHr9xEEDjskAXbnncb4W0m3+60vmWthpTRKZH9p0UglzzYzmHseTby9
17xN3I4OORhaAk49O63Jlz4dd5Mf0FgQQFi+a8fbeYiIX+2fM8JY5U0nYzRRYc+y
iuSR7rs3udXJi22hQbDyk14GlwF0dNpyEhGFM0WZV7lqj3hcGZI=
=uUBv
-----END PGP SIGNATURE-----

--R3SAtXwgGp429mN7--


--===============0175061394046076740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============0175061394046076740==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============0175061394046076740==--

