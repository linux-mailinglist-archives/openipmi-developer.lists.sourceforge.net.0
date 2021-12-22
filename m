Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B0147D367
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Dec 2021 15:12:10 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1n02Ld-0008Uj-Ma; Wed, 22 Dec 2021 14:12:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1n02Lc-0008Ud-Ls
 for openipmi-developer@lists.sourceforge.net; Wed, 22 Dec 2021 14:12:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=thDdHAXO4Fu5Yivc3/wFyA8Rxn+/3gkNfZ5obxoRWYU=; b=WkJ6oKuoMCEgfVlg7I/tcNd0OH
 pElsO0YTD5inu69RIkacba/hbvIBMSPi/Ig4KP+zZ3co7N8hUzTY2qipSK7ooyYGeVMZDsG9R/c2c
 UhzzIDcjNbi/gk2KXahxpHolGEgeFRMLL4VapiT3u4+HGev8Rkq3q7x722WiPbA5HjuA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Reply-To:Message-ID:Subject:Cc:To:From:Date:
 Sender:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=thDdHAXO4Fu5Yivc3/wFyA8Rxn+/3gkNfZ5obxoRWYU=; b=F
 KZujWm46djAXKWbHjPxPoD1dvihVfXLNkurYq4QAnS2Q2PVcjSyOV5IA8msb+RnNw/PvPwn9vZpPb
 9LdkKMieSDGNx0jR1fnvu5pkGiDL7JI0+LtkYRLeQP5mlvOz5nYSypAdPIZNZwAHkzzGLKrR6Z7dS
 tEaXjrSSokghq0U0=;
Received: from mail-qk1-f179.google.com ([209.85.222.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1n02Lc-0000BQ-51
 for openipmi-developer@lists.sourceforge.net; Wed, 22 Dec 2021 14:12:04 +0000
Received: by mail-qk1-f179.google.com with SMTP id b85so2403252qkc.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 22 Dec 2021 06:12:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:mime-version
 :content-disposition;
 bh=thDdHAXO4Fu5Yivc3/wFyA8Rxn+/3gkNfZ5obxoRWYU=;
 b=aSRzk8PsYg5OEqACaRj37BdmaZNDEfamridrJ7FSCCY7BxmTM9TgzpPOphGmkiQEZX
 o4ClgE9aHorWdoN2vE0O9K7qSPHrm0WQaDGYrUQ0GpUAq+x2hOZCdbYArY8LZ7G4ekMg
 eXE5rF6eQmeDXcFpN932T0lM+b0U87n6hQmhR8PoQMoz2PEkj2PWnWBUB8gVzatM1mFm
 9spez2okTmbE2WlgzCYuMIWXuAtF8DkUjKyyRE0JYWTPTSy9W4gpgyWGEmC7x6EvKxkH
 DOsz8KJLHy4+pOh1D8r95EinWHn/wSfrBzcu0QhYB/RF4ng9uHZo5l43xwvnYLyfzecL
 CR7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:mime-version:content-disposition;
 bh=thDdHAXO4Fu5Yivc3/wFyA8Rxn+/3gkNfZ5obxoRWYU=;
 b=VXW43t76JcJWEvJ/CURbi8iLuFDKc31uxOoHOgLDbL5xjgaI63Gsaw3rxv6uPDvkiT
 O/KB+sVjIVJLp0YNn9yG2wRPYhdhtniGy8fMh2nxZhf65N8vzs7zJAjxX7p2CailwSOG
 tKZkULiyaeHrmlaMM65jWxHfUJjnz7i4c/zm+qScHBMxev3Zk4pBw43VZOu7/WRQMrHx
 R3mjCsmYhweQHQKIaP6SdCOzqv8sYMOJpRm/WS9/f7hyVPIPzJ8PONbF9CHGutgoXukU
 Vrezi5DkmMPq51ep9s7kpcF0gUXKCyo1ilYBi5KGtk6a8aw/FG/fDHdUQArTBSohlJyL
 /TuA==
X-Gm-Message-State: AOAM533ZbCrL7kB65xakyKz/mlqd6q3KcWGLmGYhjTlACGorvrstitC+
 A2K1kciZaok0b9qRMM+74A==
X-Google-Smtp-Source: ABdhPJxw3IroCNT/flsfagqPGSgGaYVU1sdDdIIcq759rwx2qtItxf4EbHEyQc+sIFrmvmoc/TXJbg==
X-Received: by 2002:a05:620a:1a01:: with SMTP id
 bk1mr2017307qkb.539.1640182318098; 
 Wed, 22 Dec 2021 06:11:58 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id bj32sm1812363qkb.75.2021.12.22.06.11.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 06:11:57 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:a994:7eee:8e73:4087])
 by serve.minyard.net (Postfix) with ESMTPSA id DAA19180013;
 Wed, 22 Dec 2021 14:11:56 +0000 (UTC)
Date: Wed, 22 Dec 2021 08:11:55 -0600
From: Corey Minyard <minyard@acm.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20211222141155.GV14936@minyard.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The following changes since commit
 12119cfa1052d512a92524e90ebee85029a918f8:
 Merge tag 'vfio-v5.16-rc4' of git://github.com/awilliam/linux-vfio (2021-12-03
 12:27:08 -0800) are available in the Git repository at: 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.179 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.179 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1n02Lc-0000BQ-51
Subject: [Openipmi-developer] [GIT PULL] IPMI bug fixes for 5.16 (3)
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

The following changes since commit 12119cfa1052d512a92524e90ebee85029a918f8:

  Merge tag 'vfio-v5.16-rc4' of git://github.com/awilliam/linux-vfio (2021-12-03 12:27:08 -0800)

are available in the Git repository at:

  https://github.com/cminyard/linux-ipmi.git tags/for-linus-5.16-3

for you to fetch changes up to ffb76a86f8096a8206be03b14adda6092e18e275:

  ipmi: Fix UAF when uninstall ipmi_si and ipmi_msghandler module (2021-12-21 08:04:42 -0600)

----------------------------------------------------------------
Fix some IPMI crashes

Some crash fixes have come in dealing with various error handling
issues.  They have sat in next for 5 days or more without issue, and
they are fairly critical.

-corey


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
