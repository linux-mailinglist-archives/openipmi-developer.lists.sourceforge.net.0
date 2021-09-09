Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 512F5405EA1
	for <lists+openipmi-developer@lfdr.de>; Thu,  9 Sep 2021 23:11:15 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mORKA-0000tr-8C; Thu, 09 Sep 2021 21:11:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1mORK8-0000te-UB
 for openipmi-developer@lists.sourceforge.net; Thu, 09 Sep 2021 21:11:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oQs1XgPjDPgT6H3Vd8knRQ14vSHuHpiGCRbbwe0LZvQ=; b=ftmJ7KvH7ijJYJHBet9eaVFMAo
 CTN3UoNBcEkOAdChcXBNWvvxNr5rER1frZOc892b07oPwdZSnqvr8Vevjfl15+6ZSdsWuTk40K8iF
 YKWskiThXf8iPThwluUFhHia7d95RNH5h3LkYOG12dLG77Zpc4t0XINkpohY2QbBvgjg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oQs1XgPjDPgT6H3Vd8knRQ14vSHuHpiGCRbbwe0LZvQ=; b=O
 hdLIUr2FO5hgC3p5Xgk/UBWDHETr2N4f0L0gZxZTLnXQXyGrta4XKYFnR55AHYd2jJlZX+IqDow5c
 3VQLbite25HkQ8MvgvgN7K9WpKknz1yJbRMmNlqi4jXOioVbvngwDAhV31Cv05bnDQjaEVLTnkRRW
 vox5zhv0AGOxkqas=;
Received: from mail-oo1-f54.google.com ([209.85.161.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mORK0-005IUW-T8
 for openipmi-developer@lists.sourceforge.net; Thu, 09 Sep 2021 21:11:08 +0000
Received: by mail-oo1-f54.google.com with SMTP id
 k20-20020a4ad114000000b0029133123994so1008118oor.4
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 09 Sep 2021 14:11:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=oQs1XgPjDPgT6H3Vd8knRQ14vSHuHpiGCRbbwe0LZvQ=;
 b=VX/MNh37lB/TOF2EsWLTMiRYm5rg4KtKgmkK/biF3Db7NM6CqU0uvfpBStwM/Cskx4
 fFPKEgiyggTuTRx0tLIVu49fj68Djp0lH8BoL4nivqkVOaRQRnwRUieYifEDGJc1vNeD
 Dq42vHPkbnb9k5lIhWBxWb1PWY9dxmXARFYgUM+BATVr5l29ct3H+cclYlgQWWOl4Q4z
 ZD/KzUvDcfBeevqEOKNskY2otPr9d/0t2ADmpYmgCpoTM21h8Fl7HJhF6cKqDBLctgld
 BC2fo1Jb+E4lhZAE7tFQ9TJQK9gcXOenSboM8liX2MxuMON0Cv78Sch3HSc+oVXK+bv0
 o46A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition;
 bh=oQs1XgPjDPgT6H3Vd8knRQ14vSHuHpiGCRbbwe0LZvQ=;
 b=qC3Ot6OBxn38GIRUUhJfIMGiOCj36jUg2KfePPhcvN4cvtVYex/7hsR2nL2Nu/oROc
 A03KticlgEGDl7H6sH070wpvWyEkQi1GquI6IkgycAxqSNeJP61ygsw92o8vGeQ8aT3d
 0VPPGVBIz5k3Ez4ywCzIHhv67hKfLXyCKbGmEePGKx41xWln83Io3DNu88ILx+UpJbYB
 /kf8GQWHw8nCgxIBZirWtrbtMd3YYczs9dx7AlJ1pM/9uJpNn2DnzURCAQOeApm50O3C
 L8KQZTjMtAEGELMIFM6qkUyVveGJMjP+uPQOt5lhyHyr3S4gUAYTcvA0OJ0oouzBmvTb
 +pLQ==
X-Gm-Message-State: AOAM533RiBiwCUv3tXrMF0r0kWEgVWJyP4JtkjcJhbQXr+y1/kRvTHc7
 fE8yBH0qNY2p55keFdbEBHoYWvy94A==
X-Google-Smtp-Source: ABdhPJyKKIOrsEqQhxAHrZWxwo9221V8abvce2F//muuYtCv9kjbD77lMhtVz89ktaH2fAYFPhmgkw==
X-Received: by 2002:a4a:8f99:: with SMTP id c25mr1517255ooj.11.1631221855251; 
 Thu, 09 Sep 2021 14:10:55 -0700 (PDT)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id q5sm643790ooa.1.2021.09.09.14.10.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Sep 2021 14:10:54 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:615a:3062:83b4:c204])
 by serve.minyard.net (Postfix) with ESMTPSA id 558F11800ED;
 Thu,  9 Sep 2021 21:10:53 +0000 (UTC)
Date: Thu, 9 Sep 2021 16:10:52 -0500
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20210909211052.GM545073@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: he following changes since commit
 8baef6386baaefb776bdd09b5c7630cf057c51c6:
 Merge tag 'drm-fixes-2021-07-23' of git://anongit.freedesktop.org/drm/drm
 (2021-07-22 20:32:13 -0700) are available in the Git repository at: 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: freedesktop.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.54 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.54 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mORK0-005IUW-T8
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.15
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
Reply-To: minyard@acm.org
Cc: openipmi-developer@lists.sourceforge.net,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

he following changes since commit 8baef6386baaefb776bdd09b5c7630cf057c51c6:

  Merge tag 'drm-fixes-2021-07-23' of git://anongit.freedesktop.org/drm/drm (2021-07-22 20:32:13 -0700)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.15-1

for you to fetch changes up to bf064c7bec3bfe7e28889774dc9e0ca4f7236775:

  char: ipmi: use DEVICE_ATTR helper macro (2021-08-12 14:27:52 -0500)

----------------------------------------------------------------
IPMI: A couple of very minor fixes for style and rate limiting

Nothing bug, but probably needs to go in.

----------------------------------------------------------------
Dwaipayan Ray (1):
      char: ipmi: use DEVICE_ATTR helper macro

Wen Yang (1):
      ipmi: rate limit ipmi smi_event failure message

 drivers/char/ipmi/ipmi_si_intf.c | 23 +++++++++++------------
 1 file changed, 11 insertions(+), 12 deletions(-)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
