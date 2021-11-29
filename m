Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB7646205E
	for <lists+openipmi-developer@lfdr.de>; Mon, 29 Nov 2021 20:23:20 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mrmF8-0007FZ-UQ; Mon, 29 Nov 2021 19:23:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <wsa@kernel.org>) id 1mrmF8-0007FT-2s
 for openipmi-developer@lists.sourceforge.net; Mon, 29 Nov 2021 19:23:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+UntCFzO68h1BDmF/R8UiC0Z4jnXnJh0Mc/eL2rpirQ=; b=EQ/jSpBraLHtQcdBQFPzHl4pIt
 Xo8Cam6LKLPjQrba16EVdGUjYkiH/SD2T8zulCJmZtEMNd3eTj17bLguY9Ig8uWac4vlXveKfBxnf
 Qg21rg59aGynGsdlGAQTS7bPsjzrU/yZC67mciybWAfKvw033Efha18RPj1p3ll/d7aA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+UntCFzO68h1BDmF/R8UiC0Z4jnXnJh0Mc/eL2rpirQ=; b=m8b+AgoVUCEzu46AXsBqkkSdJR
 EW2hq1nuSqaTSzqARHgV263BNGn6gSiT1JjFesr0b46CTL/gSvTiyhV+NLNMdqGyTSYssQGSITix8
 YrGQe62aXSm9GYSIdMcQTAVD6pn0XzyC1OlF0HYK1udBZ9E+UAQ4ujFrhB6WC2XlcOmw=;
Received: from sin.source.kernel.org ([145.40.73.55])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mrmEe-00EdRu-Nh
 for openipmi-developer@lists.sourceforge.net; Mon, 29 Nov 2021 19:23:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id C9DF1CE13E0;
 Mon, 29 Nov 2021 19:22:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F090EC53FC7;
 Mon, 29 Nov 2021 19:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638213755;
 bh=Y5NwSlQVKu/RjuujNCewGKGidAPlSFDXVTVyAhtaMd4=;
 h=Date:From:To:Subject:References:In-Reply-To:From;
 b=rP23YM30IC0YD3XcoytOUD3nAaBxVfg9sYjCOZfzb8zunQm8ShvGTG7V8Uvl21RZ2
 Rtalf+oKhumJ6V0JtMg8w6h8MX4opoA/WJjDnBmKZnRrfEVqYufEewICYKJQKKXTEO
 +DvO8fzn4CsyDezm+73FMLG6t+IIzG1H5mnXI091jdYsOBDks/YCOqWaHJpKbvAx40
 kFBtHb48AAMNmcbHjj3Ho2cL4ObwUglELMdgRg/rVxCWIlgkcyN0a54CiicB46tpAW
 4M9fxbNtupmVZRYkGTcyRZeZsUrMGe1hMmjVmsD/S6dHwNJEH25zKtBoh6FOJX259s
 xRlhjNUjcuJJw==
Date: Mon, 29 Nov 2021 20:22:32 +0100
From: Wolfram Sang <wsa@kernel.org>
To: Quan Nguyen <quan@os.amperecomputing.com>,
 Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org,
 Open Source Submission <patches@amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>
Message-ID: <YaUoeFZn6zLNoGed@kunai>
Mail-Followup-To: Wolfram Sang <wsa@kernel.org>,
 Quan Nguyen <quan@os.amperecomputing.com>,
 Corey Minyard <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Brendan Higgins <brendanhiggins@google.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 openipmi-developer@lists.sourceforge.net,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-i2c@vger.kernel.org,
 Open Source Submission <patches@amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>
References: <20210714033833.11640-1-quan@os.amperecomputing.com>
 <20210714033833.11640-2-quan@os.amperecomputing.com>
 <YRTQP9sX0hkTJMTx@shikoro>
MIME-Version: 1.0
In-Reply-To: <YRTQP9sX0hkTJMTx@shikoro>
X-Headers-End: 1mrmEe-00EdRu-Nh
Subject: Re: [Openipmi-developer] [PATCH v5 1/3] i2c: aspeed: Add
 slave_enable() to toggle slave mode
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
Content-Type: multipart/mixed; boundary="===============6742720186236725849=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============6742720186236725849==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="d1UpdctGHU2n/12Q"
Content-Disposition: inline


--d1UpdctGHU2n/12Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

I still wonder if we can't get the SSIF BMC driver upstream...

> @all: Plus, I neither like the API (because it doesn't look generic to
> me but mostly handling one issue needed here) nor do I fully understand
> the use case. Normally, when a read is requested and the backend needs
> time to deliver the data, the hardware should stretch the SCL clock
> until some data register is finally written to. If it doesn't do it for
> whatever reason, this is a quirky hardware in my book and needs handling
> in the driver only. So, what is special with this HW? Can't we solve it
> differently?

... for that, it would be great if somebody could answer my questions
here :)

Happy hacking,

   Wolfram


--d1UpdctGHU2n/12Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmGlKHgACgkQFA3kzBSg
Kbaj7Q/+K++8yheJLiYAr0liA2UQdfCq+XezGICIbZAVxxsZK8n1//zZg7zn5/im
iUQ/roCf08jiF7YOvNDErnCyJTNpVvm9JHvNlYf/TvB9zv7Lwxu3ysMUFaiV00dT
c6MskoCbxYPdDEz3UtYJ6eJE4qaU0prhazQlYqJvJu1W/cN41e23eHWfiRvSPg65
ui/7bC0mCLia8VUl2OUs6MGedop+JiqmvaKm5cmoZf7Idi5wxyOVbpQ3955ys1Y/
4FWtD1YvJubfqZW0WBRDzFiesE5QY+ryqVcu4AdbwdT9jdik4t9vz0yJsgpPOQ/+
2AAnfuvzWdSvQL5+2aGITnOrT2qJDDePA87OaE0egYKyyUfX533Y8Yit1Fc5OQeh
hgTvVOzuBsaJVcJTEka49RpzuCha9SeOs8oOV1tOx7rO7tL7kLmKmUmWyj1cRm35
C15QuoyRZ83+l2v+x27L+leKiWlTabVV1/D+gfVSmt1GD/qKoc/h0Lxss1x1VGcW
YVopBoNqawQLVsX7EhordVwZNjBuU473rFfYxWPW+DDi34WaFIOlf2b0XN8gNymU
F8tQo20t7Nd2KvwhmTDUT7j5nXbEJbS3/TqeSMpOQi3kjskHWr78o267qqe0kIzT
xNkLGxWkdF71AbdjUMUJu+pxli9ABhL0OqxhZ4imhrRZBIKo0wQ=
=qfX/
-----END PGP SIGNATURE-----

--d1UpdctGHU2n/12Q--


--===============6742720186236725849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============6742720186236725849==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============6742720186236725849==--

