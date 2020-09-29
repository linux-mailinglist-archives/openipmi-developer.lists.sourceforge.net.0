Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4151286748
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:42 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC5-0008C1-1s; Wed, 07 Oct 2020 18:29:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <broonie@kernel.org>) id 1kNEuK-0000t9-EM
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Sep 2020 12:39:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hQTb+Cwk45c0brDfHZbAyJUvQALRlsaJn5QctSbDqcQ=; b=lVc/k9ilyfE+BzbEIiCqUx7Een
 BCxtSaJXacCXq21aQ+yrnlmoTmo+CI9U9s/5G+xmhRguKi7/3h/EDsfUra3pjFGNIOq4Fe5pOgOQn
 fV+U0TrD4L+BhxgoLJxWS8fo+kcEsuhqyY42r5JkJAp4JklC6H+77b58YhRZ+5iTIx1I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hQTb+Cwk45c0brDfHZbAyJUvQALRlsaJn5QctSbDqcQ=; b=cU+/uVY3PHFMzOd4KT3rQVSnMu
 3hHWtsAUGeb2n1LLiic65aMkJ7OTfXZ4uOTbF/lMUbYiB+QhXL00GUr2HQMYJOPaSPXsFgdd0QcGk
 2x6airsQR8AX6pPX2uIRQVEuqMqYk/80gb1vFnbk0mMZVGA3B7pE++6XvIFTd4KgRHtw=;
Received: from mail.kernel.org ([198.145.29.99])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kNEuA-00A4FH-Ec
 for openipmi-developer@lists.sourceforge.net; Tue, 29 Sep 2020 12:39:00 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 74C452075F;
 Tue, 29 Sep 2020 12:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601383113;
 bh=1agHRxXJKhB2RD26+gZ4x8RWV4EKhITxeEYpiuBbO3Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DWmjA8UFdsFWnaqLQDJfMWuIbOP31zKYrwaHNjRkhgkkbyol6UJQNOL2g65mEmM7z
 r3wh0aEAIXzhRSusZ2U0MLVqmtsLu8t/8GK56UP3hceV/6s4ECE+CCU/O8tZzN6Rvf
 K42OX9LCLHmQUHnGEYx+BhHjmTGzPz+rvHs8rKnU=
Date: Tue, 29 Sep 2020 13:37:34 +0100
From: Mark Brown <broonie@kernel.org>
To: Julia Lawall <julia.lawall@inria.fr>
Message-ID: <20200929123734.GC4799@sirena.org.uk>
References: <1601233948-11629-1-git-send-email-Julia.Lawall@inria.fr>
 <160132172369.55460.9237357219623604216.b4-ty@kernel.org>
 <b1174f9be2ce65f6b5ebefcba0b48e792926abbc.camel@perches.com>
 <20200929113745.GB4799@sirena.org.uk>
 <alpine.DEB.2.22.394.2009291344590.2808@hadrien>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.22.394.2009291344590.2808@hadrien>
X-Cookie: I left my WALLET in the BATHROOM!!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1kNEuA-00A4FH-Ec
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:27 +0000
Subject: Re: [Openipmi-developer] [PATCH 00/18] use semicolons rather than
 commas to separate statements
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
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, linux-iio@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-ide@vger.kernel.org,
 linux-clk@vger.kernel.org, drbd-dev@lists.linbit.com,
 Neil Armstrong <narmstrong@baylibre.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-acpi@vger.kernel.org,
 Jerome Brunet <jbrunet@baylibre.com>, David Lechner <david@lechnology.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-block@vger.kernel.org, linux-amlogic@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Valdis =?utf-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Joe Perches <joe@perches.com>,
 openipmi-developer@lists.sourceforge.net
Content-Type: multipart/mixed; boundary="===============8002264793323617811=="
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


--===============8002264793323617811==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MnLPg7ZWsaic7Fhd"
Content-Disposition: inline


--MnLPg7ZWsaic7Fhd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Sep 29, 2020 at 01:46:19PM +0200, Julia Lawall wrote:
> On Tue, 29 Sep 2020, Mark Brown wrote:

> > Feel free to submit patches to b4.  Ideally things like this wouldn't be
> > being sent as serieses in the first place, there's no dependencies or
> > interactions between the patches.

> It was suggested (a long time ago, not with respect to this patch in
> particular) that sending such patches in a series is useful because it
> allows people who are not interested in the 18 patches to skip over them
> more easily.  So there are two conflicting needs...

I'm not convinced that there are huge numbers of people reading LKML as
a list TBH, and if you are sending things as a series then the way
you're doing it at the minute where you don't CC the cover letter to
people makes things confusing as it's unclear if there are dependencies
to worry about.

--MnLPg7ZWsaic7Fhd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEyBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl9zKo0ACgkQJNaLcl1U
h9BJ9wf4mEIT3UglAONn9EPv4I6DolXuWfJHGs52mxyy1JeuXGyjVMYRuKfw8ZE5
TbgRR0pAg1aZUsqI/T/PWSVDmUCNzL6QM4RbG8ZUSFw47v509iCABBidbK+PLnwo
y5A+IrAPTDVviLFNJm2SfFN3XEgpsGmOqhyuhKiGNeLOryaPNvOmiRF6cwND7Vbq
97kDmafX0KgHVsmK/br50D/XJpOJSR9T2hB5hjQRoVl44a6aV0eZWwDDZyH57kat
KO59OyGGHDyWrsF9oHWajymCB1kMZZ4YLiwCyjx98g74uRLSiSaGwrsr4IeXGn66
Mmpn90mfVDnP/Es10vbKsC+JZShG
=qH7V
-----END PGP SIGNATURE-----

--MnLPg7ZWsaic7Fhd--


--===============8002264793323617811==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8002264793323617811==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer

--===============8002264793323617811==--

