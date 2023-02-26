Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8856A2E73
	for <lists+openipmi-developer@lfdr.de>; Sun, 26 Feb 2023 06:40:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pW9ln-0008MA-Mz;
	Sun, 26 Feb 2023 05:40:23 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rdunlap@infradead.org>) id 1pW9lj-0008M3-3I
 for openipmi-developer@lists.sourceforge.net;
 Sun, 26 Feb 2023 05:40:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EI1aXrE2jWnMQpvhJWCxJ0A1m6hExM8zG6kHodDd/Yk=; b=I9l8kCP05wNQZSnesy8txX3uWb
 Yvfdm/DpuP+kKaWXKsNHpHK/AQi6ubLYr6XjkV9z0SSNm+KCoyEscq1pS/WNX8S20+SsAiHym45mw
 d3rCeW2v6B3cXo7zx8k6DexOM1V07tXBvTV0F6okTgq8ikpvcW0dW6MLbvyGDD4boRxo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=EI1aXrE2jWnMQpvhJWCxJ0A1m6hExM8zG6kHodDd/Yk=; b=C
 Uk0InNy0aVxerbYECks7Be7caIp143nP7gEzNE7aiUAZTYUZkBE6KONvzJTG509J4qu7Ky6iTlme/
 0NAsREn6MK/1oHQchpVmqRA4J8SJfBl5WyiwB00eAeFRPdXPsXkVD0HT0IdlE46db4xQ/0RM4zpFD
 0bXyo1bbj+6NP/9Q=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pW9lc-00008T-0T for openipmi-developer@lists.sourceforge.net;
 Sun, 26 Feb 2023 05:40:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=EI1aXrE2jWnMQpvhJWCxJ0A1m6hExM8zG6kHodDd/Yk=; b=aj3A5Ot6MEhhd9SZR6hiyed6PQ
 EdZuqG07G/Vk/F8skIZAfGRc6sNw4DC3faae0Cu3vMc4szUf4tDAjvfhrUYJgE2qrG+wA3gREi+N9
 PxwHUdCcxP7gl8263NKtViUAcgY2zI6M/LMZBz9lNggC95W1ux6ZsuulZKWLDOGTRoKB45Cn6oWKQ
 wmRpRz9HJa6rXmn93Yj2Kp+oVd2a57W+8ogtuK5beZyvX1IVvMsN0ws+h4BF3CcUdqyDY6oBTAOxv
 yxF6SU+Dxy/zjph+VaxFK8u1DqBXUvUKhjqVRXd4V3udKqotaho/14nhEhUecI4IwtIGLrTY08V5M
 lQmQqocw==;
Received: from [2601:1c2:980:9ec0::df2f] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1pW9lK-006qYL-N4; Sun, 26 Feb 2023 05:39:54 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Date: Sat, 25 Feb 2023 21:39:45 -0800
Message-Id: <20230226053953.4681-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  REGMAP is a hidden (not user visible) symbol. Users cannot
 set it directly thru "make *config", so drivers should select it instead
 of depending on it if they need it. Consistently using "select" or "depends
 on" can also help reduce Kconfig circular dependency issues. 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1pW9lc-00008T-0T
Subject: [Openipmi-developer] [PATCH 0/8] drivers: select REGMAP instead of
 depending on it
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Vadim Pasternak <vadimp@nvidia.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Amit Kucheria <amitk@kernel.org>,
 platform-driver-x86@vger.kernel.org, Pavel Machek <pavel@ucw.cz>,
 Oskar Senft <osk@google.com>, Bin Gao <bin.gao@intel.com>,
 linux-clk@vger.kernel.org, linux-leds@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Lee Jones <lee@kernel.org>, linux-serial@vger.kernel.org,
 Darren Hart <dvhart@infradead.org>, Zhang Rui <rui.zhang@intel.com>,
 Michael Turquette <mturquette@baylibre.com>, Corey Minyard <minyard@acm.org>,
 linux-pm@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 linux-gpio@vger.kernel.org, Dan Murphy <dmurphy@ti.com>,
 openipmi-developer@lists.sourceforge.net, Hans de Goede <hdegoede@redhat.com>,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Riku Voipio <riku.voipio@linaro.org>, Randy Dunlap <rdunlap@infradead.org>,
 Michael Shych <michaelsh@nvidia.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Walle <michael@walle.cc>, Yegnesh S Iyer <yegnesh.s.iyer@intel.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

REGMAP is a hidden (not user visible) symbol. Users cannot set it
directly thru "make *config", so drivers should select it instead of
depending on it if they need it.

Consistently using "select" or "depends on" can also help reduce
Kconfig circular dependency issues.

REGMAP is selected 94 times and is depended on 11 times in
current linux-next. Eliminate the uses of "depends on" by
converting them to "select".

 [PATCH 1/8] ipmi: ASPEED_BT_IPMI_BMC: select REGMAP_MMIO instead of depending on it
 [PATCH 2/8] clk: HI655X: select REGMAP instead of depending on it
 [PATCH 3/8] gpio: GPIO_REGMAP: select REGMAP instead of depending on it
 [PATCH 4/8] leds: TI_LMU_COMMON: select REGMAP instead of depending on it
 [PATCH 5/8] platform: mellanox: select REGMAP instead of depending on it
 [PATCH 6/8] platform: x86: MLX_PLATFORM: select REGMAP instead of depending on it
 [PATCH 7/8] thermal: intel: BXT_PMIC: select REGMAP instead of depending on it
 [PATCH 8/8] serial: 8250: ASPEED_VUART: select REGMAP instead of depending on it

diffstat:
 drivers/char/ipmi/Kconfig         |    3 ++-
 drivers/clk/Kconfig               |    2 +-
 drivers/gpio/Kconfig              |    2 +-
 drivers/leds/Kconfig              |    2 +-
 drivers/platform/mellanox/Kconfig |    9 ++++-----
 drivers/platform/x86/Kconfig      |    3 ++-
 drivers/thermal/intel/Kconfig     |    3 ++-
 drivers/tty/serial/8250/Kconfig   |    3 ++-
 8 files changed, 15 insertions(+), 12 deletions(-)

Cc: Andrew Jeffery <andrew@aj.id.au>
Cc: Corey Minyard <minyard@acm.org>
Cc: openipmi-developer@lists.sourceforge.net
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Riku Voipio <riku.voipio@linaro.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Cc: Michael Walle <michael@walle.cc>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-gpio@vger.kernel.org
Cc: Dan Murphy <dmurphy@ti.com>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Jacek Anaszewski <jacek.anaszewski@gmail.com>
Cc: Lee Jones <lee@kernel.org>
Cc: linux-leds@vger.kernel.org
Cc: Darren Hart <dvhart@infradead.org>
Cc: Hans de Goede <hdegoede@redhat.com>
Cc: Michael Shych <michaelsh@nvidia.com>
Cc: Mark Gross <markgross@kernel.org>
Cc: Vadim Pasternak <vadimp@nvidia.com>
Cc: platform-driver-x86@vger.kernel.org
Cc: Yegnesh S Iyer <yegnesh.s.iyer@intel.com>
Cc: Bin Gao <bin.gao@intel.com>
Cc: Zhang Rui <rui.zhang@intel.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Amit Kucheria <amitk@kernel.org>
Cc: linux-pm@vger.kernel.org
Cc: Oskar Senft <osk@google.com>
Cc: linux-serial@vger.kernel.org


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
